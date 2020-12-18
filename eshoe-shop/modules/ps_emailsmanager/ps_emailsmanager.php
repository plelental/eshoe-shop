<?php
/**
* 2007-2017 PrestaShop
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
* @author    PrestaShop SA <contact@prestashop.com>
* @copyright 2007-2017 PrestaShop SA
* @license   http://addons.prestashop.com/en/content/12-terms-and-conditions-of-use
* International Registered Trademark & Property of PrestaShop SA
*/

require_once dirname(__FILE__).DIRECTORY_SEPARATOR.'classes'.DIRECTORY_SEPARATOR.'EmailTemplateFilterIterator.php';
require_once dirname(__FILE__).DIRECTORY_SEPARATOR.'classes'.DIRECTORY_SEPARATOR.'ImageFilterIterator.php';

class Ps_EmailsManager extends Module
{
    const DEFAULT_THEME_NAME = 'classic';
    const ADMIN_CTRL_NAME    = 'AdminEmailsManager';

    public function __construct()
    {
        $this->name      = 'ps_emailsmanager';
        $this->version   = '1.2.1';
        $this->tab       = 'emailing';
        $this->author    = 'PrestaShop';
        $this->bootstrap = true;

        parent::__construct();

        $this->displayName = $this->l('Email Templates Manager');
        $this->description = $this->l('This module allows you to manage your email templates');
        $this->confirmUninstall = $this->l(
            'Are you sure you want to uninstall this module? It will restore default email templates'
        );

        $this->importsPath = dirname(__FILE__).DIRECTORY_SEPARATOR.'imports'.DIRECTORY_SEPARATOR;
        $this->extractPath = _PS_CACHE_DIR_.'sandbox'.DIRECTORY_SEPARATOR;
    }

    /**
     * Install the module on the store
     */
    public function install()
    {
        $success = $this->backupDefaultPack()
                && $this->installTab()
                && parent::install();

        if (version_compare(_PS_VERSION_, '1.7', '>=')) {
            return $success && $this->registerHook('actionGetExtraMailTemplateVars');
        } else {
            return $success;
        }
    }

    public function installTab()
    {
        $tab = new Tab();
        $tab->active = 1;
        $tab->class_name = 'AdminEmailsManager';
        $tab->name = array();
        foreach (Language::getLanguages(true) as $lang) {
            $tab->name[$lang['id_lang']] = 'Emails Manager Preview';
        }
        $tab->id_parent = -1;
        $tab->module = $this->name;
        return $tab->add();
    }

    public function uninstallTab()
    {
        $id_tab = (int)Tab::getIdFromClassName('AdminExpeditor');
        if ($id_tab) {
            $tab = new Tab($id_tab);
            if (Validate::isLoadedObject($tab)) {
                return ($tab->delete());
            } else {
                return (false);
            }
        } else {
            return (true);
        }
    }

    public function hookActionGetExtraMailTemplateVars($params)
    {
        $params['extra_template_vars']['{passwd}'] = '*********';
    }

    /**
     * Fetches the content of /theme/my-theme/mails and save it
     * as the classic template pack
     */
    public function backupDefaultPack()
    {
        /** /var/www/prestashop/mails **/
        $coreMailsPath  = _PS_ROOT_DIR_.DIRECTORY_SEPARATOR.'mails';

        // Get all installed themes
        $themes = $this->getAllThemes();

        // Checks that every core templates are overriden in the current theme.
        // If not, copy the missing ones inside it.
        try {
            $coreItr   = new RecursiveDirectoryIterator($coreMailsPath);
            $filterItr = new EmailTemplateFilterIterator($coreItr);
            $iterator  = new RecursiveIteratorIterator($filterItr);
            foreach ($iterator as $file) {
                // '/isocode/file'
                $toCheck = str_replace($coreMailsPath, '', $file->getPathname());
                $isoCode = $this->getIsoCodeFromTplPath($file->getPathname());

                foreach ($themes as $theme) {

                    /** /var/www/prestashop/themes/theme_name/mails **/
                    $themeMailsPath = _PS_ALL_THEMES_DIR_.$theme->directory.DIRECTORY_SEPARATOR.'mails';

                    // Create "mails" directory inside the theme if it doesn't exist
                    if (!file_exists($themeMailsPath) && !mkdir($themeMailsPath)) {
                        $this->_errors[] = $this->l('Can\'t create folder: ').$themeMailsPath;
                        return false;
                    }

                    // Create iso folder if it doesn't exist
                    if (!file_exists($themeMailsPath.DIRECTORY_SEPARATOR.$isoCode) &&
                        !mkdir($themeMailsPath.DIRECTORY_SEPARATOR.$isoCode)) {
                        $this->_errors[] = $this->l('Can\'t create folder: ').$themeMailsPath.DIRECTORY_SEPARATOR.$isoCode;
                        return false;
                    }

                    // Copy email if it doesn't exist
                    if (!file_exists($themeMailsPath.$toCheck) &&
                        !copy($file->getPathname(), $themeMailsPath.$toCheck)) {
                        $this->_errors[] = $this->l('Can\'t copy file: ').$themeMailsPath.$toCheck;
                        return false;
                    }
                }
            }
        } catch (Exception $e) {
            $this->_errors[] = $e->getMessage();
            return false;
        }

        /** /var/www/prestashop/modules/emailsmanager/imports/classic **/
        $backupPath  = $this->importsPath.self::DEFAULT_THEME_NAME;

        // Creates the "classic" template directory if not exists
        if (!file_exists($backupPath) && !mkdir($backupPath)) {
            $this->_errors[] = $this->l('Can\'t create folder: ').$backupPath;
            return false;
        }

        $defaultPreviewImg = dirname(__FILE__).DIRECTORY_SEPARATOR.'views/img/preview.jpg';
        copy($defaultPreviewImg, $backupPath.DIRECTORY_SEPARATOR.'preview.jpg');

        return $this->recursiveCopy($themeMailsPath, $backupPath);
    }

