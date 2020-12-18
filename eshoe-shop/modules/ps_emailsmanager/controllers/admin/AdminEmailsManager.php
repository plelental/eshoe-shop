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

class AdminEmailsManagerController extends ModuleAdminController
{
    protected $content_only = true;
    protected $lite_display = true;
    protected $display_header = false;
    protected $display_footer = false;

    public function initContent()
    {
        $template = basename(Tools::getValue('template'));

        if (!Validate::isTplName($template)) {
            Tools::redirectAdmin(Context::getContext()->link->getAdminLink('AdminModules'));
        }

        if ($this->module instanceof Module) {
            if ($template == 'classic') {
                $link = _PS_MODULE_DIR_.$this->module->name.DIRECTORY_SEPARATOR.'imports'.DIRECTORY_SEPARATOR;
                $link .= 'classic'.DIRECTORY_SEPARATOR.'en'.DIRECTORY_SEPARATOR.'account.html';
                $templateContent = Tools::file_get_contents($link);
                if (!$templateContent) {
                    die(Tools::displayError('Invalid classic template'));
                }
            } else {
                // Get template's settings from it's json file
                $settings = $this->module->getTemplateSettings($template);
                $current = json_decode(Configuration::get('MAILMANAGER_CURRENT_CONF_'.$this->module->getCurrentThemeId()), true);

                if (!isset($settings['inputs']) || !is_array($settings['inputs'])) {
                    die(Tools::displayError('Invalid template'));
                }

                $id_lang = Context::getContext()->language->id;
                $iso_lang = Context::getContext()->language->iso_code;

                foreach ($settings['inputs'] as $input) {
                    $value = Tools::getValue($input['name']);
                    if ($current['name'] == $template && isset($current['inputs'][$input['name']])) {
                        if (isset($input['lang']) && $input['lang'] == true) {
                            $this->context->smarty->assign($input['name'], isset($current['inputs'][$input['name']][$id_lang]) ? $current['inputs'][$input['name']][$id_lang] : '');
                        } else {
                            $this->context->smarty->assign($input['name'], $current['inputs'][$input['name']]);
                        }
                    } elseif ($value) {
                        $this->context->smarty->assign($input['name'], $value);
                    } else {
                        if (isset($input['lang']) && $input['lang'] == true) {
                            $this->context->smarty->assign($input['name'], isset($input['default'][$iso_lang]) ? $input['default'][$iso_lang] : '');
                        } else {
                            $this->context->smarty->assign($input['name'], $input['default']);
                        }
                    }
                }

                $this->context->smarty->assign($this->module->getTplVariables());

                // Change smarty delimiters to ease the parsing process
                $this->context->smarty->left_delimiter = '{{';
                $this->context->smarty->right_delimiter = '}}';

                $translations = $this->module->getEmailsTranslations(Context::getContext()->language->iso_code);
                $file = _PS_MODULE_DIR_.$this->module->name.DIRECTORY_SEPARATOR;
                $file .= 'imports'.DIRECTORY_SEPARATOR.$template.DIRECTORY_SEPARATOR.'account.tpl';
                $templateContent = $this->context->smarty->fetch($file);
                $templateContent = $this->module->translateTemplate($templateContent, $translations);

                // Restore default smarty delimiters
                $this->context->smarty->left_delimiter = '{';
                $this->context->smarty->right_delimiter = '}';
            }

            // Replace email's variables with not so fake data
            $templateVars = $this->getEmailsVars();
            foreach ($templateVars as $key => $var) {
                $templateContent = str_replace($key, $var, $templateContent);
            }

            die($templateContent);
        }
    }

    protected function getEmailsVars()
    {
        $templateVars = array();

        $idShop = Context::getContext()->shop->id;

        $configuration = Configuration::getMultiple(array(
            'PS_SHOP_EMAIL',
            'PS_SHOP_NAME',
            'PS_LOGO',
            'PS_LOGO_MAIL'
        ), null, null, $idShop);

        if ($configuration['PS_LOGO_MAIL'] !== false && file_exists(_PS_IMG_DIR_.$configuration['PS_LOGO_MAIL'])) {
            $templateVars['{shop_logo}'] = $this->context->shop->getBaseURL().'img/'.$configuration['PS_LOGO_MAIL'];
        } else {
            if (file_exists(_PS_IMG_DIR_.$configuration['PS_LOGO'])) {
                $templateVars['{shop_logo}'] = $this->context->shop->getBaseURL().'img/'.$configuration['PS_LOGO'];
            } else {
                $templateVars['{shop_logo}'] = '';
            }
        }

        if ((Context::getContext()->link instanceof Link) === false) {
            Context::getContext()->link = new Link();
        }

        $templateVars['{shop_name}'] = Tools::safeOutput($configuration['PS_SHOP_NAME']);
        $templateVars['{shop_url}'] = Context::getContext()->link->getPageLink(
            'index',
            true,
            Context::getContext()->language->id,
            null,
            false,
            $idShop
        );
        $templateVars['{firstname}'] = 'John';
        $templateVars['{lastname}'] = 'Doe';
        $templateVars['{email}'] = Tools::safeOutput($configuration['PS_SHOP_EMAIL']);
        $templateVars['{passwd}'] = '12345'; // PS < 1.7

        return $templateVars;
    }
}