    // Takes a email template path and returns its lang's iso code
    // ie. penultimate item of the split
    private function getIsoCodeFromTplPath($path)
    {
        $split = explode(DIRECTORY_SEPARATOR, $path);

        return $split[count($split) - 2];
    }

    // Loops through the theme's mail folder recursively copy the files
    // into $dest
    private function recursiveCopy($src, $dest)
    {
        $srcIterator = new RecursiveDirectoryIterator($src);
        $srcFilter   = new EmailTemplateFilterIterator($srcIterator);
        $iterator    = new RecursiveIteratorIterator($srcFilter);

        foreach ($iterator as $file) {
            // Full path to the current template
            $copySrc   = $file->getPathname();
            // Iso code of the current template
            $isoCode   = $this->getIsoCodeFromTplPath($copySrc);
            // Full path for the backup
            $copyDest  = $dest.DIRECTORY_SEPARATOR.$isoCode.DIRECTORY_SEPARATOR;
            $copyDest .= $file->getBasename();

            if (!file_exists($dest.DIRECTORY_SEPARATOR.$isoCode) &&
                !mkdir($dest.DIRECTORY_SEPARATOR.$isoCode)) {
                $this->_errors[] = $this->l('Can\'t create folder: ').$dest.DIRECTORY_SEPARATOR.$isoCode;
                return false;
            }

            if (!copy($copySrc, $copyDest)) {
                $this->_errors[] = $this->l('Can\'t copy file: ').$copyDest;
                return false;
            }
        }
        return true;
    }

    /**
     * Remove the module from the store
     */
    public function uninstall()
    {
        if ($this->restoreClassicTemplate(true)) {
            return parent::uninstall();
        }
        return false;
    }

    public function getEmailsTranslations($iso_lang)
    {
        $translations = Tools::file_get_contents(
            'http://api.addons.prestashop.com/index.php?version=1&method=translations&type=emails&iso_lang='.$iso_lang
        );
        $translations = Tools::jsonDecode($translations, true);

        if (is_null($translations) || !$translations) {
            return false;
        }

        return $translations;
    }

    public function translateTemplate($tpl, $translations)
    {
        foreach ($translations as $key => $value) {
            $pattern = '${{ lang.'.$key.' }}$';
            $tpl = str_replace($pattern, $value, $tpl);
        }
        return $tpl;
    }

    public function getTplVariables()
    {
        $variables = Configuration::getMultiple(array(
            'PS_SHOP_ADDR1',
            'PS_SHOP_ADDR2',
            'PS_SHOP_CODE',
            'PS_SHOP_CITY',
            'PS_SHOP_COUNTRY_ID',
            'PS_SHOP_PHONE',
            'PS_SHOP_FAX'
        ));

        $country = Country::getNameById(Context::getContext()->language->id, $variables['PS_SHOP_COUNTRY_ID']);

        return array(
            'mails_img_url' => $this->context->shop->getBaseURL().'img/emails/',
            'shop_addr1' => $variables['PS_SHOP_ADDR1'],
            'shop_addr2' => $variables['PS_SHOP_ADDR2'],
            'shop_zipcode' => $variables['PS_SHOP_CODE'],
            'shop_city' => $variables['PS_SHOP_CITY'],
            'shop_country' => $country,
            'shop_phone' => $variables['PS_SHOP_PHONE'],
            'shop_fax' => $variables['PS_SHOP_FAX'],
        );
    }

    // Save the settings of the selected template in ps_configuration
    public function saveTemplateConf()
    {
        $tplName = basename(Tools::getValue('select_template'));
        if (!$tplName || $tplName == '') {
            $this->_errors[] = $this->l('Invalid template\'s name');
            return false;
        }

        $tplPath       = $this->importsPath.$tplName;
        $userSettings  = array(
            'name'   => $tplName,
            'inputs' => array(),
        );

        $settings = $this->getTemplateSettings($tplName);
        if (!isset($settings['inputs']) || !is_array($settings['inputs'])) {
            $this->_errors[] = $this->l('Invalid template');
            return false;
        }

        foreach ($settings['inputs'] as $input) {
            //check lang type field
            if (isset($input['lang']) && $input['lang'] == true) {
                foreach (Language::getLanguages() as $lang) {
                    $value = Tools::getValue($input['name'].'_'.$lang['id_lang']);
                    $userSettings['inputs'][$input['name']][$lang['id_lang']] = $value;
                }
            } else {
                $value = Tools::getValue($input['name']);
                $userSettings['inputs'][$input['name']] = $value;
            }
        }

        // ...assign these settings into smarty...
        $lang_fields = array();
        foreach ($userSettings['inputs'] as $k => $v) {
            //!lang fields
            if (!is_array($v)) {
                $this->context->smarty->assign(array($k => $v));
            } else {
                $lang_fields[$k] = $v;
            }
        }


        $this->context->smarty->assign($this->getTplVariables());

        // ... and add a record in the database
        Configuration::updateGlobalValue('MAILMANAGER_CURRENT_CONF_'.$this->getCurrentThemeId(), Tools::jsonEncode($userSettings));

        // Change smarty delimiters to ease the parsing process
        $this->context->smarty->left_delimiter = '{{';
        $this->context->smarty->right_delimiter = '}}';

        foreach (Language::getLanguages() as $language) {

            // Make sure that we have enough time per language on slow shops
            set_time_limit(30);

            //Fetch translations from addons api
            $translations = $this->getEmailsTranslations($language['iso_code']);

            foreach ($lang_fields as $field => $values) {
                $this->context->smarty->assign(array($field => $values[$language['id_lang']]));
            }

            if (!$translations) {
                $this->_errors[] = $this->l('Addons API error');
                return false;
            }

            $compilePath = dirname(__FILE__).DIRECTORY_SEPARATOR.'compile'.DIRECTORY_SEPARATOR.$tplName;
            $compilePath .= DIRECTORY_SEPARATOR.$language['iso_code'].DIRECTORY_SEPARATOR;

            // Remove old compiled files
            if (file_exists($compilePath)) {
                Tools::deleteDirectory($compilePath, true);
            }

            // Create folder for compiled files
            if (!mkdir($compilePath, 0777, true)) {
                $this->_errors[] = $this->l('Can\'t create folder: '.$compilePath);
                return false;
            }

            // Loop through each .tpl files from the template pack, replace
            // ${{ lang.key }}$ with the right translation, and write the
            // files in PS_THEME_DIR/mails/iso_code/*.tpl
            $i = new DirectoryIterator($tplPath);

            foreach ($i as $f) {
                if ($f->isFile() && $f->getExtension() === 'tpl') {
                    $templateContent = $this->context->smarty->fetch($f->getRealPath());

                    $templateContent = $this->translateTemplate($templateContent, $translations);

                    $dest = $compilePath.$f->getBasename('.tpl').'.html';

                    if (file_put_contents($dest, $templateContent) === false) {
                        $this->_errors[] = $this->l('Can\'t write file:').' '.$dest;
                    }
                } else {
                    continue;
                }
            }

            $i = new DirectoryIterator($tplPath.'/tpl/');
            foreach ($i as $f) {
                if ($f->isFile() && $f->getExtension() === 'tpl') {
                    $dest = $compilePath.$f->getFilename();

                    if (copy($f->getRealPath(), $dest) === false) {
                        $this->_errors[] = $this->l('Can\'t write file:').' '.$dest;
                    }
                } else {
                    continue;
                }
            }
        }

        // Copy compiled files into mails' dir if every
        foreach (Language::getLanguages() as $language) {
            $compilePath = dirname(__FILE__).DIRECTORY_SEPARATOR.'compile'.DIRECTORY_SEPARATOR.$tplName;
            $compilePath .= DIRECTORY_SEPARATOR.$language['iso_code'].DIRECTORY_SEPARATOR;

            $themeMailsPath = _PS_ALL_THEMES_DIR_.$this->getCurrentThemeDirectory().DIRECTORY_SEPARATOR;
            $themeMailsPath .= 'mails'.DIRECTORY_SEPARATOR.$language['iso_code'].DIRECTORY_SEPARATOR;
            if (!file_exists($themeMailsPath) && !mkdir($themeMailsPath)) {
                $this->_errors[] = $this->l('Can\'t create directory:').' '.$themeMailsPath;
                return false;
            }

            self::recurseCopy($compilePath, $themeMailsPath);
        }

        // Restore default smarty delimiters
        $this->context->smarty->left_delimiter = '{';
        $this->context->smarty->right_delimiter = '}';

        return true;
    }

    private function saveTemplateImgs()
    {
        $tplName = basename(Tools::getValue('select_template'));
        if (!$tplName) {
            return false;
        }

        $tplImgsPath  = $this->importsPath.$tplName.DIRECTORY_SEPARATOR.'img';
        $dest         = _PS_IMG_DIR_.'emails';

        if (!file_exists($dest) && !mkdir($dest)) {
            $this->_errors[] = $this->l('Can\'t create directory:').' '._PS_IMG_DIR_.'emails';
            return false;
        }

        $srcItr    = new RecursiveDirectoryIterator($tplImgsPath);
        $srcFilter = new ImageFilterIterator($srcItr);
        $iterator  = new RecursiveIteratorIterator($srcFilter);
        foreach ($iterator as $file) {
            $state = Tools::copy(
                $file->getRealPath(),
                $dest.DIRECTORY_SEPARATOR.Tools::strtolower($file->getBasename())
            );

            if ($state === false) {
                $this->_errors[] = $this->l('Can\'t copy file:').' '.$file->getRealPath();
                return false;
            }
        }

        return true;
    }

    public function getAllThemes()
    {
        if (version_compare(_PS_VERSION_, '1.7', '<')) {
            return Theme::getThemes();
        } else {
            $list = (new PrestaShop\PrestaShop\Core\Addon\Theme\ThemeManagerBuilder($this->context, Db::getInstance()))
                            ->buildRepository()
                            ->getList();
            $themes = array();
            foreach ($list as $theme) {
                $stdTheme = new stdClass();
                $stdTheme->directory = $theme->getName();
                // In 1.7+, we use the name as an ID
                $stdTheme->id = Tools::strtoupper($theme->getName());
                $themes[] = $stdTheme;
            }
            return $themes;
        }
    }

    public function getCurrentThemeId()
    {
        if (version_compare(_PS_VERSION_, '1.7', '>=')) {
            return Tools::strtoupper(Context::getContext()->shop->theme->getName());
        } else {
            return $this->context->shop->id_theme;
        }
    }

    public function getCurrentThemeDirectory()
    {
        if (version_compare(_PS_VERSION_, '1.7', '>=')) {
            return Context::getContext()->shop->theme->getName();
        } else {
            return $this->context->shop->theme_directory;
        }
    }

    /**
     * Backoffice content
     */
    public function getContent()
    {
        $tplPath = $this->getAdminTemplatesPath();
        $html    = '';

        $this->context->controller->addCSS($this->_path.'views/css/back.css');
        if (version_compare(_PS_VERSION_, '1.6', '>=')) {
            $this->context->controller->addJS($this->_path.'views/js/back.js');
        } else {
            $this->context->controller->addCSS($this->_path.'views/css/back15.css');
        }

        // Process ZIP upload
        if (Tools::isSubmit('submit_'.$this->name)) {
            if ($this->postProcess()) {
                $html .= $this->displayConfirmation('Added with success');
            }
        }

        // Process template configuration
        if (Tools::isSubmit('submitconf_'.$this->name)) {
            if ($this->saveTemplateImgs()) {
                if ($this->saveTemplateConf()) {
                    $this->_confirmations[] = $this->l('Template changed with success!');
                }
            }
        } elseif (Tools::getValue('select_template') === self::DEFAULT_THEME_NAME) {
            // If the user wants to restore the classic template
            $this->restoreClassicTemplate();
        } elseif (Tools::getValue('select_template')) {
            // If the user wants to configure a template (except the classic)
            $form = $this->displayForm(basename(Tools::getValue('select_template')));
            if ($form) {
                return $form;
            }
        } elseif (Tools::getValue('delete_template') && Tools::getValue('delete_template') != 'classic') {
            // Delete the template and restore classic
            $currentTemplate = $this->getCurrentTemplate();
            if (!$currentTemplate) {
                $this->_errors[] = $this->l('Invalid template');
            } else {
                if ($currentTemplate['name'] == Tools::getValue('delete_template')) {
                    $this->restoreClassicTemplate();
                }
                Tools::deleteDirectory($this->importsPath.Tools::getValue('delete_template'));
                $this->_confirmations[] = $this->l('Deleted with success');
            }
        }

        $addons_products = $this->getAddonsProducts();
        if ($addons_products) {
            shuffle($addons_products);
            $addons_products = array_slice($addons_products, 0, 8);
        }

        $this->context->smarty->assign(array(
            'module_dir'         => $this->_path,
            'link'               => $this->context->link,
            'module_local_dir'   => $this->local_path,
            'availableTemplates' => $this->getAvailableTemplates(),
            'currentTemplate'    => $this->getCurrentTemplate(),
            'moduleLink'         => $this->context->link->getAdminLink('AdminModules').'&configure='.$this->name,
            'previewLink'        => $this->context->link->getAdminLink('AdminEmailsManager').'&template=',
            'addons_products'    => $addons_products,
            'ps_version'         => (float)_PS_VERSION_ * 10
        ));

        // Display errors
        foreach ($this->_errors as $error) {
            $html .= $this->displayError($error);
        }

        // Display errors
        foreach ($this->_confirmations as $confirmation) {
            $html .= $this->displayConfirmation($confirmation);
        }

        $tplSuffix = '';
        if (version_compare(_PS_VERSION_, '1.6', '<')) {
            $tplSuffix = '_15';
        }

        // Help template
        $html .= $this->context->smarty->fetch($tplPath.'help'.$tplSuffix.'.tpl');

        // Import template
        $html .= $this->generateImportPanel();

        // Current template block for 1.6+
        if (version_compare(_PS_VERSION_, '1.6', '>=')) {
            $html .= $this->context->smarty->fetch($tplPath.'current'.$tplSuffix.'.tpl');
        }

        // Available templates
        $html .= $this->context->smarty->fetch($tplPath.'available'.$tplSuffix.'.tpl');

        // Templates from PS Addons
        if (version_compare(_PS_VERSION_, '1.6', '>=') && $addons_products) {
            $html .= $this->context->smarty->fetch($tplPath.'addons.tpl');
        }

        return $html;
    }

    private function getAdminTemplatesPath()
    {
        $path = $this->local_path.'views'.DIRECTORY_SEPARATOR.'templates';
        $path .= DIRECTORY_SEPARATOR.'admin'.DIRECTORY_SEPARATOR;

        return $path;
    }

    /**
     * Copy the folder $src into $dst, $dst is created if it do not exist
     * @param      $src
     * @param      $dst
     * @param bool $del if true, delete the file after copy
     */
    public static function recurseCopy($src, $dst, $del = false)
    {
        if (!file_exists($src)) {
            return false;
        }
        $dir = opendir($src);
        if (!Tools::file_exists_cache($dst)) {
            mkdir($dst);
        }
        while (false !== ($file = readdir($dir))) {
            if (($file != '.') && ($file != '..')) {
                if (is_dir($src.DIRECTORY_SEPARATOR.$file)) {
                    self::recurseCopy($src.DIRECTORY_SEPARATOR.$file, $dst.DIRECTORY_SEPARATOR.$file, $del);
                } else {
                    copy($src.DIRECTORY_SEPARATOR.$file, $dst.DIRECTORY_SEPARATOR.$file);
                    if ($del && is_writable($src.DIRECTORY_SEPARATOR.$file)) {
                        unlink($src.DIRECTORY_SEPARATOR.$file);
                    }
                }
            }
        }
        closedir($dir);
        if ($del && is_writable($src)) {
            rmdir($src);
        }
    }

    public function restoreClassicTemplate($all = false)
    {
        $classicTplPath  = $this->importsPath.self::DEFAULT_THEME_NAME;

        if ($all) {
            $themes = $this->getAllThemes();
        } else {
            if (version_compare(_PS_VERSION_, '1.7', '<')) {
                $theme = new Theme($this->context->shop->id_theme);
                $themes = array($theme);
            } else {
                $stdTheme = new stdClass();
                $stdTheme->directory = $this->context->shop->theme->getName();
                // In 1.7+, we use the name as an ID
                $stdTheme->id = Tools::strtoupper($this->context->shop->theme->getName());
                $themes = array($stdTheme);
            }
        }

        foreach ($themes as $theme) {
            $mailsFolder     = _PS_ALL_THEMES_DIR_.$theme->directory.DIRECTORY_SEPARATOR.'mails';
            $backupFolder    = _PS_ALL_THEMES_DIR_.$theme->directory.DIRECTORY_SEPARATOR.'mails_backup';

            if (file_exists($backupFolder)) {
                Tools::deleteDirectory($backupFolder, true);
            }

            if (!mkdir($backupFolder, 0777)) {
                $this->_errors[] = $this->l('Cannot create backup\'s folder. Please check permissions.');
                return false;
            }

            self::recurseCopy($mailsFolder, $backupFolder);

            // Remove the current template config
            Configuration::deleteByName('MAILMANAGER_CURRENT_CONF_'.$theme->id);

            self::recurseCopy($classicTplPath, $mailsFolder);
        }

        return true;
    }

    public function getCurrentTemplate()
    {
        $currentTpl = Configuration::getGlobalValue('MAILMANAGER_CURRENT_CONF_'.$this->getCurrentThemeId());
        if ($currentTpl) {
            $currentTpl = Tools::jsonDecode($currentTpl, true);
            $path = $this->importsPath.$currentTpl['name'];
            $settings = Tools::jsonDecode(Tools::file_get_contents($path.DIRECTORY_SEPARATOR.'settings.json'), true);
            return is_null($settings) ? false : $settings;
        } else {
            return array(
                'name' => 'classic',
                'author' => 'PrestaShop',
                'version' => '1.0'
            );
        }
    }

    public function getTemplateSettings($name)
    {
        $path     = $this->importsPath.$name;
        $settings = Tools::jsonDecode(Tools::file_get_contents($path.DIRECTORY_SEPARATOR.'settings.json'), true);

        if (is_null($settings)) {
            $this->_errors[] = $this->l('Invalid settings.json');
            return false;
        }

        return $settings;
    }

    public function displayForm($tplName)
    {
        $settings = $this->getTemplateSettings($tplName);
        if (!$settings) {
            return false;
        }

        Context::getContext()->controller->addJS($this->_path.'views/js/settings_form.js');

        $fieldsForm = array();

        // init fields form
        $fieldsForm[0]['form'] = array(
            'legend' => array(
                'title' => $this->l('Configure ').$settings['name'],
                'name'  => $settings['name'],
            ),
            'input' => array(),
            'submit' => array(
                'title' => $this->l('Save'),
                'class' => 'btn btn-default pull-right',
            ),
            'buttons' => array(
                'preview' => array(
                    'title' => $this->l('Preview'),
                    'icon' => 'process-icon-preview',
                    'class' => 'pull-right',
                    'id' => 'preview-template',
                    'href' => $this->context->link->getAdminLink('AdminEmailsManager').'&template='.$settings['name']
                ),
                'cancel' => array(
                    'href' => $this->context->link->getAdminLink('AdminModules').'&configure='.$this->name,
                    'title' => $this->l('Cancel'),
                    'icon' => 'process-icon-cancel'
                )
            )
        );

        $iso = Context::getContext()->language->iso_code;
        $inputs = array();
        foreach ($settings['inputs'] as $input) {
            $inputs[] = array(
                'required' => isset($input['required']) ? $input['required'] : false,
                'name'     => $input['name'],
                'desc'     => isset($input['desc'][$iso]) ? $input['desc'][$iso] : $input['desc']['en'],
                'type'     => $input['type'],
                'label'    => isset($input['label'][$iso]) ? $input['label'][$iso] : $input['label']['en'],
                'lang'     => isset($input['lang']) ? $input['lang'] : '',
            );
        }
        $inputs[] = array(
            'required' => true,
            'type'     => 'hidden',
            'name'     => 'select_template',
        );

        $fieldsForm[0]['form']['input'] = $inputs;

        $fieldsForm[0]['form']['buttons'] = array(
            array(
                'href' => $this->context->link->getAdminLink('AdminModules').'&configure='.$this->name,
                'title' => $this->l('Cancel'),
                'icon' => 'process-icon-cancel'
            ),
        );

        $helper = new HelperForm();
        $helper->module = $this;
        $helper->name_controller = $this->name;
        $helper->token = Tools::getAdminTokenLite('AdminModules');
        $helper->currentIndex = AdminController::$currentIndex.'&configure='.$this->name;
        $helper->default_form_language = (int)Configuration::get('PS_LANG_DEFAULT');
        $helper->allow_employee_form_lang = (int) Configuration::get('PS_LANG_DEFAULT');

        // Title and toolbar
        $helper->title = $this->displayName;
        $helper->show_toolbar = true;
        $helper->toolbar_scroll = true;
        $helper->submit_action = 'submitconf_'.$this->name;
        $helper->fields_value = $this->getFieldsValue($settings);

        $helper->tpl_vars = array(
                'languages' => $this->context->controller->getLanguages(),
                'id_language' => $this->context->language->id,
            );

        return $helper->generateForm($fieldsForm);
    }

    public function getFieldsValue(array $settings)
    {
        $fieldsValue  = array();
        $userSettings = Tools::jsonDecode(Configuration::getGlobalValue('MAILMANAGER_CURRENT_CONF_'.$this->getCurrentThemeId()), true);

        // If the template currently installed is not the same that the one that
        // is being configured, load the default values
        if (is_null($userSettings) || $userSettings['name'] !== $settings['name']) {
            foreach ($settings['inputs'] as $param) {
                if (isset($param['lang']) && $param['lang'] == true) {
                    foreach (Language::getLanguages(true) as $lang) {
                        $fieldsValue[$param['name']][$lang['id_lang']] = isset($param['default'][$lang['iso_code']]) ? $param['default'][$lang['iso_code']] : '';
                    }
                } else {
                    $fieldsValue[$param['name']] = $param['default'];
                }
            }
        } else {
            // The merchant wants to edit the currently installed template so we load his settings
            foreach ($settings['inputs'] as $param) {
                if (isset($userSettings['inputs'][$param['name']])) {
                    $fieldsValue[$param['name']] = $userSettings['inputs'][$param['name']];
                } else {
                    if (isset($param['lang']) && $param['lang'] == true) {
                        foreach (Language::getLanguages(true) as $lang) {
                            $fieldsValue[$param['name']][$lang['id_lang']] = $param['default'][$lang['id_lang']];
                        }
                    } else {
                        $fieldsValue[$param['name']] = $param['default'];
                    }
                }
            }
        }
        $fieldsValue['select_template'] = basename(Tools::getValue('select_template'));

        return $fieldsValue;
    }

    /**
     * Fetches the available templates
     */
    public function getAvailableTemplates()
    {
        $uploadDir = $this->importsPath;
        $templatesDir = scandir($uploadDir);
        $templates = array();

        if (empty($templatesDir)) {
            return $templates;
        }

        //remove '.' and '..' from array
        $templatesDir = array_diff($templatesDir, array('.', '..'));

        foreach ($templatesDir as $tpl) {
            $settings = $uploadDir.$tpl.DIRECTORY_SEPARATOR.'settings.json';
            if (file_exists($settings)) {
                $settings = Tools::file_get_contents($settings);
                if ($settings) {
                    $template = Tools::jsonDecode($settings, true);
                    $template['folder'] = $tpl;
                    $templates[] = $template;
                }
            }
        }

        return $templates;
    }

    /**
     * Generates a file upload panel
     */
    public function generateImportPanel()
    {
        $helper = new HelperForm();

        $helper->module = $this;
        $helper->name_controller = self::ADMIN_CTRL_NAME;
        $helper->token = Tools::getAdminTokenLite('AdminModules');
        $helper->title = $this->displayName;
        $helper->show_toolbar = false;
        $helper->default_form_language = (int) Configuration::get('PS_LANG_DEFAULT');
        $helper->submit_action = 'submit_'.$this->name;
        $helper->currentIndex = AdminController::$currentIndex.'&configure='.$this->name;

        $fieldsForm = array();

        $fieldsForm[0]['form'] = array(
            'legend' => array(
                'title' => $this->l('Import a pack of template'),
            ),
            'input' => array(
                array(
                    'type'     => 'file',
                    'label'    => $this->l('Zip'),
                    'desc'     => $this->l('Select your template\'s zip'),
                    'required' => true,
                    'name'     => 'uploadedfile',
                ),
            ),
            'submit' => array(
                'title' => $this->l('Save'),
                'class' => 'btn btn-default pull-right'
            ),
        );

        return $helper->generateForm($fieldsForm);
    }

    private static function hasValidMimeType($filename, $wanted_mime_types)
    {
        if (!is_array($wanted_mime_types)) {
            $wanted_mime_types = array($wanted_mime_types);
        }

        $mimeType = false;

        if (function_exists('finfo_open')) {
            $const = defined('FILEINFO_MIME_TYPE') ? FILEINFO_MIME_TYPE : FILEINFO_MIME;
            $finfo = finfo_open($const);
            $mimeType = finfo_file($finfo, $filename);
            finfo_close($finfo);
        } elseif (function_exists('mime_content_type')) {
            $mimeType = mime_content_type($filename);
        } elseif (function_exists('exec')) {
            $mimeType = trim(exec('file -b --mime-type '.escapeshellarg($filename)));
            if (!$mimeType) {
                $mimeType = trim(exec('file --mime '.escapeshellarg($filename)));
            }
            if (!$mimeType) {
                $mimeType = trim(exec('file -bi '.escapeshellarg($filename)));
            }
        }

        return in_array($mimeType, $wanted_mime_types);
    }

    /**
     * Performs actions when the user posts something through the configuration
     * forms
     */
    public function postProcess()
    {
        $targetPath = $this->extractPath;

        if (isset($_FILES['uploadedfile']['error']) && $_FILES['uploadedfile']['error'] != UPLOAD_ERR_OK) {
            $this->manageUploadError();
        } elseif (!isset($_FILES['uploadedfile'])
            || !self::hasValidMimeType($_FILES['uploadedfile']['tmp_name'], 'application/zip')) {
            $this->_errors[] = $this->l('Invalid .zip file');
        } else {
            $targetPath .= uniqid().DIRECTORY_SEPARATOR;

            if (file_exists($targetPath)) {
                Tools::deleteDirectory($targetPath);
            }

            if (!mkdir($targetPath, 0777, true)) {
                $this->_errors[] = $this->l('Can\'t create folder: '.$targetPath);
                return false;
            }

            if (!move_uploaded_file($_FILES['uploadedfile']['tmp_name'], $targetPath.$_FILES['uploadedfile']['name'])) {
                $this->_errors[] = $this->l('Can\'t copy file to:').' '.$targetPath;
            } else {
                return $this->unpackTemplates($targetPath, $_FILES['uploadedfile']['name']);
            }
        }
        return false;
    }

    /**
     * Takes a templates archive and unzip it
     */
    public function unpackTemplates($zipPath, $filename)
    {
        $zip      = new ZipArchive();
        $destPath = $zipPath.Tools::substr($filename, 0, -4);

        $allowedTypes = array('text/html', 'text/plain', 'image/jpeg', 'image/png', 'image/gif', 'application/json');

        if ($zip->open($zipPath.$filename, ZipArchive::CREATE)) {
            $zip->extractTo($destPath);

            // Check if files are valid in uploaded zip
            $files = Tools::scandir($destPath, false, '', true);
            foreach ($files as $file) {
                $fullPath = $destPath.DIRECTORY_SEPARATOR.$file;
                if (!is_dir($fullPath)) {
                    if (!self::hasValidMimeType($fullPath, $allowedTypes)) {
                        $this->_errors[] = $this->l('Invalid file(s) in your zip');
                        Tools::deleteDirectory($destPath);
                        $zip->close();
                        return false;
                    }
                }
            }

            $settingsPath = $destPath.DIRECTORY_SEPARATOR.'settings.json';
            $settings = Tools::file_get_contents($settingsPath);
            $settings = Tools::jsonDecode($settings, true);
            if (!$settings || is_null($settings)) {
                $this->_errors[] = $this->l('Settings file is missing');
            } elseif (!isset($settings['name']) || empty($settings['name'])) {
                $this->_errors[] = $this->l('Name is missing in settings file');
            } else {
                if (file_exists($this->importsPath.$settings['name'])) {
                    Tools::deleteDirectory($this->importsPath.$settings['name']);
                }
                $zip->extractTo($this->importsPath.$settings['name']);
                $zip->close();
                Tools::deleteDirectory($zipPath);
                return true;
            }
            $zip->close();
        } else {
            $this->_errors[] = $this->l('Can\'t open:'.$zipPath);
        }

        Tools::deleteDirectory($zipPath);
        return false;
    }

    /**
     * Handles the upload errors
     */
    public function manageUploadError()
    {
        switch ($_FILES['uploadedfile']['error']) {
            case UPLOAD_ERR_INI_SIZE:
                $this->_errors[] = $this->l('The uploaded file exceeds the upload_max_filesize directive in php.ini');
                break;
            case UPLOAD_ERR_FORM_SIZE:
                $this->_errors[] = $this->l(
                    'The uploaded file exceeds the MAX_FILE_SIZE directive that was specified in the HTML form'
                );
                break;
            case UPLOAD_ERR_PARTIAL:
                $this->_errors[] = $this->l('The uploaded file was only partially uploaded');
                break;
            case UPLOAD_ERR_NO_FILE:
                $this->_errors[] = $this->l('No file was uploaded');
                break;
            case UPLOAD_ERR_NO_TMP_DIR:
                $this->_errors[] = $this->l('Missing a temporary folder');
                break;
            case UPLOAD_ERR_CANT_WRITE:
                $this->_errors[] = $this->l('Failed to write file to disk.');
                break;
            case UPLOAD_ERR_EXTENSION:
                $this->_errors[] = $this->l('A PHP extension stopped the file upload.');
                break;
            default:
                $this->_errors[] = sprintf($this->l('Internal error #%s'), $_FILES['newfile']['error']);
                break;
        }
    }

    private function getAddonsProducts()
    {
        $post_query_data = array(
            'method' => 'search',
            'version' => _PS_VERSION_,
            'iso_lang' => Context::getContext()->language->iso_code,
            'iso_code' => Country::getIsoById(Configuration::get('PS_COUNTRY_DEFAULT')),
            'search_type' => 'full',
            'product_type' => 'module',
            'id_category' => 625
        );

        $url = 'https://api.addons.prestashop.com/?';
        $content = Tools::file_get_contents($url.http_build_query($post_query_data));
        if ($content) {
            $content = json_decode($content, true);
            if (isset($content) && !empty($content['results'])) {
                return $content['results'];
            }
        }
        return false;
    }
}
