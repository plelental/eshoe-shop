<?php
/**
 * 2007-2017 PrestaShop.
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/afl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   http://opensource.org/licenses/afl-3.0.php Academic Free License (AFL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 */

if (!defined('_PS_VERSION_')) {
    exit();
}

if (!class_exists('Customer')) {
    include_once _PS_CLASS_DIR_.'/../classes/Customer.php';
}

if (!class_exists('Psmailin')) {
    include_once dirname(__FILE__).'/Psmailin.php';
}
include dirname(__FILE__).'/config.php';

class Sendinblue extends Module
{
    private $post_errors = array();
    private $html_code_tracking;
    private $_html_smtp_tracking;
    private $_second_block_code;
    private $tracking;
    private $email;
    private $newsletter;
    private $last_name;
    private $first_name;
    public $id_shop;
    public $id_shop_group;
    public $valid;
    public $error;
    public $_html = null;
    public $local_path;
    public $sib_api_url;
    public $sib_logo;

    /**
     * class constructor.
     */
    public function __construct()
    {
        $this->name = 'sendinblue';
        $this->tab = 'emailing';
        $this->author = 'Sendinblue';
        $this->version = '3.4.2';
        $this->module_key = 'fa4c321492032ab1bdeea359aa1e4e3d';
        $this->sib_api_url = 'https://api.sendinblue.com/v2.0';

        parent::__construct();

        $this->page = basename(__FILE__, '.php');
        $this->displayName = $this->l('Sendinblue');
        $this->description = $this->l('Synchronize your PrestaShop contacts with Sendinblue platform & easily send your marketing and transactional emails and SMS');
        $this->confirmUninstall = $this->l('Are you sure you want to remove the Sendinblue module? N.B: we will enable php mail() send function (If you were using SMTP info before using Sendinblue SMTP, please update your configuration for the emails)');
        $this->ps_versions_compliancy = array('min' => '1.7.0.0', 'max' => _PS_VERSION_);

        $this->langid = !empty($this->context->language->id) ? $this->context->language->id : '';
        $this->lang_cookie = $this->context->cookie;

        $id_shop = null;
        $id_shop_group = Shop::getContextShopGroupID(true);
        if (Shop::getContext() == Shop::CONTEXT_SHOP) {
            $id_shop = Shop::getContextShopID(true);
        }

        $this->id_shop_group = $id_shop_group;
        $this->id_shop = $id_shop;
        $pathconfig = new Pathfindsendinblue();
        $this->local_path = $pathconfig->pathDisp();
        // this check is for checking new attributes COMPANY and POSTCODE created or not
        $new_attribute_status = Configuration::get('Sendin_New_Attribute_Status');
        if ($new_attribute_status != 1) {
            $this->createCompanyAndPostcodeAttr();
        }
        //Call the callHookRegister method to send an email to the Sendinblue user
        //when someone registers.
        $this->callHookRegister();

        // Checking Extension
        if (!extension_loaded('curl') || !ini_get('allow_url_fopen')) {
            if (!extension_loaded('curl') && !ini_get('allow_url_fopen')) {
                return $this->_html.$this->l('You must enable cURL extension and allow_url_fopen option on your server if you want to use this module.');
            } elseif (!extension_loaded('curl')) {
                return $this->_html.$this->l('You must enable cURL extension on your server if you want to use this module.');
            } elseif (!ini_get('allow_url_fopen')) {
                return $this->_html.$this->l('You must enable allow_url_fopen option on your server if you want to use this module.');
            }
        }

        $this->cl_version = 'ver_5';
        $attribute_status = Configuration::get('Sendin_Attribute_Status');
        if ($attribute_status != 1) {
            $this->createNewAttribute();
        }
    }

    /**
     *  Function to set the Sendinblue SMTP and tracking code status to 0.
     */
    public function checkSmtpStatus()
    {
        //If the Sendinblue tracking code status is empty we set the status to 0
        if (Configuration::get('Sendin_Tracking_Status', '', $this->id_shop_group, $this->id_shop) == '') {
            Configuration::updateValue('Sendin_Tracking_Status', 0, '', $this->id_shop_group, $this->id_shop);
        }

        //If the Sendin SMTP status is empty we set the status to 0
        if (Configuration::get('Sendin_Api_Smtp_Status', '', $this->id_shop_group, $this->id_shop) == '') {
            Configuration::updateValue('Sendin_Api_Smtp_Status', 0, '', $this->id_shop_group, $this->id_shop);
        }
    }

    /**
     * When a subscriber registers we send an email to the Sendinblue user informing
     * that a new registration has happened.
     */
    public function callHookRegister()
    {
        $condition_identity = Dispatcher::getInstance()->getController() == 'identity';
        if ($condition_identity) {
            $this->newsletter = !empty($this->context->customer->newsletter) ? $this->context->customer->newsletter : '';
            $this->email = !empty($this->context->customer->email) ? $this->context->customer->email : '';
            $this->id_gender = !empty($this->context->customer->id_gender) ? $this->context->customer->id_gender : '';
            $this->first_name = !empty($this->context->customer->firstname) ? $this->context->customer->firstname : '';
            $this->last_name = !empty($this->context->customer->lastname) ? $this->context->customer->lastname : '';
            $this->id_lang = $this->context->cookie->id_lang;
            $this->birthday = !empty($this->context->customer->birthday) ? $this->context->customer->birthday : '';
            $birthday = $this->birthday;
            if ($this->first_name && !self::isCustomerName($this->first_name) || $this->last_name && !self::isCustomerName($this->last_name)) {
                return false;
            }
            $this->default_group = !empty($this->context->customer->id_default_group) ? $this->context->customer->id_default_group : '';
            $this->context->controller->addJs($this->local_path.$this->name.'/views/js/sib.js');

            // Load customer data for logged in user so that we can register his/her with sendinblue
            $customer_data = $this->getCustomersByEmail($this->email);
            // Check if client have records in customer table
            if (isset($customer_data) && count($customer_data) > 0 && !empty($customer_data[0]['id_customer'])) {
                $newsletter_status = !empty($this->newsletter) ? $this->newsletter : $customer_data[0]['newsletter'];
                $this->email = !empty($this->email) ? $this->email : $customer_data[0]['email'];
                $this->id_gender = !empty($this->id_gender) ? $this->id_gender : $customer_data[0]['id_gender'];
                $this->first_name = !empty($this->first_name) ? $this->first_name : $customer_data[0]['firstname'];
                $this->last_name = !empty($this->last_name) ? $this->last_name : $customer_data[0]['lastname'];
                $this->birthday = (!empty($birthday)) ? $birthday : $customer_data[0]['birthday'];

                // If logged in user register with newsletter
                if (isset($newsletter_status) && $newsletter_status == 1) {
                    $id_customer = $customer_data[0]['id_customer'];
                    $customer = new CustomerCore((int) $id_customer);

                    // Code to get address of logged in user
                    if (Validate::isLoadedObject($customer)) {
                        $customer_address = $customer->getAddresses((int) $customer_data[0]['id_lang']);
                    }
                    $phone_mobile = '';
                    $id_country = '';

                    // Check if user have address data
                    if ($customer_address && count($customer_address) > 0) {
                        // Code to get latest phone number of logged in user
                        $count_address = count($customer_address);
                        for ($i = $count_address; $i >= 0; --$i) {
                            $temp = 0;
                            foreach ($customer_address as $select_address) {
                                if ($temp < $select_address['date_upd'] && (!empty($select_address['phone_mobile']) || !empty($select_address['phone']))) {
                                    $temp = $select_address['date_upd'];
                                    $phone_mobile = !empty($select_address['phone_mobile']) ? $select_address['phone_mobile'] : $select_address['phone'];
                                    $id_country = $select_address['id_country'];
                                }
                            }
                        }
                    }

                    // Check if logged in user have phone number
                    if (!empty($phone_mobile)) {
                        // Code to get country prefix
                        $result = Db::getInstance()->getRow('SELECT `call_prefix` FROM '._DB_PREFIX_.'country WHERE `id_country` = \''.(int) $id_country.'\'');

                        /**
                         * Code to validate phone number (if we have '00' or '+' then it'll add '00' without country prefix,
                         * if we have '0' then it'll add '00' with country prefix).
                         */
                        $phone_mobile = $this->checkMobileNumber($phone_mobile, (!empty($result['call_prefix']) ? $result['call_prefix'] : ''));
                        $phone_mobile = (!empty($phone_mobile)) ? $phone_mobile : '';
                    }

                    if ($condition_identity && $newsletter_status == 1) {
                        // Code to update sendinblue with logged in user data.
                        $this->subscribeByruntimeRegister($this->email, $this->id_gender, $this->first_name, $this->last_name, $this->birthday, $this->id_lang, $phone_mobile, $this->default_group, $this->newsletter, $this->id_shop_group, $this->id_shop);
                        if (Tools::getValue('sendinflag') === 0) {
                            $this->sendWsTemplateMail($this->email);
                        }
                    }
                } elseif (isset($newsletter_status) && $newsletter_status == 0) {
                    $this->unsubscribeByruntime($this->email);
                }
            }
        } else {
            if (!$this->checkCaptchaValidation()) {
                return false;
            }

            $this->newsletter = Tools::getValue('newsletter');
            $this->email = Tools::getValue('email');
            $id_country = Tools::getValue('id_country');
            $phone_mobile = Tools::getValue('phone_mobile');
            $phone_home = Tools::getValue('phone');
            $this->id_gender = Tools::getValue('id_gender');
            $this->first_name = Tools::getValue('firstname');
            $this->last_name = Tools::getValue('lastname');
            $this->id_lang = !empty($this->context->cookie->id_lang) ? $this->context->cookie->id_lang : '';
            $this->birthday = Tools::getValue('birthday');
            $birthday = $this->birthday;
            $company = Tools::getValue('company');
            $postcode = Tools::getValue('postcode');

            if ($this->first_name && !self::isCustomerName($this->first_name) || $this->last_name && !self::isCustomerName($this->last_name)) {
                return false;
            }
            
            $this->default_group = !empty($this->context->customer->id_default_group) ? $this->context->customer->id_default_group : '';
            $phone_mobile = !empty($phone_mobile) ? $phone_mobile : $phone_home;
            if (isset($this->newsletter) && $this->newsletter == 1 && $this->email != '') {
                $result = Db::getInstance()->getRow('SELECT `call_prefix` FROM '._DB_PREFIX_.'country WHERE `id_country` = \''.(int) $id_country.'\'');
                $phone_mobile = $this->checkMobileNumber($phone_mobile, $result['call_prefix']);
                $phone_mobile = (!empty($phone_mobile)) ? $phone_mobile : '';

                if (Configuration::get('Sendin_Api_Key_Status', '', $this->id_shop_group, $this->id_shop) == 1) {
                    $result_id = Db::getInstance()->getRow('SELECT * FROM '._DB_PREFIX_.'sendin_newsletter WHERE `email` = \''.pSQL($this->context->cookie->email).'\'');
                }

                $email_id = (isset($result_id['id']) ? $result_id['id'] : '0');
                if ($email_id > 0) {
                    $id_shop_group = !empty($this->id_shop_group) ? $this->id_shop_group : 1;
                    $condition = $this->checkVersionCondition($id_shop_group);

                    Db::getInstance()->execute('DELETE FROM '._DB_PREFIX_.'sendin_newsletter WHERE `email` = \''.pSQL($this->context->cookie->email).'\''.$condition.'');
                    if ($this->newsletter == 0) {
                        $this->unsubscribeByruntime($this->context->cookie->email);
                    }
                }

                if (isset($this->newsletter) && $this->newsletter == 1) {
                    $this->subscribeByruntimeRegister($this->email, $this->id_gender, $this->first_name, $this->last_name, $birthday, $this->id_lang, $phone_mobile, $this->default_group, $this->newsletter, $this->id_shop_group, $this->id_shop, '', $company, $postcode);
                    $this->sendWsTemplateMail($this->email);
                }
            } elseif (Tools::getValue('email') != '') {
                // Load customer data for logged in user so that we can register his/her with sendinblue
                if (!empty($this->context->cookie->email)) {
                    $customer_data = $this->getCustomersByEmail($this->context->cookie->email);
                }
                // Check if client have records in customer table
                if (!empty($customer_data[0]['id_customer']) && count($customer_data) > 0) {
                    $newsletter_status = !empty($this->newsletter) ? $this->newsletter : $customer_data[0]['newsletter'];
                    $this->email = !empty($this->email) ? $this->email : $customer_data[0]['email'];
                    $this->id_gender = !empty($this->id_gender) ? $this->id_gender : $customer_data[0]['id_gender'];
                    $this->first_name = !empty($this->first_name) ? $this->first_name : $customer_data[0]['firstname'];
                    $this->last_name = !empty($this->last_name) ? $this->last_name : $customer_data[0]['lastname'];
                    $this->id_lang = !empty($this->id_lang) ? $this->id_lang : $customer_data[0]['id_lang'];
                    $this->birthday = (!empty($this->birthday)) ? $this->birthday : $customer_data[0]['birthday'];
                    $this->default_group = !empty($this->default_group) ? $this->default_group : $customer_data[0]['id_default_group'];

                    if (Configuration::get('Sendin_Api_Key_Status', '', $this->id_shop_group, $this->id_shop) == 1) {
                        $result_id = Db::getInstance()->getRow('SELECT * FROM '._DB_PREFIX_.'sendin_newsletter WHERE `email` = \''.pSQL($this->context->cookie->email).'\'');
                    }
                    $email_id = (isset($result_id['id']) ? $result_id['id'] : '0');
                    if ($email_id > 0) {
                        $id_shop_group = !empty($this->id_shop_group) ? $this->id_shop_group : 1;
                        $condition = $this->checkVersionCondition($id_shop_group);

                        Db::getInstance()->execute('DELETE FROM '._DB_PREFIX_.'sendin_newsletter WHERE `email` = \''.pSQL($this->context->cookie->email).'\''.$condition.'');
                        if ($this->newsletter == 0) {
                            $this->unsubscribeByruntime($this->context->cookie->email);
                        }
                    }

                    // Code to update sendinblue with logged in user data.
                    if ($newsletter_status == 1) {
                        $this->subscribeByruntimeRegister($this->email, $this->id_gender, $this->first_name, $this->last_name, $this->birthday, $this->id_lang, $phone_mobile, $this->default_group, $this->newsletter, $this->id_shop_group, $this->id_shop);
                    }
                }
            } elseif (!empty($phone_mobile) || Tools::getValue('controller') == 'addresses' || strpos($_SERVER['REQUEST_URI'], 'addresses.php') !== false) {
                // Load customer data for logged in user so that we can register his/her with sendinblue
                if (!empty($this->context->cookie->email)) {
                    $customer_data = $this->getCustomersByEmail($this->context->cookie->email);
                }

                // Check if client have records in customer table
                if (!empty($customer_data[0]['id_customer']) && count($customer_data) > 0) {
                    $newsletter_status = !empty($customer_data[0]['newsletter']) ? $customer_data[0]['newsletter'] : '';
                    $this->email = !empty($customer_data[0]['email']) ? $customer_data[0]['email'] : '';
                    $this->id_gender = !empty($customer_data[0]['id_gender']) ? $customer_data[0]['id_gender'] : '';
                    $this->first_name = !empty($customer_data[0]['firstname']) ? $customer_data[0]['firstname'] : '';
                    $this->last_name = !empty($customer_data[0]['lastname']) ? $customer_data[0]['lastname'] : '';
                    $this->id_lang = !empty($customer_data[0]['id_lang']) ? $customer_data[0]['id_lang'] : $this->id_lang;
                    $this->birthday = !empty($customer_data[0]['birthday']) ? $customer_data[0]['birthday'] : '';
                    $this->default_group = !empty($customer_data[0]['id_default_group']) ? $customer_data[0]['id_default_group'] : '';

                    // If logged in user register with newsletter
                    if (isset($newsletter_status) && $newsletter_status == 1) {
                        $id_customer = $customer_data[0]['id_customer'];
                        $customer = new CustomerCore((int) $id_customer);

                        // Code to get address of logged in user
                        if (Validate::isLoadedObject($customer)) {
                            $customer_address = $customer->getAddresses((int) $this->context->language->id);
                        }
                        $phone_mobile = '';
                        $id_country = '';
                        $company = '';
                        $postcode = '';


                        // Check if user have address data
                        if ($customer_address && count($customer_address) > 0) {
                            // Code to get latest phone number of logged in user
                            $count_address = count($customer_address);
                            for ($i = $count_address; $i >= 0; --$i) {
                                $temp = 0;
                                foreach ($customer_address as $select_address) {
                                    if ($temp < $select_address['date_upd']) {
                                        $temp = $select_address['date_upd'];
                                        $company = !empty($select_address['company']) ? $select_address['company'] : '';
                                        $postcode = !empty($select_address['postcode']) ? $select_address['postcode'] : '';
                                        $phone = !empty($select_address['phone']) ? $select_address['phone'] : '';
                                        $phone_mobile = !empty($select_address['phone_mobile']) ? $select_address['phone_mobile'] : $phone;
                                        $id_country = $select_address['id_country'];
                                    }
                                }
                            }
                        }

                        // Check if logged in user have phone number
                        if (!empty($phone_mobile)) {
                            // Code to get country prefix
                            $result = Db::getInstance()->getRow('SELECT `call_prefix` FROM '._DB_PREFIX_.'country WHERE `id_country` = \''.(int) $id_country.'\'');

                            /**
                             * Code to validate phone number (if we have '00' or '+' then it'll add '00' without country prefix,
                             * if we have '0' then it'll add '00' with country prefix).
                             */
                            $phone_mobile = $this->checkMobileNumber($phone_mobile, (!empty($result['call_prefix']) ? $result['call_prefix'] : ''));
                            $phone_mobile = (!empty($phone_mobile)) ? $phone_mobile : '';
                        }

                        // Code to update sendinblue with logged in user data.
                        $this->subscribeByruntimeRegister($this->email, $this->id_gender, $this->first_name, $this->last_name, $this->birthday, $this->id_lang, $phone_mobile, $this->default_group, $this->newsletter, $this->id_shop_group, $this->id_shop, '', $company, $postcode);
                    }
                }
            }
        }
        if (!empty($this->context->language->id)) {
            $this->context->cookie->sms_message_land_id = $this->context->language->id;
        }
    }

    /**
     * To restore the default PrestaShop newsletter block.
     */
    public function restoreBlocknewsletterBlock()
    {
        $module_name = 'ps_emailsubscription';
        $block_resp = Module::isEnabled($module_name);
        if ($block_resp === false) {
            Module::enableByName($module_name);
        }
    }

    /**
     * This method is called when installing the Sendinblue plugin.
     */
    public function install()
    {
        if (parent::install() == false || $this->registerHook('OrderConfirmation') === false || $this->registerHook('leftColumn') === false || $this->registerHook('rightColumn') === false || $this->registerHook('top') === false || $this->registerHook('footer') === false || $this->registerHook('createAccount') === false || $this->registerHook('createAccountForm') === false || $this->registerHook('updateOrderStatus') === false || $this->registerHook('header') === false) {
            return false;
        }

        Configuration::updateValue('Sendin_Newsletter_table', 1, '', $this->id_shop_group, $this->id_shop);

        if (Db::getInstance()->Execute('
            CREATE TABLE IF NOT EXISTS `'._DB_PREFIX_.'sendin_newsletter`(
            `id` int(6) NOT NULL AUTO_INCREMENT,
            `id_shop` int(10) unsigned NOT NULL DEFAULT 1,
            `id_shop_group` int(10) unsigned NOT NULL DEFAULT 1,
            `email` varchar(255) NOT NULL,
            `newsletter_date_add` DATETIME NULL,
            `ip_registration_newsletter` varchar(15) NOT NULL,
            `http_referer` VARCHAR(255) NULL,
            `active` TINYINT(1) NOT NULL DEFAULT 1,
            PRIMARY KEY(`id`)
            ) ENGINE='._MYSQL_ENGINE_.' default CHARSET=utf8')) {
            return true;
        }

        return false;
    }

    /**
     *  We create our own table and import the unregisterd emails from the default
     *  newsletter table to the ps_sendin_newsletter table. This is used when you install
     * the Sendinblue PS plugin.
     */
    public function getOldNewsletterEmails()
    {
        Db::getInstance()->Execute('TRUNCATE table  '._DB_PREFIX_.'sendin_newsletter');
        Db::getInstance()->Execute('INSERT INTO  '._DB_PREFIX_.'sendin_newsletter
(id_shop, id_shop_group, email, newsletter_date_add, ip_registration_newsletter, http_referer, active)
SELECT id_shop, id_shop_group, email, newsletter_date_add, ip_registration_newsletter, http_referer, active FROM '._DB_PREFIX_.'emailsubscription');
    }

    /**
     *  This method restores the subscribers from the ps_sendin_newsletter table to the default table.
     * This is used when you uninstall the Sendinblue PS Plugin.
     */
    public function getRestoreOldNewsletteremails()
    {
        if (Configuration::get('Sendin_Api_Key_Status', '', $this->id_shop_group, $this->id_shop)) {
            Db::getInstance()->Execute('TRUNCATE table  '._DB_PREFIX_.'emailsubscription');
        }

        Db::getInstance()->Execute('INSERT INTO  '._DB_PREFIX_.'emailsubscription
(id_shop, id_shop_group, email, newsletter_date_add, ip_registration_newsletter, http_referer, active)
SELECT id_shop, id_shop_group, email, newsletter_date_add, ip_registration_newsletter, http_referer, active FROM '._DB_PREFIX_.'sendin_newsletter');
    }

    /**
     *  This method is used to fetch all users from the default customer table to list
     * them in the Sendinblue PS plugin.
     */
    public function getNewsletterEmails($start, $page, $id_shop_group, $id_shop)
    {
        $id_shop_group = !empty($id_shop_group) ? $id_shop_group : 'NULL';
        $id_shop = !empty($id_shop) ? $id_shop : 'NULL';
        if ($id_shop === 'NULL' && $id_shop_group === 'NULL') {
            $condition = '';
        } elseif ($id_shop_group != 'NULL' && $id_shop === 'NULL') {
            $condition = 'WHERE C.id_shop_group ='.$id_shop_group;
        } else {
            $condition = 'WHERE C.id_shop_group ='.$id_shop_group.' AND C.id_shop ='.$id_shop;
        }

        if ($id_shop === 'NULL' && $id_shop_group === 'NULL') {
            $condition2 = '';
        } elseif ($id_shop_group != 'NULL' && $id_shop === 'NULL') {
            $condition2 = 'WHERE A.id_shop_group ='.$id_shop_group;
        } else {
            $condition2 = 'WHERE A.id_shop_group ='.$id_shop_group.' AND A.id_shop ='.$id_shop;
        }

        return Db::getInstance()->ExecuteS('
        SELECT LOWER(C.email) as email, C.newsletter AS newsletter, '._DB_PREFIX_.'country.call_prefix, PSA.phone_mobile, PSA.phone, C.id_customer, PSA.date_upd
        FROM '._DB_PREFIX_.'customer as C LEFT JOIN '._DB_PREFIX_.'address PSA ON (C.id_customer = PSA.id_customer and (PSA.id_customer, PSA.date_upd) IN
        (SELECT id_customer, MAX(date_upd) upd  FROM '._DB_PREFIX_.'address GROUP BY '._DB_PREFIX_.'address.id_customer))
        LEFT JOIN '._DB_PREFIX_.'country ON '._DB_PREFIX_.'country.id_country = PSA.id_country '.$condition.'
        GROUP BY C.id_customer
        UNION
        (SELECT LOWER(A.email) as email, A.active AS newsletter, NULL AS call_prefix,
        NULL AS phone_mobile, NULL AS phone, "Nclient" AS id_customer, NULL AS date_upd
        FROM '._DB_PREFIX_.'sendin_newsletter AS A '.$condition2.')  LIMIT '.(int) $start.','.(int) $page);
    }

    /**
     * Get the total count of the registered users including both subscribed
     * and unsubscribed in the default customer table.
     */
    public function getTotalEmail()
    {
        $id_shop_group = !empty($this->id_shop_group) ? $this->id_shop_group : 'NULL';
        $id_shop = !empty($this->id_shop) ? $this->id_shop : 'NULL';

        if ($id_shop === 'NULL' && $id_shop_group === 'NULL') {
            $condition = '';
        } elseif ($id_shop_group != 'NULL' && $id_shop === 'NULL') {
            $condition = 'WHERE id_shop_group ='.$id_shop_group;
        } else {
            $condition = 'WHERE id_shop_group ='.$id_shop_group.' AND id_shop ='.$id_shop;
        }

        $customer_count = Db::getInstance()->getValue('SELECT count(*) AS Total FROM '._DB_PREFIX_.'customer '.$condition);
        $newsletter_count = Db::getInstance()->getValue('SELECT count(A.email) AS Total FROM '._DB_PREFIX_.'sendin_newsletter AS A  '.$condition);

        return $customer_count + $newsletter_count;
    }

    /**
     *  Get the total count of the subscribed and unregistered users in the default customer table.
     */
    public function getTotalSubUnReg()
    {
        $condition = $this->conditionalValue();

        return Db::getInstance()->getValue('SELECT  count(DISTINCT email) as Total FROM '._DB_PREFIX_.'sendin_newsletter where active = 1 '.$condition);
    }

    /**
     *  Get the total count of the unsubscribed and unregistered users in the default customer table.
     */
    public function getTotalUnSubUnReg()
    {
        $condition = $this->conditionalValue();

        return Db::getInstance()->getValue('SELECT  count(DISTINCT email) as Total FROM '._DB_PREFIX_.'sendin_newsletter where active = 0 '.$condition);
    }

    /**
     *  Update a subscriber's status both on Sendinblue and PrestaShop.
     */
    public function updateNewsletterStatus($id_shop_group = '', $id_shop = '')
    {
        $id_shop_group = !empty($id_shop_group) ? $id_shop_group : 'NULL';
        $id_shop = !empty($id_shop) ? $id_shop : 'NULL';

        $this->newsletter = Tools::getValue('newsletter_value');
        $this->email = Tools::getValue('email_value');

        if (isset($this->newsletter) && $this->newsletter != '' && $this->email != '') {
            if ($this->newsletter == 0) {
                $this->unsubscribeByruntime($this->email, $id_shop_group, $id_shop);

                $status = 0;
            } elseif ($this->newsletter == 1) {
                $data = $this->getUpdateUserData($this->email, $id_shop_group, $id_shop);
                if (!empty($data['phone_mobile']) || !empty($data['phone'])) {
                    $result = Db::getInstance()->getRow('SELECT `call_prefix` FROM '._DB_PREFIX_.'country WHERE `id_country` = \''.(int) $data['id_country'].'\'');
                    $sms_data = !empty($data['phone_mobile']) ? $data['phone_mobile'] : $data['phone'];
                    $mobile = $this->checkMobileNumber($sms_data, $result['call_prefix']);
                } else {
                    $mobile = '';
                }
                $this->isEmailRegistered($this->email, $mobile, $this->newsletter, $id_shop_group, $id_shop);
                $status = 1;
            }

            Db::getInstance()->Execute('UPDATE `'._DB_PREFIX_.'sendin_newsletter`
SET active="'.pSQL($status).'",
newsletter_date_add = "'.pSQL(date('Y-m-d H:i:s')).'"
WHERE email = "'.pSQL($this->email).'"');
            Db::getInstance()->Execute('UPDATE `'._DB_PREFIX_.'customer`
SET newsletter="'.pSQL($status).'",
newsletter_date_add = "'.pSQL(date('Y-m-d H:i:s')).'"
WHERE email = "'.pSQL($this->email).'"');
        }
    }

    public function getUpdateUserData($email)
    {
        //Load customer data for logged in user so that we can register his/her with sendinblue
        $customer_data = $this->getCustomersByEmail($email);

        // Check if client have records in customer table
        if (count($customer_data) > 0 && !empty($customer_data[0]['id_customer'])) {
            $totalvalue = count($customer_data);
            $totalvalue = ($totalvalue - 1);
            for ($i = $totalvalue; $i >= 0; --$i) {
                $this->newsletter = !empty($customer_data[$i]['newsletter']) ? $customer_data[$i]['newsletter'] : '';
                $this->email = !empty($customer_data[$i]['email']) ? $customer_data[$i]['email'] : '';
                $this->first_name = !empty($customer_data[$i]['firstname']) ? $customer_data[$i]['firstname'] : '';
                $this->last_name = !empty($customer_data[$i]['lastname']) ? $customer_data[$i]['lastname'] : '';

                // If logged in user register with newsletter
                $id_customer = $customer_data[$i]['id_customer'];
                $customer = new CustomerCore((int) $id_customer);

                // Code to get address of logged in user
                if (Validate::isLoadedObject($customer)) {
                    $customer_address = $customer->getAddresses((int) $customer_data[$i]['id_lang']);
                }

                // Check if user have address data
                if ($customer_address && count($customer_address) > 0) {
                    // Code to get latest phone number of logged in user
                    $count_address = count($customer_address);
                    for ($j = $count_address; $j >= 0; --$j) {
                        $temp = 0;
                        foreach ($customer_address as $select_address) {
                            if ($temp < $select_address['date_upd'] && (!empty($select_address['phone_mobile']) || !empty($select_address['phone']))) {
                                $temp = $select_address['date_upd'];
                            }
                        }

                        return $select_address;
                    }
                }
                if (!empty($select_address['phone_mobile']) || !empty($select_address['phone'])) {
                    break;
                }
            }
        }
    }

    /**
     *   Display user's newsletter subscription
     *   This function displays both Sendin's and PrestaShop's newsletter subscription status.
     *   It also allows you to change the newsletter subscription status.
     */
    public function displayNewsletterEmail()
    {
        $sub_count = $this->totalsubscribedUser();
        $unsub_count = $this->totalUnsubscribedUser();
        $counter1 = $this->getTotalSubUnReg();
        $counter2 = $this->getTotalUnSubUnReg();
        $sub_count = $sub_count + $counter1;
        $unsub_count = $unsub_count + $counter2;

        $middlelabel = $this->l('You have ').' '.$sub_count.' '.$this->l(' contacts subscribed and ').' '.$unsub_count.' '.$this->l(' contacts unsubscribed from PrestaShop').'<span id="Spantextmore">'.$this->l('. For more details,   ').'</span><span id="Spantextless" style="display:none;">'.$this->l('. For less details,   ').'</span>  <a href="javascript:void(0);" id="showUserlist">'.$this->l('click here').'</a>';

        $this->context->smarty->assign('middlelable', $middlelabel);
        $this->context->smarty->assign('cl_version', $this->cl_version);

        return $this->display(__FILE__, 'views/templates/admin/userlist.tpl');
    }

    public function ajaxDisplayNewsletterEmail($id_shop_group, $id_shop)
    {
        $page = Tools::getValue('page');

        if (isset($page) && Configuration::get('Sendin_Api_Key_Status', '', $id_shop_group, $id_shop) == 1) {
            $page = (int) $page;

            $cur_page = $page;
            --$page;
            $per_page = 20;
            $previous_btn = true;
            $next_btn = true;
            $first_btn = true;
            $last_btn = true;
            $start = $page * $per_page;
            $count = $this->getTotalEmail();
            $no_of_paginations = ceil($count / $per_page);

            if ($cur_page >= 7) {
                $start_loop = $cur_page - 3;
                if ($no_of_paginations > $cur_page + 3) {
                    $end_loop = $cur_page + 3;
                } elseif ($cur_page <= $no_of_paginations && $cur_page > $no_of_paginations - 6) {
                    $start_loop = $no_of_paginations - 6;
                    $end_loop = $no_of_paginations;
                } else {
                    $end_loop = $no_of_paginations;
                }
            } else {
                $start_loop = 1;
                if ($no_of_paginations > 7) {
                    $end_loop = 7;
                } else {
                    $end_loop = $no_of_paginations;
                }
            }

            $this->context->smarty->assign('previous_btn', $previous_btn);
            $this->context->smarty->assign('next_btn', $next_btn);
            $this->context->smarty->assign('cur_page', (int) $cur_page);
            $this->context->smarty->assign('first_btn', $first_btn);
            $this->context->smarty->assign('last_btn', $last_btn);
            $this->context->smarty->assign('start_loop', (int) $start_loop);
            $this->context->smarty->assign('end_loop', $end_loop);
            $this->context->smarty->assign('no_of_paginations', $no_of_paginations);
            $result = $this->getNewsletterEmails((int) $start, (int) $per_page, $id_shop_group, $id_shop);
            $data = $this->checkUserSendinStatus($result, $id_shop_group, $id_shop);
            $smsdata = $this->fixCountyCodeinSmsCol($result);
            $this->context->smarty->assign('smsdata', $smsdata);
            $this->context->smarty->assign('result', $result);
            $this->context->smarty->assign('data', (!empty($data) ? $data : ''));
            $this->context->smarty->assign('cl_version', $this->cl_version);

            echo $this->display(__FILE__, 'views/templates/admin/ajaxuserlist.tpl');
        }
    }

    /**
     * This method is used to fix country code in Sendinblue.
     */
    public function fixCountyCodeinSmsCol($result)
    {
        $smsdetail = array();
        if (!empty($result) && is_array($result)) {
            foreach ($result as $detail) {
                $sms_data = !empty($detail['phone_mobile']) ? $detail['phone_mobile'] : $detail['phone'];
                if (!empty($sms_data)) {
                    $smsdetail[$sms_data] = $this->checkMobileNumber($sms_data, $detail['call_prefix']);
                }
            }
        }

        return $smsdetail;
    }

    /**
     * This method is used to check the subscriber's newsletter subscription status in Sendinblue.
     */
    public function checkUserSendinStatus($result, $id_shop_group, $id_shop)
    {
        $data = array();
        $userstatus = array();
        if (!empty($result) && is_array($result)) {
            foreach ($result as $value) {
                $userstatus[] = Tools::strtolower($value['email']);
            }
        }
        $email = array();
        $email[] = implode(',', $userstatus);
        $key = trim(Configuration::get('Sendin_Api_Key', '', $id_shop_group, $id_shop));
        $mailin = $this->createObjMailin($key);
        $data['users'] = $email;
        $data_resp = $mailin->getUsersBlacklistStatus($data);

        return $data_resp['data'];
    }

    /**
     *  Returns the list of active registered and unregistered user details
     * from both the default customer table and Sendinblue newsletter table.
     */
    public function getBothNewsletteremails()
    {
        return Db::getInstance(_PS_USE_SQL_SLAVE_)->ExecuteS('SELECT P.email, P.newsletter as newsletter,
        if (P.id_customer is null, 0, "customer_table") as table_type
        from '._DB_PREFIX_.'customer AS P UNION select Q.email,
        Q.active as newsletter,
        if (Q.newsletter_date_add is null, 0, "sendin_newsletter_table") as table_type
        from '._DB_PREFIX_.'sendin_newsletter AS Q');
    }

    /**
     * Fetches the subscriber's details viz email address, dateime of subscription, status and returns the same
     * in array format.
     */
    public function addNewUsersToDefaultList($id_shop_group = null, $id_shop = null)
    {
        $condition = $this->conditionalValueSecond($id_shop_group, $id_shop);
        $file_name = rand();
        Configuration::updateValue('Sendin_CSV_File_Name', $file_name, '');
        $handle = fopen(_PS_MODULE_DIR_.'sendinblue/csv/'.$file_name.'.csv', 'w+');
        $register_result = Db::getInstance(_PS_USE_SQL_SLAVE_)->ExecuteS('SELECT C.email,
        C.newsletter as newsletter, C.date_upd as date_add
        from '._DB_PREFIX_.'customer AS C '.$condition.'');

        if ($register_result) {
            foreach ($register_result as $register_row) {
                fwrite($handle, $register_row['email'].','.$register_row['newsletter'].','.$register_row['date_add'].PHP_EOL);
            }
        }

        $unregister_result = Db::getInstance(_PS_USE_SQL_SLAVE_)->ExecuteS('select C.email,
        C.active as newsletter, C.newsletter_date_add as date_add
        from '._DB_PREFIX_.'sendin_newsletter AS C '.$condition.'');
        if ($unregister_result) {
            foreach ($unregister_result as $unregister_row) {
                fwrite($handle, $unregister_row['email'].','.$unregister_row['newsletter'].','.$unregister_row['date_add'].PHP_EOL);
            }
        }
        fclose($handle);
        $value_total = (count($register_result) + count($unregister_result));

        return $value_total;
    }

    /**
     * We send an array of subscriber's email address along with the local timestamp to the Sendinblue API server
     * and based on the same the Sendinblue API server sends us a response with the current
     * status of each of the email address.
     */
    public function usersStatusTimeStamp($id_shop_group = null, $id_shop = null)
    {
        $result = $this->addNewUsersToDefaultList($id_shop_group, $id_shop);
        if ($result > 0) {
            $data = array();
            $key = Configuration::get('Sendin_Api_Key', '', $this->id_shop_group, $this->id_shop);
            $file_name = Configuration::get('Sendin_CSV_File_Name');
            $data['url'] = $this->local_path.$this->name.'/csv/'.$file_name.'.csv';
            $data['timezone'] = date_default_timezone_get();
            $data['notify_url'] = $this->local_path.'sendinblue/CronResponce.php?token='.Tools::encrypt(Configuration::get('PS_SHOP_NAME'));
            if (!empty($key)) {
                $mailin = $this->createObjMailin();
                $mailin->syncUsersStatus($data);
            }
        }
    }

    /**
     * Method is used to check the current status of the module whether its active or not.
     */
    public function checkModuleStatus()
    {
        if (!Module::isEnabled('sendinblue')) {
            return false;
        }

        return true;
    }

    /**
     * Checks whether the Sendinblue API key and the Sendinblue subscription form is enabled
     * and returns the true|false accordingly.
     */
    public function syncSetting($id_shop_group = null, $id_shop = null)
    {
        $id_shop = !empty($this->id_shop) ? $this->id_shop : $id_shop;
        $id_shop_group = !empty($this->id_shop_group) ? $this->id_shop_group : $id_shop_group;

        if (Configuration::get('Sendin_Api_Key_Status', '', $id_shop_group, $id_shop) == 0 || Configuration::get('Sendin_Subscribe_Setting', '', $id_shop_group, $id_shop) == 0) {
            return false;
        }

        return $this->checkModuleStatus();
    }

    /**
     * This is an automated version of the usersStatusTimeStamp method but is called using a CRON.
     */
    public function userStatus($id_shop_group = null, $id_shop = null)
    {
        if (!$this->syncSetting($id_shop_group, $id_shop)) {
            return false;
        }
        $this->usersStatusTimeStamp($id_shop_group, $id_shop);
    }

    /**
     * Fetches all the subscribers of PrestaShop and adds them to the Sendinblue database.
     */
    private function autoSubscribeAfterInstallation()
    {
        $configValue = $this->getApiConfigValue();
        $lang = $configValue->language;
        $dateFormat = ($configValue->date_format === 'dd-mm-yyyy') ? 'd-m-Y' : 'm-d-Y';
        if ($lang != 'fr') {
            $lang = 'en';
        }

        $fileName = 'ImportContacts-'.time();
        Configuration::updateValue('Sendin_CSV_File_Name', $fileName, '');
        $handle = fopen(_PS_MODULE_DIR_.'sendinblue/csv/'.$fileName.'.csv', 'w+');
        $alias = array();
        $alias['en'] = array(
            'email' => 'EMAIL',
            'civ' => 'CIV',
            'firstname' => 'NAME',
            'lastname' => 'SURNAME',
            'dob' => 'BIRTHDAY',
            'lang' => 'PS_LANG',
            'client' => 'CLIENT',
            'sms' => 'SMS',
            'groupId' => 'GROUP_ID',
            'storeId' => 'STORE_ID',
            'defaultStoreId' => 'DEFAULT_GROUP_ID',
            'company' => 'COMPANY',
            'postcode' => 'POSTCODE'
        );
        $alias['fr'] = array(
            'email' => 'EMAIL',
            'civ' => 'CIV',
            'firstname' => 'PRENOM',
            'lastname' => 'NOM',
            'dob' => 'DDNAISSANCE',
            'lang' => 'PS_LANG',
            'client' => 'CLIENT',
            'sms' => 'SMS',
            'groupId' => 'GROUP_ID',
            'storeId' => 'STORE_ID',
            'defaultStoreId' => 'DEFAULT_GROUP_ID',
            'company' => 'COMPANY',
            'postcode' => 'POSTCODE'
        );

        //Writing the header in CSV as per language
        fwrite($handle, implode(';', $alias[$lang])."\n");
        $whereCondition = '';
        if (!empty($this->id_shop)) {
            $whereCondition .= ' AND C.id_shop_group = '.$this->id_shop;
        }
        if (!empty($this->id_shop_group)) {
            $whereCondition .= ' AND C.id_shop_group = '.$this->id_shop_group;
        }

        //Not Registered users, i.e user only subscribed to newsletter
        $unregisteredContacts = Db::getInstance()->ExecuteS('
            SELECT 
                GROUP_CONCAT(DISTINCT(C.id_shop_group)) as groupId,
                GROUP_CONCAT(DISTINCT(C.id_shop)) as storeId,
                C.email as email
            FROM '._DB_PREFIX_.'sendin_newsletter as C
            WHERE 
                C.active = 1
                '.$whereCondition.' 
            GROUP BY C.email
            ');

        $totalCount = 0;
        foreach ($unregisteredContacts as $contact) {
            $customer = array(
                $alias[$lang]['email'] => $contact['email'],
                $alias[$lang]['civ'] => '',
                $alias[$lang]['firstname'] => '',
                $alias[$lang]['lastname'] => '',
                $alias[$lang]['dob'] => '',
                $alias[$lang]['lang'] => '',
                $alias[$lang]['client'] => 0,
                $alias[$lang]['sms'] => '',
                $alias[$lang]['groupId'] => empty($contact['groupId']) ? '1' : $contact['groupId'],
                $alias[$lang]['storeId'] => empty($contact['storeId']) ? '1' : $contact['storeId'],
                $alias[$lang]['defaultStoreId'] => '',
                $alias[$lang]['company'] => '',
                $alias[$lang]['postcode'] => ''

            );
            fputcsv($handle, $customer, ';');
            ++$totalCount;
        }

        //Registered users
        $query = 'SELECT
                        C.email as email,
                        G.name as civ,
                        C.firstname as firstname,
                        C.lastname as lastname,
                        C.birthday as dob,
                        C.id_lang as lang,
                        1 as client,
                        MAX(A.phone_mobile) as sms,
                        MAX(A.phone) as phone,
                        A.company as company,
                        A.postcode as postcode,
                        GROUP_CONCAT(DISTINCT(C.id_shop_group)) as groupId, 
                        GROUP_CONCAT(DISTINCT(C.id_shop)) as storeId,
                        COALESCE(
                            GROUP_CONCAT(DISTINCT(CG.id_group)), 
                            GROUP_CONCAT(DISTINCT(C.id_default_group))
                            ) as defaultStoreId,
                        CNT.call_prefix as prefix
                    FROM 
                        '._DB_PREFIX_.'customer as C 
                    LEFT JOIN '._DB_PREFIX_.'address as A 
                        ON C.id_customer = A.id_customer 
                        AND A.date_upd = (
                                SELECT MAX(A2.date_upd)
                                FROM '._DB_PREFIX_.'address as A2
                                WHERE A2.id_customer = A.id_customer
                            )
                    LEFT JOIN '._DB_PREFIX_.'country as CNT 
                        ON A.id_country = CNT.id_country
                    LEFT JOIN '._DB_PREFIX_.'gender_lang as G 
                        ON G.id_gender = C.id_gender 
                        AND G.id_lang = C.id_lang
                    LEFT JOIN '._DB_PREFIX_.'customer_group as CG 
                        ON CG.id_customer = C.id_customer
                    WHERE
                        C.newsletter = 1
                        '.$whereCondition.' 
                    GROUP BY C.email';

        $registeredContacts = Db::getInstance()->ExecuteS($query);
        $totalCount = 0;
        foreach ($registeredContacts as $contact) {
            $phone = !empty($contact['sms']) ? $contact['sms'] : $contact['phone'];
            $mobileNumber = !empty($phone) ? $this->checkMobileNumber($phone, $contact['prefix']) : '';
            $customer = array(
                $alias[$lang]['email'] => $contact['email'],
                $alias[$lang]['civ'] => $contact['civ'],
                $alias[$lang]['firstname'] => $contact['firstname'],
                $alias[$lang]['lastname'] => $contact['lastname'],
                $alias[$lang]['dob'] => ($contact['dob'] > 0) ? date($dateFormat, strtotime($contact['dob'])) : '',
                $alias[$lang]['lang'] => !empty($contact['lang']) ? Language::getIsoById((int) $contact['lang']) : '',
                $alias[$lang]['client'] => 1,
                $alias[$lang]['sms'] => $mobileNumber,
                $alias[$lang]['groupId'] => empty($contact['groupId']) ? '1' : $contact['groupId'],
                $alias[$lang]['storeId'] => empty($contact['storeId']) ? '1' : $contact['storeId'],
                $alias[$lang]['defaultStoreId'] => $contact['defaultStoreId'],
                $alias[$lang]['company'] => $contact['company'],
                $alias[$lang]['postcode'] => $contact['postcode']
            );
            fputcsv($handle, $customer, ';');
            ++$totalCount;
        }

        fclose($handle);

        return $totalCount;
    }

    /**
     * Resets the default SMTP settings for PrestaShop.
     */
    public function resetConfigSendinSmtp($id_shop_group = null, $id_shop = null)
    {
        if ($id_shop === null) {
            $id_shop = $this->id_shop;
        }
        if ($id_shop_group === null) {
            $id_shop_group = $this->id_shop_group;
        }

        Configuration::updateValue('Sendin_Api_Smtp_Status', 0, '', $id_shop_group, $id_shop);
        Configuration::updateValue('PS_MAIL_METHOD', 1, '', $id_shop_group, $id_shop);
        Configuration::updateValue('PS_MAIL_SERVER', '', '', $id_shop_group, $id_shop);
        Configuration::updateValue('PS_MAIL_USER', '', '', $id_shop_group, $id_shop);
        Configuration::updateValue('PS_MAIL_PASSWD', '', '', $id_shop_group, $id_shop);
        Configuration::updateValue('PS_MAIL_SMTP_ENCRYPTION', '', '', $id_shop_group, $id_shop);
        Configuration::updateValue('PS_MAIL_SMTP_PORT', 25, '', $id_shop_group, $id_shop);
    }

    /**
     * This method is called when the user sets the API key and hits the submit button.
     * It adds the necessary configurations for Sendinblue in PrestaShop which allows
     * PrestaShop to use the Sendinblue settings.
     */
    public function postProcessConfiguration($id_shop_group, $id_shop)
    {
        $result_smtp = $this->trackingResult($id_shop_group, $id_shop);

        // If Sendinsmtp activation, let's configure
        if ($result_smtp['relay_data']['status'] == 'enabled') {
            Configuration::updateValue('PS_MAIL_USER', $result_smtp['relay_data']['data']['username'], '', $id_shop_group, $id_shop);
            Configuration::updateValue('PS_MAIL_PASSWD', $result_smtp['relay_data']['data']['password'], '', $id_shop_group, $id_shop);

            // Test configuration
            $config = array('server' => $result_smtp['relay_data']['data']['relay'], 'port' => $result_smtp['relay_data']['data']['port'], 'protocol' => 'off');

            Configuration::updateValue('PS_MAIL_METHOD', 2, '', $id_shop_group, $id_shop);
            Configuration::updateValue('PS_MAIL_SERVER', $config['server'], '', $id_shop_group, $id_shop);
            Configuration::updateValue('PS_MAIL_SMTP_ENCRYPTION', $config['protocol'], '', $id_shop_group, $id_shop);
            Configuration::updateValue('PS_MAIL_SMTP_PORT', $config['port'], '', $id_shop_group, $id_shop);
            Configuration::updateValue('Sendin_Api_Smtp_Status', 1, '', $id_shop_group, $id_shop);

            return $this->l('Setting updated');
        } else {
            $this->resetConfigSendinSmtp();

            return $this->l('Your SMTP account is not activated and therefore you can\'t use Sendinblue SMTP. For more informations
, please contact our support to: contact@sendinblue.com');
        }
    }

    /**
     * This method is called when the user sets the OrderSms and hits the submit button.
     * It adds the necessary configurations for Sendinblue in PrestaShop which allows
     * PrestaShop to use sms service the Sendinblue settings.
     */
    public function saveSmsOrder()
    {
        // If Sendinsmtp activation, let's configure
        $sender_order = Tools::getValue('sender_order');
        $sender_order_message = Tools::getValue('sender_order_message');

        if ($sender_order != '' && $sender_order_message != '') {
            Configuration::updateValue('Sendin_Sender_Order', Tools::getValue('sender_order'), '', $this->id_shop_group, $this->id_shop);
            Configuration::updateValue('Sendin_Sender_Order_Message', Tools::getValue('sender_order_message'), '', $this->id_shop_group, $this->id_shop);

            return $this->redirectPage($this->l('Setting updated'), 'SUCCESS');
        }
    }

    /**
     * This method is called when the user want notification after having few credit.
     * It adds the necessary configurations for Sendinblue in PrestaShop which allows.
     */
    public function sendSmsNotify()
    {
        Configuration::updateValue('Sendin_Notify_Value', Tools::getValue('sendin_notify_value'), '', $this->id_shop_group, $this->id_shop);
        Configuration::updateValue('Sendin_Notify_Email', Tools::getValue('sendin_notify_email'), '', $this->id_shop_group, $this->id_shop);

        return $this->redirectPage($this->l('Setting updated'), 'SUCCESS');
    }

    /**
     * This method is called when the user test order  Sms and hits the submit button.
     */
    public function sendOrderTestSms($sender, $message, $number, $iso_code)
    {
        $arr = array();
        $charone = Tools::substr($number, 0, 1);
        $chartwo = Tools::substr($number, 0, 2);
        if ($charone == '0' && $chartwo == '00') {
            $number = $number;
        }
        $result_code = Db::getInstance()->getRow('SELECT id_lang, lastname, firstname  FROM '._DB_PREFIX_.'employee');
        $civility = $this->l('Mr./Ms./Miss');
        $total_to_pay = rand(10, 1000);
        $total_pay = $total_to_pay.'.00 '.$iso_code;
        $firstname = $result_code['firstname'];
        $lastname = $result_code['lastname'];
        if ($result_code['id_lang'] == 1) {
            $ord_date = date('m/d/Y');
        } else {
            $ord_date = date('d/m/Y');
        }
        $characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

        $ref_num = '';
        for ($i = 0; $i < 9; ++$i) {
            $ref_num .= $characters[rand(0, Tools::strlen($characters) - 1)];
        }

        $civility_data = str_replace('{civility}', $civility, $message);
        $fname = str_replace('{first_name}', $firstname, $civility_data);
        $lname = str_replace('{last_name}', $lastname."\r\n", $fname);
        $product_price = str_replace('{order_price}', $total_pay, $lname);
        $order_date = str_replace('{order_date}', $ord_date."\r\n", $product_price);
        $msgbody = str_replace('{order_reference}', $ref_num, $order_date);

        $arr['to'] = $number;
        $arr['from'] = $sender;
        $arr['text'] = $msgbody;
        $arr['type'] = 'transactional';

        $result = $this->sendSmsApi($arr);

        if ($result == 'OK') {
            return true;
        } else {
            return false;
        }
    }

    /**
     * This method is called when the user test Shipment  Sms and hits the submit button.
     */
    public function sendShipmentTestSms($sender, $message, $number, $iso_code)
    {
        $arr = array();
        $charone = Tools::substr($number, 0, 1);
        $chartwo = Tools::substr($number, 0, 2);

        if ($charone == '0' && $chartwo == '00') {
            $number = $number;
        }

        $result_code = Db::getInstance()->getRow('SELECT id_lang, lastname, firstname  FROM '._DB_PREFIX_.'employee');
        $civility = $this->l('Mr./Ms./Miss');
        $total_to_pay = rand(10, 1000);
        $total_pay = $total_to_pay.'.00 '.$iso_code;
        $firstname = $result_code['firstname'];
        $lastname = $result_code['lastname'];
        if ($result_code['id_lang'] == 1) {
            $ord_date = date('m/d/Y');
        } else {
            $ord_date = date('d/m/Y');
        }

        $characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $ref_num = '';
        for ($i = 0; $i < 9; ++$i) {
            $ref_num .= $characters[rand(0, Tools::strlen($characters) - 1)];
        }

        $civility_data = str_replace('{civility}', $civility, $message);
        $fname = str_replace('{first_name}', $firstname, $civility_data);
        $lname = str_replace('{last_name}', $lastname."\r\n", $fname);
        $product_price = str_replace('{order_price}', $total_pay, $lname);
        $order_date = str_replace('{order_date}', $ord_date."\r\n", $product_price);
        $msgbody = str_replace('{order_reference}', $ref_num, $order_date);

        $arr['to'] = $number;
        $arr['from'] = $sender;
        $arr['text'] = $msgbody;
        $arr['type'] = 'transactional';
        $result = $this->sendSmsApi($arr);

        if ($result == 'OK') {
            return true;
        } else {
            return false;
        }
    }

    /**
     * This method is called when the user sets the Shiping Sms and hits the submit button.
     * It adds the necessary configurations for Sendinblue in PrestaShop which allows
     * PrestaShop to use sms service the Sendinblue settings.
     */
    public function saveSmsShiping()
    {
        $sender_shipment = Tools::getValue('sender_shipment');
        $sender_shipment_message = Tools::getValue('sender_shipment_message');

        if ($sender_shipment != '' && $sender_shipment_message != '') {
            Configuration::updateValue('Sendin_Sender_Shipment', $sender_shipment, '', $this->id_shop_group, $this->id_shop);
            Configuration::updateValue('Sendin_Sender_Shipment_Message', $sender_shipment_message, '', $this->id_shop_group, $this->id_shop);

            return $this->redirectPage($this->l('Setting updated'), 'SUCCESS');
        }
    }

    /**
     * This method is called when the user test Campaign  Sms and hits the submit button.
     */
    public function sendTestSmsCampaign($sender, $message, $number)
    {
        $charone = Tools::substr($number, 0, 1);
        $chartwo = Tools::substr($number, 0, 2);

        if ($charone == '0' && $chartwo == '00') {
            $number = $number;
        }

        $result_code = Db::getInstance()->getRow('SELECT id_lang, lastname, firstname  FROM '._DB_PREFIX_.'employee');
        $civility = $this->l('Mr./Ms./Miss');
        $firstname = $result_code['firstname'];
        $lastname = $result_code['lastname'];
        $civility_data = str_replace('{civility}', $civility, $message);
        $fname = str_replace('{first_name}', $firstname, $civility_data);
        $msgbody = str_replace('{last_name}', $lastname."\r\n", $fname);
        $arr = array();
        $arr['to'] = $number;
        $arr['from'] = $sender;
        $arr['text'] = $msgbody;
        $arr['type'] = 'transactional';
        $result = $this->sendSmsApi($arr);

        if ($result === 'OK') {
            return true;
        } else {
            return false;
        }
    }

    /**
     * This method is called when the user sets the Campaign Sms and hits the submit button.
     * It adds the necessary configurations for Sendin in PrestaShop which allows
     * PrestaShop to use sms service the Sendinblue settings.
     */
    public function sendSmsCampaign()
    {
        $sendin_sms_choice = Tools::getValue('Sendin_Sms_Choice');

        if ($sendin_sms_choice == 1) {
            $this->singleChoiceCampaign();
        } elseif ($sendin_sms_choice == 0) {
            $this->multipleChoiceCampaign();
        } else {
            $this->multipleChoiceSubCampaign();
        }
    }

    /**
     * This method is called when the user sets the Campaign single Choic eCampaign and hits the submit button.
     */
    public function singleChoiceCampaign()
    {
        $sender_campaign = Tools::getValue('sender_campaign');
        $sender_campaign_number = Tools::getValue('singlechoice');
        $sender_campaign_message = Tools::getValue('sender_campaign_message');
        if (isset($sender_campaign) && $sender_campaign == '') {
            return $this->redirectPage($this->l('Please fill the sender field'), 'ERROR');
        } elseif ($sender_campaign_number == '') {
            return $this->redirectPage($this->l('Please fill the message field'), 'ERROR');
        } elseif ($sender_campaign_message == '') {
            return $this->redirectPage($this->l('Please fill the message field'), 'ERROR');
        } else {
            $arr = array();
            $arr['to'] = $sender_campaign_number;
            $arr['from'] = $sender_campaign;
            $arr['text'] = $sender_campaign_message;
            $arr['type'] = 'transactional';
            $result = $this->sendSmsApi($arr);
            if ($result === 'OK') {
                return $this->redirectPage($this->l('Message has been sent successfully'), 'SUCCESS');
            } else {
                return $this->redirectPage($this->l('Message has not been sent successfully'), 'ERROR');
            }
        }
    }

    /**
     * This method is called when the user sets the Campaign multiple Choic eCampaign and hits the submit button.
     */
    public function multipleChoiceCampaign()
    {
        $sender_campaign = Tools::getValue('sender_campaign');
        $sender_campaign_message = Tools::getValue('sender_campaign_message');

        if ($sender_campaign != '' && $sender_campaign_message != '') {
            $arr = array();
            $arr['from'] = $sender_campaign;

            $response = $this->getMobileNumber();
            foreach ($response as $value) {
                if (!empty($value['phone_mobile']) || !empty($value['phone'])) {
                    $result = Db::getInstance()->getRow('SELECT `call_prefix` FROM '._DB_PREFIX_.'country WHERE `id_country` = \''.(int) $value['id_country'].'\'');
                    $sms_data = !empty($value['phone_mobile']) ? $value['phone_mobile'] : $value['phone'];
                    $number = $this->checkMobileNumber($sms_data, (!empty($result['call_prefix']) ? $result['call_prefix'] : ''));
                    $first_name = (isset($value['firstname'])) ? $value['firstname'] : '';
                    $last_name = (isset($value['lastname'])) ? $value['lastname'] : '';
                    $customer_result = Db::getInstance()->ExecuteS('SELECT id_gender, id_lang,firstname,lastname FROM '._DB_PREFIX_.'customer WHERE `id_customer` = '.(int) $value['id_customer']);

                    if (Tools::strtolower($first_name) === Tools::strtolower($customer_result[0]['firstname']) && Tools::strtolower($last_name) === Tools::strtolower($customer_result[0]['lastname'])) {
                        $civility_value = (isset($customer_result[0]['id_gender'])) ? $customer_result[0]['id_gender'] : '';
                    } else {
                        $civility_value = '';
                    }

                    if (!empty($civility_value) && !empty($customer_result[0]['id_lang'])) {
                        $gender_name = Db::getInstance()->getRow('SELECT `name` FROM '._DB_PREFIX_.'gender_lang WHERE  `id_lang` = \''.pSQL($customer_result[0]['id_lang']).'\' AND `id_gender` = \''.pSQL($civility_value).'\'');
                        $civility = !empty($gender_name['name']) ? $gender_name['name'] : '';
                    } else {
                        $civility = '';
                    }

                    $civility_data = str_replace('{civility}', $civility, $sender_campaign_message);
                    $fname = str_replace('{first_name}', $first_name, $civility_data);
                    $lname = str_replace('{last_name}', $last_name."\r\n", $fname);
                    $arr['text'] = $lname;
                    $arr['to'] = $number;
                    $arr['type'] = 'transactional';
                    $this->sendSmsApi($arr);
                }
            }
        }

        return $this->redirectPage($this->l('Message has been sent successfully'), 'SUCCESS');
    }

    /**
     * This method is called when the user sets the Campaign multiple Choic eCampaign and hits subscribed user the submit button.
     */
    public function multipleChoiceSubCampaign()
    {
        $sender_campaign = Tools::getValue('sender_campaign');
        $sender_campaign_message = Tools::getValue('sender_campaign_message');
        $schedule_month = Tools::getValue('sib_datetimepicker');
        $schedule_hour = Tools::getValue('hour');
        $schedule_minute = Tools::getValue('minute');
        if ($schedule_hour < 10) {
            $schedule_hour = '0'.$schedule_hour;
        }
        if ($schedule_minute < 10) {
            $schedule_minute = '0'.$schedule_minute;
        }

        $schedule_time = $schedule_month.' '.$schedule_hour.':'.$schedule_minute.':00';

        $current_time = date('Y-m-d H:i:s', time() + 300);
        $currenttm = strtotime($current_time);
        $scheduletm = strtotime($schedule_time);

        if (isset($sender_campaign) && $sender_campaign == '') {
            return $this->redirectPage($this->l('Please fill the sender field'), 'ERROR');
        } elseif ($schedule_time == '' || $scheduletm < $currenttm) {
            return $this->redirectPage($this->l('Scheduled date may not be prior to the current date'), 'ERROR');
        } elseif ($sender_campaign_message == '') {
            return $this->redirectPage($this->l('Please fill the message field'), 'ERROR');
        }
        if ($sender_campaign != '' && $sender_campaign_message != '') {
            $camp_name = 'SMS_'.date('Ymd');
            $key = Configuration::get('Sendin_Api_Key', '', $this->id_shop_group, $this->id_shop);
            if ($key == '') {
                return false;
            }

            $first_name = '{NAME}';
            $last_name = '{SURNAME}';
            $civility = '{CIV}';

            $civility_data = str_replace('{civility}', $civility, $sender_campaign_message);
            $fname = str_replace('{first_name}', $first_name, $civility_data);
            $content = str_replace('{last_name}', $last_name."\r\n", $fname);
            $list_id = Configuration::get('Sendin_Selected_List_Data', '', $this->id_shop_group, $this->id_shop);

            $list_value = explode('|', $list_id);
            $mailin = $this->createObjMailin();
            $data = array('name' => $camp_name,
            'sender' => $sender_campaign,
            'content' => $content,
            'listid' => $list_value,
            'scheduled_date' => $schedule_time,
            'send_now' => 0,
            );
            $camp_responce = $mailin->createSmsCampaign($data);

            if ($camp_responce['code'] == 'failure') {
                return $this->redirectPage($this->l($camp_responce['message']), 'ERROR');
            }
        }

        return $this->redirectPage($this->l($camp_responce['message']), 'SUCCESS');
    }

    /**
     *  This method is used to fetch all users from the default customer table to list
     * them in the Sendinblue PS plugin.
     */
    public function getMobileNumber()
    {
        $customer_data = $this->getAllCustomers();
        $address_mobilephone = array();
        foreach ($customer_data as $customer_detail) {
            $temp = 0;
            if (count($customer_detail) > 0 && !empty($customer_detail['id_customer'])) {
                $id_customer = $customer_detail['id_customer'];
                $customer = new CustomerCore((int) $id_customer);
                if (Validate::isLoadedObject($customer)) {
                    $customer_address = $customer->getAddresses((int) $this->context->language->id);
                }

                // Check if user have address data
                if ($customer_address && count($customer_address) > 0) {
                    // Code to get latest phone number of logged in user
                    $count_address = count($customer_address);
                    for ($i = $count_address; $i >= 0; --$i) {
                        foreach ($customer_address as $select_address) {
                            if ($temp < $select_address['date_upd'] && (!empty($select_address['phone_mobile']) || !empty($select_address['phone']))) {
                                $temp = $select_address['date_upd'];
                                $address_mobilephone[$select_address['id_customer']] = $select_address;
                            }
                        }
                    }
                }
            }
        }

        return $address_mobilephone;
    }

    /**
     *  This method is used to fetch all subsribed users from the default customer table to list
     * them in the Sendinblue PS plugin.
     */
    public function geSubstMobileNumber()
    {
        $customer_data = $this->getAllCustomers();
        $address_mobilephone = array();
        foreach ($customer_data as $customer_detail) {
            $temp = 0;
            if (count($customer_detail) > 0 && !empty($customer_detail['id_customer']) && $customer_detail['newsletter_date_add'] > 0) {
                $id_customer = $customer_detail['id_customer'];
                $customer = new CustomerCore((int) $id_customer);
                if (Validate::isLoadedObject($customer)) {
                    $customer_address = $customer->getAddresses((int) $this->context->language->id);
                }

                // Check if user have address data
                if ($customer_address && count($customer_address) > 0) {
                    // Code to get latest phone number of logged in user
                    $count_address = count($customer_address);
                    for ($i = $count_address; $i >= 0; --$i) {
                        foreach ($customer_address as $select_address) {
                            if ($temp < $select_address['date_upd'] && (!empty($select_address['phone_mobile']) || !empty($select_address['phone']))) {
                                $temp = $select_address['date_upd'];
                                $address_mobilephone[$select_address['id_customer']] = $select_address;
                            }
                        }
                    }
                }
            }
        }

        return $address_mobilephone;
    }

    /**
     * Send SMS from Sendinblue.
     */
    public function sendSmsApi($array)
    {
        $mailin = $this->createObjMailin();
        $data = array('to' => $array['to'],
            'from' => $array['from'],
            'text' => $array['text'],
            'type' => $array['type'],
            'source' => 'api',
            'plugin' => 'sendinblue-prestashop1.7-plugin',
        );

        $data_resp = $mailin->sendSms($data);
        if (isset($data_resp['code']) && $data_resp['code'] === 'success') {
            return 'OK';
        } else {
            return 'KO';
        }
    }

    /**
     * show  SMS  credit from Sendinblue.
     */
    public function getSmsCredit($id_shop_group = null, $id_shop = null)
    {
        if ($id_shop === null) {
            $id_shop = $this->id_shop;
        }

        if ($id_shop_group === null) {
            $id_shop_group = $this->id_shop_group;
        }

        $mailin = $this->createObjMailin();
        $data_resp = $mailin->getAccount();
        foreach ($data_resp['data'] as $account_val) {
            if ($account_val['plan_type'] == 'SMS') {
                return $account_val['credits'];
            }
        }
    }

    public function sibLogo()
    {
        $this->sib_logo = '<svg viewBox="0 0 512 512" style="width:16px !important; height:16px !important; display:inline !important;padding: 0 6px 0 0 !important;vertical-align: middle !important;">
                <title>Sendinblue</title>
                    <path fill="#ffffff" d="M473.722 127.464c-18.027-31.901-48.272-55.215-83.865-64.647a142.257 142.257 0 0 0-22.471-3.885C342.065 22.06 300.026 0 255.08 0c-44.944 0-86.983 22.06-112.304 58.932C98.157 63.142 58.4 88.68 36.24 127.365a139.082 139.082 0 0 0-5.316 127.402 139.674 139.674 0 0 0 5.316 127.104c18.053 31.879 48.287 55.184 83.865 64.647a130.245 130.245 0 0 0 22.973 3.885c25.261 36.958 67.322 59.087 112.304 59.087 44.983 0 87.043-22.13 112.305-59.087 44.638-4.161 84.414-29.71 106.536-68.433a138.588 138.588 0 0 0 5.317-127.402 139.379 139.379 0 0 0-5.818-127.104zm-33.861 20.14c10.8 18.89 14.88 40.769 11.6 62.186a140.27 140.27 0 0 0-24.015-17.568c-31.777-18.423-69.787-23.497-105.428-14.074-21.674 5.722-41.612 16.51-58.107 31.442-6.093-38.506 12.271-76.783 46.404-96.722 21.403-12.61 47.09-16.21 71.235-9.981 24.815 6.533 45.86 22.673 58.31 44.717zM254.813 44.955c21.153.117 41.612 7.52 57.892 20.948a140.215 140.215 0 0 0-27.272 12.04c-50.843 30.193-76.605 89.302-63.996 146.832-35.486-14.33-58.666-48.648-58.581-86.729-.22-50.807 40.858-92.26 91.957-92.797v-.294zM71.075 149.893c10.763-18.148 27.595-32.249 47.752-40.003a134.308 134.308 0 0 0-3.455 29.342c-.174 58.952 39.193 111.274 97.433 129.495-10.376 8.36-22.506 14.466-35.56 17.898-24.037 6.26-49.683 2.91-71.118-9.291-45.903-26.087-61.706-82.724-35.56-127.441h.508zm-.458 211.901c-10.82-18.85-14.87-40.716-11.503-62.094a144.971 144.971 0 0 0 23.922 17.57c21.096 12.2 45.136 18.646 69.627 18.668a142.451 142.451 0 0 0 35.831-4.692c21.69-5.7 41.64-16.493 58.125-31.446 6.072 38.511-12.239 76.793-46.316 96.835-21.417 12.59-47.102 16.188-71.256 9.983-25.019-6.331-46.312-22.417-58.939-44.524l.51-.3zm185.12 102.546c-21.194-.131-41.677-7.601-57.917-21.121a133.872 133.872 0 0 0 27.284-11.832c50.865-30.16 76.638-89.204 64.024-146.672 41.267 16.713 65.055 59.88 56.975 103.392-8.08 43.51-45.809 75.421-90.366 76.428v-.195zm174.56-104.781c-10.365 18.23-26.73 32.368-46.35 40.041a132.315 132.315 0 0 0 3.353-29.37c.138-58.999-38.063-111.355-94.575-129.62a91.453 91.453 0 0 1 34.516-17.915c23.401-6.086 48.285-2.557 69.033 9.79 44.263 26.268 59.358 82.778 34.024 127.368v-.294z"/>
                </svg>';
    }

    /**
     * Method is called by PrestaShop by default everytime the module is loaded. It checks for some
     * basic settings and extensions like CURL and and allow_url_fopen to be enabled in the server.
     */
    public function getContent()
    {
        $this->_html .= $this->addCss();
        $this->_html .= $this->sibLogo();

        // send test mail to check if SMTP is working or not.
        if (Tools::isSubmit('sendTestMail')) {
            $this->sendMailProcess();
        }

        if (Tools::isSubmit('sender_order_save')) {
            $this->saveSmsOrder();
        }

        if (Tools::isSubmit('sender_shipment_save')) {
            $this->saveSmsShiping();
        }

        // send test sms to check if SMS is working or not.
        if (Tools::isSubmit('sender_campaign_save')) {
            $this->sendSmsCampaign();
        }

        // send test sms to check if SMS is working or not.
        if (Tools::isSubmit('notify_sms_mail')) {
            $this->sendSmsNotify();
        }

        // automation activation.
        if (Tools::isSubmit('submitautomation')) {
            $this->automationMsg();
        }

        // abandoned activation.
        if (Tools::isSubmit('submitabandoned')) {
            $this->abandonedMsg();
        }
        // update SMTP configuration in PrestaShop
        if (Tools::isSubmit('smtpupdate')) {
            Configuration::updateValue('Sendin_Smtp_Status', Tools::getValue('smtpmail'), '', $this->id_shop_group, $this->id_shop);
            $this->postProcessConfiguration();
        }

        // Import old user in sendinblue by csv
        if (Tools::isSubmit('submitUpdateImport')) {
            $email_value = $this->autoSubscribeAfterInstallation();
            if ($email_value > 0) {
                $list_value = Configuration::get('Sendin_Selected_List_Data', '', $this->id_shop_group, $this->id_shop);
                $list_id = explode('|', $list_value);

                $mailin = $this->createObjMailin();
                $file_name = Configuration::get('Sendin_CSV_File_Name');
                $data = array('url' => $this->local_path.$this->name.'/csv/'.$file_name.'.csv',
                    'listids' => $list_id,
                    'notify_url' => $this->local_path.'sendinblue/EmptyImportSubUsersFile.php?token='.Tools::encrypt(Configuration::get('PS_SHOP_NAME')),
                );
                $res_value = $mailin->importUsers($data);
                $file_path = _PS_MODULE_DIR_.'sendinblue/csv/'.$file_name.'.csv';
                unlink($file_path);
                Configuration::updateValue('Sendin_import_user_status', 1, '', $this->id_shop_group, $this->id_shop);
                if ($res_value['code'] != 'success') {
                    $this->redirectPage($this->l('Old subscribers not imported successfully, please click on Import Old Subscribers button to import them again'), 'ERROR');
                }
            }

            return $this->redirectPage($this->l('Setting updated'), 'SUCCESS');
        }

        if (Tools::isSubmit('submitForm2')) {
            $this->saveTemplateValue();

            // update template id configuration in PrestaShop.
            $this->subscribeSettingPostProcess();
        }
        if (Tools::isSubmit('submitUpdate')) {
            $this->apiKeyPostProcessConfiguration();
        }

        if (!empty($this->context->cookie->display_message) && !empty($this->context->cookie->display_message_type)) {
            if ($this->context->cookie->display_message_type == 'ERROR') {
                $this->_html .= $this->displayError($this->l($this->context->cookie->display_message));
            } else {
                $this->_html .= $this->displayConfirmation($this->l($this->context->cookie->display_message));
            }

            unset($this->context->cookie->display_message, $this->context->cookie->display_message_type);
        }
        $this->displayForm();

        return $this->_html;
    }

    /**
     * This method is called when the user sets the subscribe setting and hits the submit button.
     * It adds the necessary configurations for Sendinblue in PrestaShop which allows
     * PrestaShop to use the Sendinblue settings.
     */
    public function subscribeSettingPostProcess()
    {
        $this->postValidationFormSync();

        if (!count($this->post_errors)) {
            if (Configuration::get('Sendin_Subscribe_Setting', '', $this->id_shop_group, $this->id_shop) == 1) {
                $display_list = Tools::getValue('display_list');
                if (!empty($display_list) && isset($display_list)) {
                    $display_list = implode('|', $display_list);
                    Configuration::updateValue('Sendin_Selected_List_Data', $display_list, '', $this->id_shop_group, $this->id_shop);
                }
            } else {
                Configuration::updateValue('Sendin_Subscribe_Setting', 0, '', $this->id_shop_group, $this->id_shop);
            }
        } else {
            $err_msg = '';

            foreach ($this->post_errors as $err) {
                $err_msg .= $err;
            }

            $this->redirectPage($this->l($err_msg), 'ERROR');
        }
        $this->redirectPage($this->l('Successfully updated'), 'SUCCESS');
    }

    /**
     * This method is called when the user send mail .
     */
    public function sendMailProcess()
    {
        $id_shop = !empty($this->id_shop) ? $this->id_shop : 'NULL';
        $id_shop_group = !empty($this->id_shop_group) ? $this->id_shop_group : 'NULL';

        $title = $this->l('[Sendinblue SMTP] test email');
        $smtp_result = Tools::jsonDecode(Configuration::get('Sendin_Smtp_Result', '', $id_shop_group, $id_shop));
        if ($id_shop_group = 'NULL' && $id_shop === 'NULL' && empty($smtp_result)) {
            $id_shop_group = 1;
            $id_shop = 1;
            $smtp_result = Tools::jsonDecode(Configuration::get('Sendin_Smtp_Result', '', $id_shop_group, $id_shop));
        }
        if ($smtp_result->relay_data->status == 'enabled') {
            $data_sendinblue_smtpstatus = $this->realTimeSmtpResult();
            if ($data_sendinblue_smtpstatus['relay_data']['status'] == 'enabled') {
                $test_email = Tools::getValue('testEmail');
                if ($this->sendMail($test_email, $title)) {
                    $this->redirectPage($this->l('Mail sent'), 'SUCCESS');
                } else {
                    $this->redirectPage($this->l('Mail not sent'), 'ERROR');
                }
            } else {
                $this->redirectPage($this->l('Your SMTP account is not activated and therefore you can\'t use Sendinblue SMTP. For more informations, Please contact our support to: contact@sendinblue.com'), 'ERROR');
            }
        } else {
            $this->redirectPage($this->l('Your SMTP account is not activated and therefore you can\'t use Sendinblue SMTP. For more informations, Please contact our support to: contact@sendinblue.com'), 'ERROR');
        }
    }

    /**
     *This method is called when the user sets the API key and hits the submit button.
     *It adds the necessary configurations for Sendinblue in PrestaShop which allows
     *PrestaShop to use the Sendinblue settings.
     */
    public function apiKeyPostProcessConfiguration()
    {
        // endif User put new key after having old key
        $this->postValidation();

        if (!count($this->post_errors)) {
            //If the API key is valid, we activate the module, otherwise we deactivate it.
            $status = trim(Tools::getValue('status'));
            if (isset($status)) {
                Configuration::updateValue('Sendin_Api_Key_Status', $status, '', $this->id_shop_group, $this->id_shop);
            }

            if ($status == 1) {
                $apikey = trim(Tools::getValue('apikey'));
                $row_list = $this->getResultListValue($apikey);

                if ($row_list['code'] == 'failure' && $row_list['message'] == 'Key Not Found In Database') {
                    //We reset all settings  in case the API key is invalid.
                    Configuration::updateValue('Sendin_Api_Key_Status', 0, '', $this->id_shop_group, $this->id_shop);
                    $this->resetDataBaseValue();
                    $this->resetConfigSendinSmtp($this->id_shop_group, $this->id_shop);
                    $this->redirectPage($this->l('API key is invalid.'), 'ERROR');
                } else {
                    //If a user enters a new API key, we remove all records that belongs to the
                    //old API key.
                    $old_api_key = trim(Configuration::get('Sendin_Api_Key', '', $this->id_shop_group, $this->id_shop));

                    // Old key
                    if ($apikey != $old_api_key) {
                        // Reset data for old key
                        $id_shop_group = !empty($this->id_shop_group) ? $this->id_shop_group : 'NULL';
                        $id_shop = !empty($this->id_shop) ? $this->id_shop : 'NULL';
                        if ($id_shop_group === 'NULL' && $id_shop === 'NULL') {
                            Configuration::deleteByName('Sendin_First_Request');
                            Configuration::deleteByName('Sendin_Subscribe_Setting');
                            Configuration::deleteByName('Sendin_Tracking_Status');
                            Configuration::deleteByName('Sendin_Smtp_Result');
                            Configuration::deleteByName('Sendin_Api_Key');
                            Configuration::deleteByName('Sendin_Api_Key_Status');
                            Configuration::deleteByName('Sendin_Api_Smtp_Status');
                            Configuration::deleteByName('Sendin_Selected_List_Data');
                            Configuration::deleteByName('Sendin_Confirm_Type');
                            Configuration::deleteByName('Sendin_doubleoptin_redirect');
                            Configuration::deleteByName('Sendin_Optin_Url_Check');
                            Configuration::deleteByName('Sendin_final_confirm_email');
                            Configuration::deleteByName('Sendin_optin_list_id');
                            Configuration::deleteByName('Sendin_Final_Template_Id');
                            Configuration::deleteByName('Sendin_Dubleoptin_Template_Id');
                            Configuration::deleteByName('Sendin_Abandoned_Status');
                            Configuration::deleteByName('Sendin_Automation_Key');
                            Configuration::deleteByName('Sendin_Automation_Status');
                        } else {
                            Configuration::deleteFromContext('Sendin_First_Request');
                            Configuration::deleteFromContext('Sendin_Subscribe_Setting');
                            Configuration::deleteFromContext('Sendin_Tracking_Status');
                            Configuration::deleteFromContext('Sendin_Smtp_Result');
                            Configuration::deleteFromContext('Sendin_Api_Key');
                            Configuration::deleteFromContext('Sendin_Api_Key_Status');
                            Configuration::deleteFromContext('Sendin_Api_Smtp_Status');
                            Configuration::deleteFromContext('Sendin_Selected_List_Data');
                        }
                    }

                    if (isset($apikey)) {
                        Configuration::updateValue('Sendin_Api_Key', $apikey, '', $this->id_shop_group, $this->id_shop);
                    }

                    if (isset($status)) {
                        Configuration::updateValue('Sendin_Api_Key_Status', $status, '', $this->id_shop_group, $this->id_shop);
                    }

                    $sendin_listdata = Configuration::get('Sendin_Selected_List_Data', '', $this->id_shop_group, $this->id_shop);
                    $sendin_firstrequest = Configuration::get('Sendin_First_Request', '', $this->id_shop_group, $this->id_shop);

                    if (empty($sendin_listdata) && empty($sendin_firstrequest)) {
                        $this->getOldNewsletterEmails();
                        Configuration::updateValue('Sendin_First_Request', 1, '', $this->id_shop_group, $this->id_shop);
                        Configuration::updateValue('Sendin_Subscribe_Setting', 1, '', $this->id_shop_group, $this->id_shop);
                        Configuration::updateValue('Sendin_Notify_Cron_Executed', 0, '', $this->id_shop_group, $this->id_shop);

                        //We remove the default newsletter block since we
                        //have to add the Sendin newsletter block.
                        $this->restoreBlocknewsletterBlock();

                        if (empty($old_api_key)) {
                            $this->enableSendinblueBlock();
                        }

                        $this->createFolderName();
                    }

                    //We set the default status of Sendinblue SMTP and tracking code to 0
                    $this->checkSmtpStatus();
                    Configuration::updateValue('NW_CONFIRMATION_EMAIL', 0);
                    Configuration::updateValue('NW_VERIFICATION_EMAIL', 0);
                    $this->createPsWebHook();

                    Configuration::updateValue('SENDINBLUE_CONFIGURATION_OK', true, '', $this->id_shop_group, $this->id_shop);
                    $this->redirectPage($this->l('Successfully updated'), 'SUCCESS');
                }
            }
        } else {
            $err_msg = '';

            foreach ($this->post_errors as $err) {
                $err_msg .= $err;
            }

            $this->redirectPage($this->l($err_msg), 'ERROR');
        }
    }

    /**
     * Redirect user to same page with message and message type (i.e. ERROR or SUCCESS).
     */
    private function redirectPage($msg = '', $type = 'SUCCESS')
    {
        $this->context->cookie->display_message = $msg;
        $this->context->cookie->display_message_type = $type;
        $this->context->cookie->write();

        $port = ($_SERVER['SERVER_PORT'] == '80') ? '' : (':'.$_SERVER['SERVER_PORT']);
        Tools::redirect(Tools::getShopDomainSsl(true).$port.$_SERVER['REQUEST_URI']);
        exit;
    }

    /**
     * Method to factory reset the database value.
     */
    public function resetDataBaseValue()
    {
        Configuration::updateValue('Sendin_Tracking_Status', 0, '', $this->id_shop_group, $this->id_shop);
        Configuration::updateValue('Sendin_order_tracking_Status', 0, '', $this->id_shop_group, $this->id_shop);
        Configuration::updateValue('Sendin_Api_Smtp_Status', 0, '', $this->id_shop_group, $this->id_shop);
        Configuration::updateValue('Sendin_Selected_List_Data', '', '', $this->id_shop_group, $this->id_shop);
        Configuration::updateValue('Sendin_First_Request', '', '', $this->id_shop_group, $this->id_shop);
    }

    /**
     * Checks if API key is specified or not.
     */
    private function postValidation()
    {
        $apikey = trim(Tools::getValue('apikey'));
        $status = trim(Tools::getValue('status'));

        if (empty($apikey) && $status == 1) {
            $this->post_errors[] = $this->l('API key is invalid.');
        }
    }

    /**
     * Checks if the user has selected at least one list.
     */
    private function postValidationFormSync()
    {
        $display_list = Tools::getValue('display_list');

        if (isset($display_list) && empty($display_list)) {
            $this->post_errors[] = $this->l('Please choose atleast one list.');
        }
    }

    /**
     * Once we get all the list of the user from Sendinblue, we add them in
     * multi select dropdown box.
     */
    public function parselist()
    {
        $checkbox = '';
        $row_list = $this->getResultListValue();
        $row = $row_list['data'];
        if (empty($row)) {
            return false;
        }

        $checkbox .= '<td><div class="listData"  style="text-align:left;">
        <select id="select" name="display_list[]" multiple="multiple">';

        foreach ($row as $valuearray) {
            $checkbox .= '<option value="'.(int) $valuearray['id'].'" '.$this->getSelectedvalue($valuearray['id']).' >   
            <span style="margin-left:10px;" class="'.$this->cl_version.'"> '.Tools::safeOutput($valuearray['name']).'</option>';
        }
        $checkbox .= '</select>
        <span class="toolTip listData"
        title="'.$this->l('Select the contact list where you want to save the contacts of your site PrestaShop. By default, we have created a list PrestaShop in your Sendinblue account and we have selected it').'"  >
        &nbsp;</span></div></td>';

        return '<td><label>'.$this->l('Your lists').'</label></td>'.$checkbox;
    }

    /**
     * Selects the list options that were already selected and saved by the user.
     */
    public function getSelectedvalue($value)
    {
        $result = explode('|', Configuration::get('Sendin_Selected_List_Data', '', $this->id_shop_group, $this->id_shop));
        if (in_array($value, $result)) {
            return 'selected="selected"';
        }

        return false;
    }

    /**
     * Fetches the SMTP and order tracking details.
     */
    public function trackingResult($id_shop_group = '', $id_shop = '')
    {
        if ($id_shop == '') {
            $id_shop = $this->id_shop;
        }
        if ($id_shop_group == '') {
            $id_shop_group = $this->id_shop_group;
        }

        $mailin = $this->createObjMailin();
        $data_resp = $mailin->getSmtpDetails();
        $store_db = Tools::jsonencode($data_resp['data']);
        Configuration::updateValue('Sendin_Smtp_Result', $store_db, '', $id_shop_group, $id_shop);

        return $data_resp['data'];
    }

    /**
     * Fetches the SMTP status details for send test mail.
     */
    public function realTimeSmtpResult()
    {
        $mailin = $this->createObjMailin();
        $data_resp = $mailin->getSmtpDetails();

        return $data_resp['data'];
    }

    /**
     * Checks if a folder 'PrestaShop' and a list "PrestaShop" exits in the Sendinblue account.
     * If they do not exits, this method creates them.
     */
    public function createFolderCaseTwo()
    {
        $result = array();
        $result = $this->checkFolderList();
        $list_name = 'prestashop';
        $key = Configuration::get('Sendin_Api_Key', '', $this->id_shop_group, $this->id_shop);
        if ($key == '') {
            return false;
        }
        $mailin = $this->createObjMailin();
        $data = array();
        $folder_id = $result['key'];
        $exist_list = $result['list_name'];

        if (!empty($key)) {
            $res = $this->getResultListValue();
            if ($res['code'] == 'failure' && $res['message'] == 'Key Not Found In Database') {
                return false;
            }
        }

        if ($result === false) {
            // create folder
            $data = array('name' => 'prestashop');
            $folder_res = $mailin->createFolder($data);
            $folder_id = $folder_res['data']['id'];

            // create list
            $data = array(
              'list_name' => $list_name,
              'list_parent' => $folder_id,
            );
            $list_resp = $mailin->createList($data);
            $list_id = $list_resp['data']['id'];
            Configuration::updateValue('Sendin_Selected_List_Data', trim($list_id), '', $this->id_shop_group, $this->id_shop);
        } elseif (empty($exist_list)) {
            // create list

            $data = array(
              'list_name' => $list_name,
              'list_parent' => $folder_id,
            );
            $list_resp = $mailin->createList($data);
            $list_id = !empty($list_resp['data']['id']) ? $list_resp['data']['id'] : '';
            Configuration::updateValue('Sendin_Selected_List_Data', trim($list_id), '', $this->id_shop_group, $this->id_shop);
        }
    }

    /**
     * Creates a folder with the name 'prestashop' after checking it on Sendinblue platform
     * and making sure the folder name does not exists.
     */
    public function createFolderName()
    {
        //Create the necessary attributes on the Sendinblue platform for PrestaShop
        $this->createAttributesName();

        //Check if the folder exists or not on Sendinblue platform.
        $result = $this->checkFolderList();
        if ($result === false) {
            $data = array();
            $mailin = $this->createObjMailin();
            $data = array('name' => 'prestashop');
            $folder_res = $mailin->createFolder($data);
            $folder_id = $folder_res['data']['id'];
            $exist_list = '';
        } else {
            $folder_id = $result['key'];
            $exist_list = $result['list_name'];
        }

        $this->createNewList($folder_id, $exist_list);

        // create list in Sendinblue
        //Create the partner's name i.e. PrestaShop on Sendinblue platform
        $this->partnerPrestashop();
    }

    /**
     * Creates a list by the name "prestashop" on user's Sendinblue account.
     */
    public function createNewList($response, $exist_list)
    {
        if ($exist_list != '') {
            $list_name = 'prestashop_'.date('dmY');
        } else {
            $list_name = 'prestashop';
        }

        $mailin = $this->createObjMailin();
        $data = array(
          'list_name' => $list_name,
          'list_parent' => $response,
        );
        $list_resp = $mailin->createList($data);

        //list id
        $list_id = !empty($list_resp['data']['id']) ? $list_resp['data']['id'] : '';
        Configuration::updateValue('Sendin_Selected_List_Data', trim($list_id), '', $this->id_shop_group, $this->id_shop);
    }

    /**
     * Fetches all folders and all list within each folder of the user's Sendinblue
     * account and displays them to the user.
     */
    public function checkFolderList()
    {
        $api_key = Configuration::get('Sendin_Api_Key', '', $this->id_shop_group, $this->id_shop);

        if ($api_key == '') {
            return false;
        }
        $mailin = $this->createObjMailin();
        $data_api = array('page' => 1,
          'page_limit' => 50,
        );
        $list_resp = $mailin->getFolders($data_api);

        //folder id
        $s_array = array();
        $return = false;
        if (!empty($list_resp['data']['folders'])) {
            foreach ($list_resp['data']['folders'] as $value) {
                if (Tools::strtolower($value['name']) == 'prestashop') {
                    $s_array['key'] = $value['id'];
                    $s_array['list_name'] = $value['name'];
                    if (!empty($value['lists'])) {
                        foreach ($value['lists'] as $val) {
                            if (Tools::strtolower($val['name']) == 'prestashop') {
                                $s_array['folder_name'] = $val['name'];
                            }
                        }
                    }
                }
            }

            if (count($s_array) > 0) {
                $return = $s_array;
            } else {
                $return = false;
            }
        }

        return $return;
    }

    /**
     * Method is used to add the partner's name in Sendinblue.
     * In this case its "PRESTASHOP".
     */
    public function partnerPrestashop()
    {
        $data = array();
        $mailin = $this->createObjMailin();
        $data['partner'] = 'PRESTASHOP';
        $mailin->updateMailinPartner($data);
    }

    /**
     * Create Normal, Transactional, Calculated and Global attributes and their values
     * on Sendinblue platform. This is necessary for the PrestaShop to add subscriber's details.
     */
    public function createAttributesName()
    {
        $data_attr = array();
        $transactional_attributes = array();
        $value_langauge = $this->getApiConfigValue();
        if ($value_langauge->language == 'fr') {
            $data_attr = array('CIV' => 'TEXT', 'PRENOM' => 'TEXT', 'NOM' => 'TEXT', 'DDNAISSANCE' => 'DATE', 'PS_LANG' => 'TEXT', 'SMS' => 'TEXT', 'GROUP_ID' => 'TEXT', 'STORE_ID' => 'TEXT', 'CLIENT' => 'NUMBER', 'DEFAULT_GROUP_ID' => 'TEXT', 'COMPANY' => 'TEXT','POSTCODE' => 'TEXT');
        } else {
            $data_attr = array('CIV' => 'TEXT', 'NAME' => 'TEXT', 'SURNAME' => 'TEXT', 'BIRTHDAY' => 'DATE', 'PS_LANG' => 'TEXT', 'SMS' => 'TEXT', 'GROUP_ID' => 'TEXT', 'STORE_ID' => 'TEXT', 'CLIENT' => 'NUMBER', 'DEFAULT_GROUP_ID' => 'TEXT', 'COMPANY' => 'TEXT','POSTCODE' => 'TEXT');
        }
        $transactional_attributes = array('ORDER_ID' => 'ID', 'ORDER_DATE' => 'DATE', 'ORDER_PRICE' => 'NUMBER');

        $mailin = $this->createObjMailin();
        $data = array('type' => 'normal',
        'data' => $data_attr,
        );
        $mailin->createAttribute($data);

        $data_trans = array('type' => 'transactional',
        'data' => $transactional_attributes,
        );
        $mailin->createAttribute($data_trans);

        $data_calc = array('type' => 'calculated',
        'data' => '[{ "name":"PS_LAST_30_DAYS_CA", "value":"SUM[ORDER_PRICE,ORDER_DATE,>,NOW(-30)]" }, { "name":"PS_CA_USER", "value":"SUM[ORDER_PRICE]" }, { "name":"PS_ORDER_TOTAL", "value":"COUNT[ORDER_ID]" }]', );
        $mailin->createAttribute($data_calc);
        $data_global = array('type' => 'global',
        'data' => '[{ "name":"PS_CA_LAST_30DAYS", "value":"SUM[PS_LAST_30_DAYS_CA]" }, { "name":"PS_CA_TOTAL", "value":"SUM[PS_CA_USER]"}, { "name":"PS_ORDERS_COUNT", "value":"SUM[PS_ORDER_TOTAL]"}', );
        $mailin->createAttribute($data_global);
    }

    /**
     * Unsubscribe a subscriber from Sendinblue.
     */
    public function unsubscribeByruntime($email, $id_shop_group = '', $id_shop = '')
    {
        if ($id_shop === null) {
            $id_shop = $this->id_shop;
        }
        if ($id_shop_group === null) {
            $id_shop_group = $this->id_shop_group;
        }

        if (!$this->syncSetting($id_shop_group, $id_shop)) {
            return false;
        }

        $mailin = $this->createObjMailin();
        $data = array('email' => $email,
        'blacklisted' => 1,
        );
        $mailin->createUpdateUser($data);
    }

    /**
     * Subscribe a subscriber from Sendinblue.
     */
    public function subscribeByruntime($email, $post_value = '', $list_id = '', $guest_lang = '')
    {
        $id_shop_group = !empty($this->id_shop_group) ? $this->id_shop_group : 'NULL';
        $id_shop = !empty($this->id_shop) ? $this->id_shop : 'NULL';

        if (!$this->syncSetting($id_shop_group, $id_shop)) {
            return false;
        }
        $value_langauge = $this->getApiConfigValue($id_shop_group, $id_shop);
        $civility = '';
        $fname = '';
        $lname = '';
        $mobile = '';
        $birthday = '';
        $client = 0;
        $customer_data = $this->getCustomersByEmail($email);
        $customer_value = count($customer_data);
        $customer_value = ($customer_value - 1);
        if (!empty($customer_data[0]['id_customer']) && count($customer_data) > 0) {
            for ($i = $customer_value; $i >= 0; --$i) {
                $fname = !empty($customer_data[$i]['firstname']) ? $customer_data[$i]['firstname'] : '';
                $lname = !empty($customer_data[$i]['lastname']) ? $customer_data[$i]['lastname'] : '';
                $birthday = (isset($customer_data[$i]['birthday'])) ? $customer_data[$i]['birthday'] : '';

                if ($birthday > 0) {
                    if ($value_langauge->date_format == 'dd-mm-yyyy') {
                        $birthday = date('d-m-Y', strtotime($birthday));
                    } else {
                        $birthday = date('m-d-Y', strtotime($birthday));
                    }
                }

                $civility_value = (isset($customer_data[$i]['id_gender'])) ? $customer_data[$i]['id_gender'] : '';
                if (!empty($civility_value) && !empty($customer_data[$i]['id_lang'])) {
                    $gender_name = Db::getInstance()->getRow('SELECT `name` FROM '._DB_PREFIX_.'gender_lang WHERE  `id_lang` = \''.pSQL($customer_data[$i]['id_lang']).'\' AND `id_gender` = \''.pSQL($civility_value).'\'');
                    $civility = !empty($gender_name['name']) ? $gender_name['name'] : '';
                } else {
                    $civility = '';
                }

                // Code to get address of logged in user
                $iso_code = Language::getIsoById((int) $customer_data[0]['id_lang']);

                $id_customer = $customer_data[$i]['id_customer'];
                $customer = new CustomerCore((int) $id_customer);
                if (Validate::isLoadedObject($customer)) {
                    $customer_address = $customer->getAddresses((int) $customer_data[$i]['id_lang']);
                }
                if ($customer_address && count($customer_address) > 0) {
                    // Code to get latest phone number of logged in user
                    $count_address = count($customer_address);
                    for ($j = $count_address; $j >= 0; --$j) {
                        $temp = 0;
                        foreach ($customer_address as $select_address) {
                            if ($temp < $select_address['date_upd'] && (!empty($select_address['phone_mobile']) || !empty($select_address['phone']))) {
                                $temp = $select_address['date_upd'];
                            }
                        }
                        if (!empty($select_address)) {
                            break;
                        }
                    }
                }
                if (!empty($select_address['phone_mobile']) || !empty($select_address['phone'])) {
                    $result = Db::getInstance()->getRow('SELECT `call_prefix` FROM '._DB_PREFIX_.'country WHERE `id_country` = \''.(int) $select_address['id_country'].'\'');
                    $sms_data = !empty($select_address['phone_mobile']) ? $select_address['phone_mobile'] : $select_address['phone'];
                    $mobile = $this->checkMobileNumber($sms_data, $result['call_prefix']);
                    break;
                }
            }
        }
        $attribute_data = array();
        $attribute_key = array();
        if (!empty($civility)) {
            $attribute_data[] = $civility;
            $attribute_key[] = 'CIV';
        }
        if (!empty($fname)) {
            $attribute_data[] = $fname;
            if ($value_langauge->language == 'fr') {
                $attribute_key[] = 'PRENOM';
            } else {
                $attribute_key[] = 'NAME';
            }

            $client = 1;
        }
        if (!empty($lname)) {
            $attribute_data[] = $lname;
            if ($value_langauge->language == 'fr') {
                $attribute_key[] = 'NOM';
            } else {
                $attribute_key[] = 'SURNAME';
            }
        }
        if (!empty($birthday) && $birthday > 0) {
            $attribute_data[] = $birthday;
            if ($value_langauge->language == 'fr') {
                $attribute_key[] = 'DDNAISSANCE';
            } else {
                $attribute_key[] = 'BIRTHDAY';
            }
        }
        if (!empty($iso_code)) {
            $attribute_data[] = $iso_code;
            $attribute_key[] = 'PS_LANG';
        }
        if (!empty($mobile) && $mobile > 0) {
            $attribute_data[] = $mobile;
            $attribute_key[] = 'SMS';
        }
        if (isset($id_shop_group) && !empty($email)) {
            if ($id_shop_group === null) {
                $id_shop_group = 1;
            }

            $all_group_reg = Db::getInstance()->getRow('SELECT GROUP_CONCAT(id_shop_group) as groupid FROM '._DB_PREFIX_.'customer  WHERE email = "'.pSQL($email).'" GROUP BY email');

            $all_group_unsubs = Db::getInstance()->getRow('SELECT GROUP_CONCAT(id_shop_group) as groupid FROM '._DB_PREFIX_.'sendin_newsletter  WHERE email = "'.pSQL($email).'" GROUP BY email');
            $data_first = array();
            $data_second = array();
            $data_first = explode(',', $all_group_reg['groupid']);
            $data_second = explode(',', $all_group_unsubs['groupid']);
            $value_merge = array_merge($data_first, $data_second);
            $value_group = implode(',', array_filter($value_merge));
            $attribute_data[] = $value_group;
            $attribute_key[] = 'GROUP_ID';
        }
        if (isset($id_shop) && !empty($email)) {
            if ($id_shop === null) {
                $id_shop = 1;
            }

            $all_group_reg_store = Db::getInstance()->getRow('SELECT GROUP_CONCAT(id_shop) as storeid FROM '._DB_PREFIX_.'customer  WHERE email = "'.pSQL($email).'" GROUP BY email');

            $all_group_unsubs_store = Db::getInstance()->getRow('SELECT GROUP_CONCAT(id_shop) as storeid FROM '._DB_PREFIX_.'sendin_newsletter  WHERE email = "'.pSQL($email).'" GROUP BY email');
            $data_first_store = array();
            $data_second_store = array();
            $data_first_store = explode(',', $all_group_reg_store['storeid']);
            $data_second_store = explode(',', $all_group_unsubs_store['storeid']);
            $value_merge_store = array_merge($data_first_store, $data_second_store);
            $value_store = implode(',', array_filter($value_merge_store));
            $attribute_data[] = $value_store;
            $attribute_key[] = 'STORE_ID';
        }

        $customer_id = Db::getInstance()->getRow('SELECT GROUP_CONCAT(id_customer) as custid FROM '._DB_PREFIX_.'customer  WHERE email = "'.pSQL($email).'" GROUP BY email');
        $id_value = $customer_id['custid'];
        if (!empty($id_value)) {
            $all_default_group = Db::getInstance()->getRow('SELECT GROUP_CONCAT(id_group) as groupid FROM '._DB_PREFIX_.'customer_group  WHERE id_customer IN('.$id_value.')');
            $data_all_group = explode(',', $all_default_group['groupid']);
            $data_unique = array_unique($data_all_group);
            $value_group_final = implode(',', $data_unique);

            if (!empty($value_group_final)) {
                $attribute_data[] = $value_group_final;
                $attribute_key[] = 'DEFAULT_GROUP_ID';
            }
        }

        if ($client >= 0) {
            $attribute_data[] = $client;
            $attribute_key[] = 'CLIENT';
        }

        if (!empty($guest_lang) && empty($customer_data[0]['id_customer'])) {
            $attribute_data[] = $guest_lang;
            $attribute_key[] = 'PS_LANG';
        }

        $Sendin_Confirm_Type = Configuration::get('Sendin_Confirm_Type', '', $id_shop_group, $id_shop);
        if (empty($list_id)) {
            if (isset($Sendin_Confirm_Type) && $Sendin_Confirm_Type === 'doubleoptin') {
                $list_id = Configuration::get('Sendin_optin_list_id', '', $id_shop_group, $id_shop);
                if (!empty($guest_lang) && empty($customer_data[0]['id_customer'])) {
                    $attribute_data[] = 2;
                    $attribute_key[] = 'DOUBLE_OPT-IN';
                }
            } else {
                $list_id = Configuration::get('Sendin_Selected_List_Data', '', $id_shop_group, $id_shop);
            }
        }

        $mailin = $this->createObjMailin();

        if ($post_value == 0 || $post_value == 1) {
            $blacklisted_value = 0;
        }

        $attr_key_val = array();
        $i = 0;
        foreach ($attribute_key as $val) {
            $attr_key_val[$val] = $attribute_data[$i];
            $i = $i + 1;
        }

        $sib_list_id = explode('|', $list_id);
        $data = array('email' => $email,
        'attributes' => $attr_key_val,
        'blacklisted' => $blacklisted_value,
        'listid' => $sib_list_id,
        );
        $mailin->createUpdateUser($data);
    }

    /**
     * Add / Modify subscribers with their full details like Firstname, Lastname etc.
     */
    public function subscribeByruntimeRegister($email, $id_gender, $fname, $lname, $birthday, $langisocode, $phone_mobile, $default_group, $newsletter_status = '', $id_shop_group = 'NULL', $id_shop = 'NULL', $list_id = '', $company = '', $postcode = '')
    {
        $id_shop_group = !empty($id_shop_group) ? $id_shop_group : 'NULL';
        $id_shop = !empty($id_shop) ? $id_shop : 'NULL';

        if (!$this->syncSetting($id_shop_group, $id_shop)) {
            return false;
        }

        $value_langauge = $this->getApiConfigValue($id_shop_group, $id_shop);
        $birthday = (isset($birthday)) ? $birthday : '';
        if ($birthday > 0) {
            if ($value_langauge->date_format == 'dd-mm-yyyy') {
                $birthday = date('d-m-Y', strtotime($birthday));
            } else {
                $birthday = date('m-d-Y', strtotime($birthday));
            }
        }

        $client = 1;
        $civility_value = (isset($id_gender)) ? $id_gender : '';
        if (!empty($civility_value) && !empty($langisocode)) {
            $gender_name = Db::getInstance()->getRow('SELECT `name` FROM '._DB_PREFIX_.'gender_lang WHERE  `id_lang` = \''.pSQL($langisocode).'\' AND `id_gender` = \''.pSQL($civility_value).'\'');
            $civility = !empty($gender_name['name']) ? $gender_name['name'] : '';
        } else {
            $civility = '';
        }

        if ($langisocode != '') {
            $langisocode = Language::getIsoById((int) $langisocode);
        }

        $attribute_data = array();
        $attribute_key = array();
        if ($civility != '') {
            $attribute_data[] = $civility;
            $attribute_key[] = 'CIV';
        }
        if (!empty($fname)) {
            $attribute_data[] = $fname;
            if ($value_langauge->language == 'fr') {
                $attribute_key[] = 'PRENOM';
            } else {
                $attribute_key[] = 'NAME';
            }
        }
        if (!empty($lname)) {
            $attribute_data[] = $lname;
            if ($value_langauge->language == 'fr') {
                $attribute_key[] = 'NOM';
            } else {
                $attribute_key[] = 'SURNAME';
            }
        }
        if (!empty($birthday) && $birthday > 0) {
            $attribute_data[] = $birthday;
            if ($value_langauge->language == 'fr') {
                $attribute_key[] = 'DDNAISSANCE';
            } else {
                $attribute_key[] = 'BIRTHDAY';
            }
        }
        if (!empty($langisocode)) {
            $attribute_data[] = $langisocode;
            $attribute_key[] = 'PS_LANG';
        }
        if ($client >= 0) {
            $attribute_data[] = $client;
            $attribute_key[] = 'CLIENT';
        }
        if (!empty($phone_mobile) && $phone_mobile > 0) {
            $attribute_data[] = $phone_mobile;
            $attribute_key[] = 'SMS';
        }
        if (!empty($company)) {
            $attribute_data[] = $company;
            $attribute_key[] = 'COMPANY';
        }
        if (!empty($postcode)) {
            $attribute_data[] = $postcode;
            $attribute_key[] = 'POSTCODE';
        }
        if (isset($id_shop_group) && !empty($email)) {
            if ($id_shop_group === null) {
                $id_shop_group = 1;
            }

            $all_group_reg = Db::getInstance()->getRow('SELECT GROUP_CONCAT(id_shop_group) as groupid FROM '._DB_PREFIX_.'customer  WHERE email = "'.pSQL($email).'" GROUP BY email');
            $all_group_unsubs = Db::getInstance()->getRow('SELECT GROUP_CONCAT(id_shop_group) as groupid FROM '._DB_PREFIX_.'sendin_newsletter  WHERE email = "'.pSQL($email).'" GROUP BY email');

            $data_first = array();
            $data_second = array();
            if (!empty($all_group_reg['groupid'])) {
                $data_first = explode(',', $all_group_reg['groupid']);
            }

            if (!empty($all_group_unsubs['groupid'])) {
                $data_second = explode(',', $all_group_unsubs['groupid']);
            }

            $value_merge = array_merge($data_first, $data_second);
            $value_group = implode(',', $value_merge);
            $attribute_data[] = $value_group;
            $attribute_key[] = 'GROUP_ID';
        }
        if (isset($id_shop) && !empty($email)) {
            if ($id_shop === null) {
                $id_shop = 1;
            }

            $all_group_reg_store = Db::getInstance()->getRow('SELECT GROUP_CONCAT(id_shop) as storeid FROM '._DB_PREFIX_.'customer  WHERE email = "'.pSQL($email).'" GROUP BY email');
            $all_group_unsubs_store = Db::getInstance()->getRow('SELECT GROUP_CONCAT(id_shop) as storeid FROM '._DB_PREFIX_.'sendin_newsletter  WHERE email = "'.pSQL($email).'" GROUP BY email');

            $data_first = array();
            $data_second = array();
            if (!empty($all_group_reg_store['storeid'])) {
                $data_first = explode(',', $all_group_reg_store['storeid']);
            }

            if (!empty($all_group_unsubs_store['storeid'])) {
                $data_second = explode(',', $all_group_unsubs_store['storeid']);
            }

            $value_merge_store = array_merge($data_first, $data_second);
            $value_store = implode(',', $value_merge_store);
            $attribute_data[] = $value_store;
            $attribute_key[] = 'STORE_ID';
        }

        $customer_id = Db::getInstance()->getRow('SELECT GROUP_CONCAT(id_customer) as custid FROM '._DB_PREFIX_.'customer  WHERE email = "'.pSQL($email).'" GROUP BY email');
        $id_value = !empty($customer_id['custid']) ? $customer_id['custid'] : '';
        if (!empty($id_value)) {
            $all_default_group = Db::getInstance()->getRow('SELECT GROUP_CONCAT(id_group) as groupid FROM '._DB_PREFIX_.'customer_group  WHERE id_customer IN('.$id_value.')');
            $data_all_group = explode(',', $all_default_group['groupid']);
            $data_unique = array_unique($data_all_group);
            $value_group_final = implode(',', $data_unique);

            if (!empty($value_group_final)) {
                $attribute_data[] = $value_group_final;
                $attribute_key[] = 'DEFAULT_GROUP_ID';
            }
        } elseif (!empty($default_group)) {
            $attribute_data[] = $default_group;
            $attribute_key[] = 'DEFAULT_GROUP_ID';
        }

        $mailin = $this->createObjMailin();
        $Sendin_Confirm_Type = Configuration::get('Sendin_Confirm_Type', '', $id_shop_group, $id_shop);
        if (empty($list_id)) {
            if (isset($Sendin_Confirm_Type) && $Sendin_Confirm_Type === 'doubleoptin') {
                $list_id = Configuration::get('Sendin_optin_list_id', '', $id_shop_group, $id_shop);
                $attribute_data[] = 2;
                $attribute_key[] = 'DOUBLE_OPT-IN';
            } else {
                $list_id = Configuration::get('Sendin_Selected_List_Data', '', $id_shop_group, $id_shop);
            }
        }

        if ($newsletter_status == 0 || $newsletter_status == 1) {
            $blacklisted_value = 0;
        }

        $attr_key_val = array();
        $i = 0;
        foreach ($attribute_key as $val) {
            $attr_key_val[$val] = $attribute_data[$i];
            $i = $i + 1;
        }

        $sib_list_id = explode('|', $list_id);
        $data = array('email' => $email,
        'attributes' => $attr_key_val,
        'blacklisted' => $blacklisted_value,
        'listid' => $sib_list_id,
        );
        $mailin->createUpdateUser($data);
    }

    /**
     * Checks whether a subscriber is registered in the sendin_newsletter table.
     * If they are registered, we subscriber them on Sendinblue.
     */
    private function isEmailRegistered($customer_email, $mobile_number, $newsletter_status, $id_shop_group = '', $id_shop = '')
    {
        $id_shop_group = !empty($id_shop_group) ? $id_shop_group : 'NULL';
        $id_shop = !empty($id_shop) ? $id_shop : 'NULL';
        $list_id = Configuration::get('Sendin_Selected_List_Data', '', $id_shop_group, $id_shop);

        if (Db::getInstance()->getRow('SELECT `email` FROM '._DB_PREFIX_.'sendin_newsletter WHERE `email` = \''.pSQL($customer_email).'\'')) {
            $this->subscribeByruntime($customer_email, $newsletter_status, $list_id);
        } elseif ($registered = Db::getInstance()->getRow('SELECT id_gender, firstname, lastname, birthday, id_lang, id_default_group FROM '._DB_PREFIX_.'customer WHERE `email` = \''.pSQL($customer_email).'\'')) {
            $this->subscribeByruntimeRegister($customer_email, $registered['id_gender'], $registered['firstname'], $registered['lastname'], $registered['birthday'], $registered['id_lang'], $mobile_number, $newsletter_status, $id_shop_group, $id_shop, $list_id, $registered['id_default_group']);
        }
    }

    /**
     * Displays the tracking code in the code block.
     */
    public function codeDeTracking()
    {
        if (Configuration::get('Sendin_Tracking_Status', '', $this->id_shop_group, $this->id_shop) && Configuration::get('Sendin_order_tracking_Status', '', $this->id_shop_group, $this->id_shop) != 1) {
            $st = '';
        } else {
            $st = 'style="display:none;"';
        }

        $Sendin_Tracking_Status = Configuration::get('Sendin_Tracking_Status', '', $this->id_shop_group, $this->id_shop);
        $this->context->smarty->assign('customtoken', Tools::encrypt(Configuration::get('PS_SHOP_NAME')));
        $this->context->smarty->assign('langvalue', $this->context->language->id);
        $this->context->smarty->assign('id_shop_group', $this->id_shop_group);
        $this->context->smarty->assign('id_shop', $this->id_shop);
        $this->context->smarty->assign('iso_code', $this->context->currency->iso_code);
        $this->context->smarty->assign('cl_version', $this->cl_version);
        $this->context->smarty->assign('form_url', Tools::safeOutput($_SERVER['REQUEST_URI']));
        $this->context->smarty->assign('Sendin_Tracking_Status', $Sendin_Tracking_Status);
        $this->context->smarty->assign('st', $st);

        return $this->display(__FILE__, 'views/templates/admin/ordertrack.tpl');
    }

    /**
     *This method is used to show options to the user whether the user wants the plugin to manage
     *their subscribers automatically.
     */
    public function syncronizeBlockCode()
    {
        $temp_data = '';
        $temp_data .= '<div class="listData '.$this->cl_version.' managesubscribeBlock" style="text-align:left;">
        <select name="template" class="ui-state-default" style="width: 225px; height:22px; border-radius:4px; margin:10px 0;">
        <option value="">'.$this->l('Select Template').'</option>
        ';
        $options = '';
        $camp = $this->templateDisplay();
        if (!empty($camp['campaign_records'])) {
            foreach ($camp['campaign_records'] as $template_data) {
                if ($template_data['templ_status'] === 'Active' && stristr($template_data['html_content'], 'doubleoptin') === false) {
                    $options .= '<option value="'.$template_data['id'].'"';
                    if ($template_data['id'] == Configuration::get('Sendin_Template_Id', '', $this->id_shop_group, $this->id_shop)) {
                        $options .= 'selected="selected"';
                    }

                    $options .= '>'.$template_data['campaign_name'].'</option>';
                }
            }
        }
        $temp_data .= $options.'</select><span class="toolTip"
        title="'.$this->l('Select a Sendinblue template that will be sent personalized for each contact that subscribes to your newsletter').'"
        ></span></div>';
        // template display for final confirm template mail.
        $temp_confirm = '';
        $temp_confirm .= '<div class="listData '.$this->cl_version.' managesubscribeBlock" style="text-align:left;">
        <select name="template_final" class="ui-state-default" style="width: 225px; height:22px; border-radius:4px; margin:10px 0;">
        <option value="">'.$this->l('Select Template').'</option>
        ';
        $options = '';
        $camp = $this->templateDisplay();
        if (!empty($camp['campaign_records'])) {
            foreach ($camp['campaign_records'] as $template_data) {
                if ($template_data['templ_status'] === 'Active' && stristr($template_data['html_content'], 'doubleoptin') === false) {
                    $options .= '<option value="'.$template_data['id'].'"';
                    if ($template_data['id'] == Configuration::get('Sendin_Final_Template_Id', '', $this->id_shop_group, $this->id_shop)) {
                        $options .= 'selected="selected"';
                    }

                    $options .= '>'.$template_data['campaign_name'].'</option>';
                }
            }
        }
        $temp_confirm .= $options.'</select><span class="toolTip"
        title="'.$this->l('Select a Sendinblue template that will be sent personalized for each contact that subscribes to your newsletter').'"
        ></span></div>';

        //display sendinblue double-optin template list.
        $optin_confirm = '';
        $optin_confirm .= '<div class="listData '.$this->cl_version.' managesubscribeBlock" style="text-align:left;">
        <select name="optin_template_final" class="ui-state-default" style="width: 225px; height:22px; border-radius:4px; margin:10px 0;">
        <option value="-1">'.$this->l('Default').'</option>
        ';
        $options = '';
        $camp = $this->templateDisplay();
        if (!empty($camp['campaign_records'])) {
            foreach ($camp['campaign_records'] as $template_data) {
                if ($template_data['templ_status'] === 'Active' && stristr($template_data['html_content'], 'doubleoptin') == true) {
                    $options .= '<option value="'.$template_data['id'].'"';
                    if ($template_data['id'] == Configuration::get('Sendin_Dubleoptin_Template_Id', '', $this->id_shop_group, $this->id_shop)) {
                        $options .= 'selected="selected"';
                    }

                    $options .= '>'.$template_data['campaign_name'].'</option>';
                }
            }
        }
        $optin_confirm .= $options.'</select><span class="toolTip"
        title="'.$this->l('Select a Sendinblue template that will be sent personalized for each contact that subscribes to your newsletter').'"
        ></span></div>';

        $sendin_smtp_detail = Configuration::get('Sendin_Smtp_Result', '', $this->id_shop_group, $this->id_shop);
        $smtp_data = Tools::jsondecode($sendin_smtp_detail);
        $sendin_smtp = !empty($smtp_data->relay_data->status) ? $smtp_data->relay_data->status : '';
        $smtp_alert = '';
        $mail_confirm_val = Configuration::get('Sendin_Confirm_Type', '', $this->id_shop_group, $this->id_shop);
        $mail_confirm_val = !empty($mail_confirm_val) ? $mail_confirm_val : 'nocon';
        if ($sendin_smtp !== 'enabled') {
            $smtp_alert = '<div class="alert '.$this->cl_version.'"> '.$this->l('You need an active SMTP (transactional) account to be able to send confirmation emails. Please').' <a href="mailto:contact@sendinblue.com">'.$this->l('contact customer service').'</a> '.$this->l('to activate it.').'</div>';
        }

        $this->context->smarty->assign('site_name', Configuration::get('PS_SHOP_NAME'));
        $this->context->smarty->assign('link', '<a target="_blank" href="'.$this->local_path.'sendinblue/cron.php?token='.Tools::encrypt(Configuration::get('PS_SHOP_NAME')).'">
        '.$this->l('this link').'</a> ');
        $this->context->smarty->assign('parselist', $this->parselist());
        $this->context->smarty->assign('chkval', Configuration::get('Sendin_final_confirm_email', '', $this->id_shop_group, $this->id_shop));
        $this->context->smarty->assign('chkval_url', Configuration::get('Sendin_Optin_Url_Check', '', $this->id_shop_group, $this->id_shop));
        $this->context->smarty->assign('radio_val_option', $mail_confirm_val);
        $this->context->smarty->assign('temp_data', $temp_data);
        $this->context->smarty->assign('temp_confirm', $temp_confirm);
        $this->context->smarty->assign('optin_confirm', $optin_confirm);
        $this->context->smarty->assign('prs_version', _PS_VERSION_);
        $this->context->smarty->assign('sendin_smtp', $sendin_smtp);
        $this->context->smarty->assign('smtp_alert', $smtp_alert);
        $this->context->smarty->assign('Sendin_doubleoptin_redirect', Configuration::get('Sendin_doubleoptin_redirect', '', $this->id_shop_group, $this->id_shop));
        $this->context->smarty->assign('Sendin_Subscribe_Setting', Configuration::get('Sendin_Subscribe_Setting', '', $this->id_shop_group, $this->id_shop));
        $this->context->smarty->assign('Sendin_import_user_status', Configuration::get('Sendin_import_user_status', '', $this->id_shop_group, $this->id_shop));
        $this->context->smarty->assign('form_url', Tools::safeOutput($_SERVER['REQUEST_URI'].'#subscribe-manager'));
        $this->context->smarty->assign('cl_version', $this->cl_version);
        $this->context->smarty->assign('local_path', $this->local_path);
        $this->context->smarty->assign('name', $this->name);

        return $this->display(__FILE__, 'views/templates/admin/sendinsyncronizeblock.tpl');
    }

    /**
     * Displays the SMTP details in the SMTP block.
     */
    public function mailSendBySmtp()
    {
        if (Configuration::get('Sendin_Api_Smtp_Status', '', $this->id_shop_group, $this->id_shop) && Configuration::get('Sendin_order_tracking_Status', '', $this->id_shop_group, $this->id_shop) != 1) {
            $st = '';
        } else {
            $st = 'style=display:none;';
        }

        $Sendin_Api_Smtp_Status = Configuration::get('Sendin_Api_Smtp_Status', '', $this->id_shop_group, $this->id_shop);
        $this->context->smarty->assign('customtoken', Tools::encrypt(Configuration::get('PS_SHOP_NAME')));
        $this->context->smarty->assign('langvalue', $this->context->language->id);
        $this->context->smarty->assign('id_shop_group', $this->id_shop_group);
        $this->context->smarty->assign('id_shop', $this->id_shop);
        $this->context->smarty->assign('iso_code', $this->context->currency->iso_code);
        $this->context->smarty->assign('testEmail', Configuration::get('PS_SHOP_EMAIL'));
        $this->context->smarty->assign('form_url', Tools::safeOutput($_SERVER['REQUEST_URI'].'#transactional-email-sms-management'));
        $this->context->smarty->assign('Sendin_Api_Smtp_Status', $Sendin_Api_Smtp_Status);
        $this->context->smarty->assign('cl_version', $this->cl_version);
        $this->context->smarty->assign('st', $st);

        return $this->display(__FILE__, 'views/templates/admin/smtptest.tpl');
    }

    /**
     * Displays the SMS details in the SMS block.
     */
    public function mailSendBySms()
    {
        $this->context->smarty->assign('site_name', Configuration::get('PS_SHOP_NAME'));
        $this->context->smarty->assign('link', '<a target="_blank" href="'.$this->local_path.'sendinblue/smsnotifycron.php?lang='.$this->context->language->id.'&token='.Tools::encrypt(Configuration::get('PS_SHOP_NAME')).'&id_shop_group='.$this->id_shop_group.'&id_shop='.$this->id_shop.'">'.$this->l('this link').'</a>');
        $this->context->smarty->assign('current_credits_sms', $this->getSmsCredit());
        $this->context->smarty->assign('sms_campaign_status', Configuration::get('Sendin_Api_Sms_Campaign_Status', '', $this->id_shop_group, $this->id_shop));
        $this->context->smarty->assign('Sendin_Notify_Email', Configuration::get('Sendin_Notify_Email', '', $this->id_shop_group, $this->id_shop));
        $this->context->smarty->assign('sms_shipment_status', Configuration::get('Sendin_Api_Sms_shipment_Status', '', $this->id_shop_group, $this->id_shop));
        $this->context->smarty->assign('sms_order_status', Configuration::get('Sendin_Api_Sms_Order_Status', '', $this->id_shop_group, $this->id_shop));
        $this->context->smarty->assign('sms_credit_status', Configuration::get('Sendin_Api_Sms_Credit', '', $this->id_shop_group, $this->id_shop));
        $this->context->smarty->assign('prs_version', _PS_VERSION_);
        $this->context->smarty->assign('Sendin_Notify_Value', Configuration::get('Sendin_Notify_Value', '', $this->id_shop_group, $this->id_shop));
        $this->context->smarty->assign('Sendin_Sender_Order', Configuration::get('Sendin_Sender_Order', '', $this->id_shop_group, $this->id_shop));
        $this->context->smarty->assign('Sendin_Sender_Order_Message', Configuration::get('Sendin_Sender_Order_Message', '', $this->id_shop_group, $this->id_shop));
        $this->context->smarty->assign('Sendin_Sender_Shipment', Configuration::get('Sendin_Sender_Shipment', '', $this->id_shop_group, $this->id_shop));
        $this->context->smarty->assign('Sendin_Sender_Shipment_Message', Configuration::get('Sendin_Sender_Shipment_Message', '', $this->id_shop_group, $this->id_shop));
        $this->context->smarty->assign('form_url', Tools::safeOutput($_SERVER['REQUEST_URI'].'#transactional-email-sms-management'));
        $this->context->smarty->assign('cl_version', $this->cl_version);

        return $this->display(__FILE__, 'views/templates/admin/smssetting.tpl');
    }

    /**
     * Fetches all the list of the user from the Sendin platform.
     */
    public function getResultListValue($key = false)
    {
        $data = array();

        if (!$key) {
            $key = Configuration::get('Sendin_Api_Key', '', $this->id_shop_group, $this->id_shop);
        }

        if (!empty($key)) {
            $mailin = $this->createObjMailin($key);
            $data = array('page' => '',
              'page_limit' => '',
            );
            $list_resp = $mailin->getLists($data);

            return $list_resp;
        }
    }

    private function displaySendin()
    {
        $resp = $this->defaultNlStatus();
        if ($resp != 1) {
            Configuration::updateValue('Sendin_Subscribe_Setting', 0, '', $this->id_shop_group, $this->id_shop);
        }
        $img_source = $this->local_path.$this->name.'/views/img/';
        $chk_port_status = $this->checkPortStatus();
        $this->context->smarty->assign('chk_port_status', $chk_port_status);
        $this->context->smarty->assign('resp', $resp);
        $this->context->smarty->assign('img_source', $img_source);

        return $this->display(__FILE__, 'views/templates/admin/contentdisp.tpl');
    }

    /**
     * PrestaShop's default method that gets called when page loads.
     */
    private function displayForm()
    {
        // checkFolderStatus after removing from Sendinblue
        $this->createFolderCaseTwo();

        $this->_html .= '<div class="form-box"><p style="margin:1.5em 0;">'.$this->displaySendin().'</p>';
        $this->_html .= '<style>.margin-form{padding: 0 0 2em 210px;}</style><h2 class="heading">'.$this->sib_logo.'<span style="vertical-align: middle">'.$this->l('Getting Started').'</span></h2>';
        $this->_html .= '<div class="form-box-content">
        '.$this->l('Create your free Sendinblue : ').'<a href="'.$this->l('https://app.sendinblue.com/account/register/?utm_source=prestashop_plugin&utm_medium=plugin&utm_campaign=module_link').'" class="link_action" style="color:#044A75;"  target="_blank">&nbsp;'.$this->l('https://www.sendinblue.com').'</a></div><br />';

        if (!extension_loaded('curl') || !ini_get('allow_url_fopen')) {
            $this->_html .= '<div class="form-box-content">
                    '.$this->l('You must enable CURL extension and allow_url_fopen option on your server if you want to use this module.').'</div>';
        }
        $this->_html .= $this->keyFormProcess();

        if (Configuration::get('Sendin_Api_Key_Status', '', $this->id_shop_group, $this->id_shop) == 1) {
            $this->_html .= $this->syncronizeBlockCode();
            $this->_html .= $this->mailSendBySmtp();
            $this->_html .= $this->mailSendBySms();
            $this->_html .= $this->codeDeTracking();
            $this->_html .= $this->automationTracking();
            $this->_html .= $this->displayNewsletterEmail();
        }

        return $this->_html;
    }

    /**
     * api key put and submit form if validate.
     */
    private function keyFormProcess()
    {
        if (Configuration::get('Sendin_Api_Key_Status', '', $this->id_shop_group, $this->id_shop)) {
            $str = '';
        } else {
            $str = 'style=display:none;';
        }
        $api_key = Tools::safeOutput(Configuration::get('Sendin_Api_Key', '', $this->id_shop_group, $this->id_shop));
        $key_status = Configuration::get('Sendin_Api_Key_Status', '', $this->id_shop_group, $this->id_shop);
        $img_source = $this->local_path.$this->name.'/views/img/';
        $this->context->smarty->assign('customtoken', Tools::encrypt(Configuration::get('PS_SHOP_NAME')));
        $this->context->smarty->assign('langvalue', $this->context->language->id);
        $this->context->smarty->assign('id_shop_group', $this->id_shop_group);
        $this->context->smarty->assign('id_shop', $this->id_shop);
        $this->context->smarty->assign('iso_code', $this->context->currency->iso_code);
        $this->context->smarty->assign('cl_version', $this->cl_version);
        $this->context->smarty->assign('form_url', Tools::safeOutput($_SERVER['REQUEST_URI']));
        $this->context->smarty->assign('img_source', $img_source);
        $this->context->smarty->assign('cl_version', $this->cl_version);
        $this->context->smarty->assign('str', $str);
        $this->context->smarty->assign('api_key', $api_key);
        $this->context->smarty->assign('key_status', $key_status);

        return $this->display(__FILE__, 'views/templates/admin/keyform.tpl');
    }

    /*
     * Get the count of total unsubcribed registered users.
    */
    public function totalUnsubscribedUser()
    {
        $condition = $this->conditionalValue();

        return Db::getInstance()->getValue('
        SELECT count(DISTINCT email) AS Total
        FROM `'._DB_PREFIX_.'customer`
        WHERE  `newsletter` = 0 '.$condition);
    }

    /*
     * Get the count of total subcribed registered users.
    */
    public function totalsubscribedUser()
    {
        $condition = $this->conditionalValue();

        return Db::getInstance()->getValue('
        SELECT count(DISTINCT email) AS Total
        FROM `'._DB_PREFIX_.'customer`
        WHERE  `newsletter` = 1 '.$condition);
    }

    /*
     * Checks if an email address already exists in the sendin_newsletter table
     * and returns a value accordingly.
    */
    private function isNewsletterRegistered($customer_email, $id_shop_group)
    {
        $condition = 'AND `id_shop_group` = '.$id_shop_group.'';

        if (Db::getInstance()->getRow('SELECT `email` FROM '._DB_PREFIX_.'sendin_newsletter
        WHERE `email` = \''.pSQL($customer_email).'\''.$condition.'')) {
            return 1;
        }
        if (!$registered = Db::getInstance()->getRow('SELECT `newsletter` FROM '._DB_PREFIX_.'customer
            WHERE `email` = \''.pSQL($customer_email).'\''.$condition.'')) {
            return -1;
        }

        if ($registered['newsletter'] == '1') {
            return 2;
        }
        if ($registered['newsletter'] == '0') {
            return 3;
        }

        return 0;
    }

    /*
     * Checks if an email address is already subscribed in the sendin_newsletter table
     * and returns true, otherwise returns false.
    */
    private function isNewsletterRegisteredSub($customer_email, $id_shop_group)
    {
        $condition = $this->checkVersionCondition($id_shop_group);
        if (Db::getInstance()->getRow('SELECT `email` FROM '._DB_PREFIX_.'sendin_newsletter
        WHERE `email` = \''.pSQL($customer_email).'\' and active=1 '.$condition.'')) {
            return true;
        }
        if (Db::getInstance()->getRow('SELECT `newsletter` FROM '._DB_PREFIX_.'customer
            WHERE `email` = \''.pSQL($customer_email).'\' and newsletter=1 '.$condition.'')) {
            return true;
        }

        return false;
    }

    /*
     * Checks if an email address is already unsubscribed in the sendin_newsletter table
     * and returns true, otherwise returns false.
    */
    private function isNewsletterRegisteredUnsub($customer_email)
    {
        if (Db::getInstance()->getRow('SELECT `email` FROM '._DB_PREFIX_.'sendin_newsletter
        WHERE `email` = \''.pSQL($customer_email).'\' and active=0')) {
            return true;
        }

        if (Db::getInstance()->getRow('SELECT `newsletter` FROM '._DB_PREFIX_.'customer
        WHERE `email` = \''.pSQL($customer_email).'\' and newsletter=0')) {
            return true;
        }

        return false;
    }

    /**
     * This method is being called when a subsriber subscribes from the front end of PrestaShop.
     */
    private function newsletterRegistration($guest_iso)
    {
        if (!$this->checkCaptchaValidation()) {
            return false;
        }
        $post_action = Tools::getValue('action');
        $s_new_timestamp = date('Y-m-d H:m:s');

        // get post email value
        $this->email = Tools::getValue('email');
        $id_shop = !empty($this->id_shop) ? $this->id_shop : 1;
        $id_shop_group = !empty($this->id_shop_group) ? $this->id_shop_group : 1;
        $condition = 'AND `id_shop_group` = '.pSQL($id_shop_group).'';

        if (empty($this->email) || !Validate::isEmail($this->email)) {
            return;
        } elseif ($post_action == '1') {
            $register_status = $this->isNewsletterRegistered($this->email, $id_shop_group);
            $register_status_unsub = $this->isNewsletterRegisteredUnsub($this->email, $id_shop_group);

            if ($register_status == -1) {
                return;
            } elseif ($register_status_unsub == -1) {
                return;
            }

            // update unsubscribe unregister
            if ($register_status == 1) {
                // email status send to remote server
                $this->unsubscribeByruntime($this->email);
                if (!Db::getInstance()->Execute('UPDATE '._DB_PREFIX_.'sendin_newsletter
                SET `active` = 0,
                newsletter_date_add = \''.$s_new_timestamp.'\'
                WHERE `email` = \''.pSQL($this->email).'\''.$condition.'')) {
                    return;
                }

                return $this->valid = $this->l('Unsubscription successful');
            } elseif ($register_status == 2) {
                // email status send to remote server
                $this->unsubscribeByruntime($this->email);
                if (!Db::getInstance()->Execute('UPDATE '._DB_PREFIX_.'customer
                    SET `newsletter` = 0,
                    newsletter_date_add = \''.$s_new_timestamp.'\',
                    `ip_registration_newsletter` = \''.pSQL(Tools::getRemoteAddr()).'\'
                    WHERE `email` = \''.pSQL($this->email).'\''.$condition.'')) {
                    return;
                }

                return $this->valid = $this->l('Unsubscription successful');
            }
        } elseif ($post_action == '0') {
            $register_status = $this->isNewsletterRegistered($this->email, $id_shop_group);
            $register_status_sub = $this->isNewsletterRegisteredSub($this->email, $id_shop_group);

            if ($register_status_sub) {
                return;
            }

            $switchQuery = false;
            switch ($register_status) {
                // email status send to remote server
                case -1:
                    $switchQuery = Db::getInstance()->Execute('INSERT INTO '._DB_PREFIX_.'sendin_newsletter (id_shop, id_shop_group, email, newsletter_date_add, ip_registration_newsletter, http_referer) VALUES (\''.pSQL($id_shop).'\',\''.pSQL($id_shop_group).'\',\''.pSQL($this->email).'\', \''.$s_new_timestamp.'\', \''.pSQL(Tools::getRemoteAddr()).'\',"")');
                    break;
                // email status send to remote server
                case 0:
                    $switchQuery = Db::getInstance()->Execute('UPDATE '._DB_PREFIX_.'sendin_newsletter
                        SET `active` = 1,
                        newsletter_date_add = \''.$s_new_timestamp.'\'
                        WHERE `email` = \''.pSQL($this->email).'\''.$condition.'');
                    break;
                // email status send to remote server
                case 1:
                    $switchQuery = Db::getInstance()->Execute('UPDATE '._DB_PREFIX_.'sendin_newsletter
                        SET `active` = 1,
                        newsletter_date_add = \''.$s_new_timestamp.'\'
                        WHERE `email` = \''.pSQL($this->email).'\''.$condition.'');
                    break;
                // email status send to remote server
                case 3:
                    $switchQuery = Db::getInstance()->Execute('UPDATE '._DB_PREFIX_.'customer
                        SET `newsletter` = 1,
                        newsletter_date_add = \''.$s_new_timestamp.'\',
                        `ip_registration_newsletter` = \''.pSQL(Tools::getRemoteAddr()).'\'
                        WHERE `email` = \''.pSQL($this->email).'\''.$condition.'');
                    break;
            }

            if (!$switchQuery) {
                return;
            }
            $this->subscribeByruntime($this->email, '', '', $guest_iso);
            $this->sendWsTemplateMail($this->email);

            return $this->valid = $this->l('Subscription successful');
        }
    }

    /**
     * Method is being called at the time of uninstalling the Sendinblue module.
     */
    public function uninstall()
    {
        $this->unregisterHook('header');
        $this->unregisterHook('leftColumn');
        $this->unregisterHook('rightColumn');
        $this->unregisterHook('top');
        $this->unregisterHook('footer');
        $this->unregisterHook('createAccount');
        $this->unregisterHook('createAccountForm');
        $this->unregisterHook('OrderConfirmation');
        $this->unregisterHook('actionCartSave');
        Configuration::deleteByName('Sendin_Api_Sms_Order_Status');
        Configuration::deleteByName('Sendin_Api_Sms_shipment_Status');
        Configuration::deleteByName('Sendin_Api_Sms_Campaign_Status');
        Configuration::deleteByName('Sendin_Sender_Shipment_Message');
        Configuration::deleteByName('Sendin_Sender_Shipment');
        Configuration::deleteByName('Sendin_Sender_Order');
        Configuration::deleteByName('Sendin_Sender_Order_Message');
        Configuration::deleteByName('Sendin_Notify_Value');
        Configuration::deleteByName('Sendin_Notify_Email');
        Configuration::deleteByName('Sendin_Api_Sms_Credit');
        Configuration::deleteByName('Sendin_Notify_Cron_Executed');
        Configuration::deleteByName('Sendin_Template_Id');
        Configuration::deleteByName('Sendin_Rightblock');
        Configuration::deleteByName('Sendin_Leftblock');
        Configuration::deleteByName('Sendin_Top');
        Configuration::deleteByName('Sendin_Footer');
        Configuration::deleteByName('Sendin_Confirm_Type');
        Configuration::deleteByName('Sendin_doubleoptin_redirect');
        Configuration::deleteByName('Sendin_Optin_Url_Check');
        Configuration::deleteByName('Sendin_final_confirm_email');
        Configuration::deleteByName('Sendin_optin_list_id');
        Configuration::deleteByName('Sendin_Final_Template_Id');
        Configuration::deleteByName('Sendin_Dubleoptin_Template_Id');
        Configuration::deleteByName('Sendin_Automation_Status');
        Configuration::deleteByName('Sendin_Automation_Key');
        Configuration::deleteByName('Sendin_Abandoned_Status');

        if (Configuration::get('Sendin_Api_Smtp_Status')) {
            Configuration::updateValue('Sendin_Api_Smtp_Status', 0);
            Configuration::updateValue('PS_MAIL_METHOD', 1);
            Configuration::updateValue('PS_MAIL_SERVER', '');
            Configuration::updateValue('PS_MAIL_USER', '');
            Configuration::updateValue('PS_MAIL_PASSWD', '');
            Configuration::updateValue('PS_MAIL_SMTP_ENCRYPTION', '');
            Configuration::updateValue('PS_MAIL_SMTP_PORT', 25);
        }

        // Uninstall module
        Configuration::deleteByName('Sendin_First_Request');
        Configuration::deleteByName('Sendin_Subscribe_Setting');
        Configuration::deleteByName('Sendin_dropdown');
        Configuration::deleteByName('Sendin_Tracking_Status');
        Configuration::deleteByName('Sendin_order_tracking_Status');
        Configuration::deleteByName('Sendin_Smtp_Result');
        Configuration::deleteByName('Sendin_Api_Key');
        Configuration::deleteByName('Sendin_Api_Smtp_Status');
        Configuration::deleteByName('Sendin_import_user_status');
        Configuration::deleteByName('Sendin_Selected_List_Data');
        Configuration::deleteByName('Sendin_Web_Hook_Status');
        Configuration::deleteByName('Sendin_Web_Hook_Recheck');
        Configuration::deleteByName('SENDINBLUE_CONFIGURATION_OK');

        if (Configuration::get('Sendin_Newsletter_table', '', $this->id_shop_group, $this->id_shop)) {
            $this->getRestoreOldNewsletteremails();

            Db::getInstance()->Execute('DROP TABLE IF EXISTS '._DB_PREFIX_.'sendin_newsletter');

            Configuration::deleteByName('Sendin_Newsletter_table');
            Configuration::deleteByName('Sendin_Api_Key_Status');
        }

        return parent::uninstall();
    }

    public function hookupdateOrderStatus($params)
    {
        $id_order_state = !empty($params['newOrderStatus']->id) ? $params['newOrderStatus']->id : Tools::getValue('id_order_state');
        $id_order = !empty($params['id_order']) ? $params['id_order'] : Tools::getValue('id_order');
        $sender_shipment_msg = Configuration::get('Sendin_Sender_Shipment_Message', '', $this->id_shop_group, $this->id_shop);
        $sms_sipment_status = Configuration::get('Sendin_Api_Sms_shipment_Status', '', $this->id_shop_group, $this->id_shop);
        $order_tracking_status = Configuration::get('Sendin_Tracking_Status', '', $this->id_shop_group, $this->id_shop);
        if (($id_order_state == 7 || $id_order_state == 6) && $order_tracking_status == 1 && is_numeric($id_order) == true) {
            $this->orderRefund($id_order);
        } elseif ($id_order_state == 4 && $sms_sipment_status == 1 && $sender_shipment_msg != '' && is_numeric($id_order) == true) {
            $order = new Order($id_order);
            $address = new Address((int) $order->id_address_delivery);
            $customer_civility_result = Db::getInstance()->ExecuteS('SELECT id_gender,id_lang,firstname,lastname FROM '._DB_PREFIX_.'customer WHERE `id_customer` = '.(int) $order->id_customer);
            $firstname = (isset($address->firstname)) ? $address->firstname : '';
            $lastname = (isset($address->lastname)) ? $address->lastname : '';

            $lang_value = '';
            if (Tools::strtolower($firstname) === Tools::strtolower($customer_civility_result[0]['firstname']) && Tools::strtolower($lastname) === Tools::strtolower($customer_civility_result[0]['lastname'])) {
                $civility_value = (isset($customer_civility_result['0']['id_gender'])) ? $customer_civility_result['0']['id_gender'] : '';
                $lang_value = (isset($customer_civility_result['0']['id_lang'])) ? $customer_civility_result['0']['id_lang'] : '';
            } else {
                $civility_value = '';
            }

            if (!empty($civility_value) && !empty($lang_value)) {
                $gender_name = Db::getInstance()->getRow('SELECT `name` FROM '._DB_PREFIX_.'gender_lang WHERE  `id_lang` = \''.pSQL($lang_value).'\' AND `id_gender` = \''.pSQL($civility_value).'\'');
                $civility = !empty($gender_name['name']) ? $gender_name['name'] : '';
            } else {
                $civility = '';
            }

            $result = Db::getInstance(_PS_USE_SQL_SLAVE_)->getRow('
                SELECT `call_prefix`
                FROM `'._DB_PREFIX_.'country`
                WHERE `id_country` = '.(int) $address->id_country);

            if (!empty($address->phone_mobile) || !empty($address->phone)) {
                $order_date = (isset($order->date_upd)) ? $order->date_upd : 0;
                if ($this->context->language->id == 1) {
                    $ord_date = date('m/d/Y', strtotime($order_date));
                } else {
                    $ord_date = date('d/m/Y', strtotime($order_date));
                }

                $sms_value = !empty($address->phone_mobile) ? $address->phone_mobile : $address->phone;
                $total_pay = (isset($order->total_paid)) ? round($order->total_paid, 2) : 0;
                $total_pay = $total_pay.' '.$this->context->currency->iso_code;
                $ref_num = (isset($order->reference)) ? $order->reference : '';

                $civility_data = str_replace('{civility}', $civility, $sender_shipment_msg);
                $fname = str_replace('{first_name}', $firstname, $civility_data);
                $lname = str_replace('{last_name}', $lastname."\r\n", $fname);
                $product_price = str_replace('{order_price}', $total_pay, $lname);
                $order_date = str_replace('{order_date}', $ord_date."\r\n", $product_price);
                $msgbody = str_replace('{order_reference}', $ref_num, $order_date);
                $arr = array();
                $arr['to'] = $this->checkMobileNumber($sms_value, $result['call_prefix']);
                $arr['from'] = Configuration::get('Sendin_Sender_Shipment', '', $this->id_shop_group, $this->id_shop);
                $arr['text'] = $msgbody;
                $arr['type'] = 'transactional';
                $this->sendSmsApi($arr);
            }
        }
    }

    /**
     * Method is use to delete transactional attribute value in SIB.
     */
    public function orderRefund($order_id)
    {
        $order = new Order($order_id);
        $customer_email = Db::getInstance()->ExecuteS('SELECT email FROM '._DB_PREFIX_.'customer WHERE `id_customer` = '.(int) $order->id_customer);
        $order_id = $order->reference;
        $mailin = $this->createObjMailin();
        if (!empty($order_id) && !empty($customer_email[0]['email'])) {
            $data = array('order_id' => $order_id,
            'email' => $customer_email[0]['email'],
            );
            $mailin->deleteTransnationalAttributeValue($data);
        }
    }

    /**
     * Displays the newsletter on the front page in Left column of PrestaShop.
     */
    public function hookLeftColumn($params)
    {
        if (!$this->syncSetting()) {
            return false;
        }

        if (Tools::isSubmit('submitNewsletter')) {
            $guest_iso = Language::getIsoById((int) $params['cookie']->id_lang);
            $this->newsletterRegistration($guest_iso);
            $this->email = Tools::safeOutput(Tools::getValue('email'));

            if ($this->valid) {
                if (Configuration::get('NW_CONFIRMATION_EMAIL', '', $this->id_shop_group, $this->id_shop)) {
                    Mail::Send((int) $params['cookie']->id_lang, 'newsletter_conf', Mail::l('Newsletter confirmation', (int) $params['cookie']->id_lang), array(), $this->email, null, null, null, null, null, dirname(__FILE__).'/mails/');
                }
            }
        }
    }

    /**
     * Displays the newsletter on the front page in Right column of PrestaShop.
     */
    public function hookRightColumn($params)
    {
        if (!$this->syncSetting()) {
            return false;
        }

        if (Tools::isSubmit('submitNewsletter')) {
            $guest_iso = Language::getIsoById((int) $params['cookie']->id_lang);
            $this->newsletterRegistration($guest_iso);
            $this->email = Tools::safeOutput(Tools::getValue('email'));
            if ($this->valid) {
                if (Configuration::get('NW_CONFIRMATION_EMAIL', '', $this->id_shop_group, $this->id_shop)) {
                    Mail::Send((int) $params['cookie']->id_lang, 'newsletter_conf', Mail::l('Newsletter confirmation', (int) $params['cookie']->id_lang), array(), $this->email, null, null, null, null, null, dirname(__FILE__).'/mails/');
                }
            }
        }
    }

    /**
     * Displays the newsletter on the front page in Footer of PrestaShop.
     */
    public function hookFooter($params)
    {
        if (!$this->syncSetting()) {
            return false;
        }

        if (Tools::isSubmit('submitNewsletter')) {
            $guest_iso = Language::getIsoById((int) $params['cookie']->id_lang);
            $this->newsletterRegistration($guest_iso);
            $this->email = Tools::safeOutput(Tools::getValue('email'));

            if ($this->valid) {
                if (Configuration::get('NW_CONFIRMATION_EMAIL', '', $this->id_shop_group, $this->id_shop)) {
                    Mail::Send((int) $params['cookie']->id_lang, 'newsletter_conf', Mail::l('Newsletter confirmation', (int) $params['cookie']->id_lang), array(), $this->email, null, null, null, null, null, dirname(__FILE__).'/mails/');
                }
            }
        }

        $this->context->smarty->assign('this_path', $this->local_path);
    }

    /**
     * Displays the newsletter on the front page in Top of PrestaShop.
     */
    public function hookTop($params)
    {
        if (!$this->syncSetting()) {
            return false;
        }

        if (Tools::isSubmit('submitNewsletter')) {
            $guest_iso = Language::getIsoById((int) $params['cookie']->id_lang);
            $this->newsletterRegistration($guest_iso);
            $this->email = Tools::safeOutput(Tools::getValue('email'));

            if ($this->valid) {
                if (Configuration::get('NW_CONFIRMATION_EMAIL', '', $this->id_shop_group, $this->id_shop)) {
                    Mail::Send((int) $params['cookie']->id_lang, 'newsletter_conf', Mail::l('Newsletter confirmation', (int) $params['cookie']->id_lang), array(), $this->email, null, null, null, null, null, dirname(__FILE__).'/mails/');
                }
            }
        }

        $this->context->smarty->assign('this_path', $this->local_path);
    }

    /**
     * Displays the newsletter option on registration page of PrestaShop.
     */
    public function hookcreateAccountForm($params)
    {
        if (!$this->syncSetting()) {
            return false;
        }

        $this->context->smarty->assign('params', $params);
    }

    /*
     * Displays the CSS for the Sendinblue module.
    */
    public function addCss()
    {
        $min = $_SERVER['HTTP_HOST'] == 'localhost' ? '' : '.min';
        $so = $this->l('Select option');
        $selected = $this->l('selected');
        $html = '<script>  var selectoption = "'.$so.'"; </script>';
        $html .= '<script>  var base_url = "'.str_replace('modules/', '', $this->local_path).'"; </script>';
        $html .= '<script>  var selected = "'.$selected.'"; </script>';
        $sendin_js_path = $this->local_path.$this->name.'/views/js/'.$this->name.$min.'.js?_='.time();
        $js_ddl_list = $this->local_path.$this->name.'/views/js/jquery.multiselect.min.js';
        $liveclickquery = $this->local_path.$this->name.'/views/js/jquery.livequery.min.js';
        $s_css = $this->local_path.$this->name.'/views/css/'.$this->name.'.css?_='.time();
        $js_ddl_list = $this->local_path.$this->name.'/views/js/jquery.multiselect.min.js';

        $base = (Configuration::get('PS_SSL_ENABLED') ? 'https://' : 'http://');
        $html .= '<link rel="stylesheet" type="text/css" href="'.$base.'ajax.googleapis.com/ajax/libs/jqueryui/1/themes/ui-lightness/jquery-ui.css" />
            <link "text/css" href="'.$s_css.'" rel="stylesheet" />
            <script type="text/javascript" src="'.$base.'ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script>
            <script type="text/javascript" src="'.$js_ddl_list.'"></script>
            <script type="text/javascript" src="'.$liveclickquery.'"></script>
            <script type="text/javascript" src="'.$sendin_js_path.'"></script>';

        return $html;
    }

    /**
     * When a user places an order, the tracking code integrates in the order confirmation page.
     */
    public function hookOrderConfirmation($params)
    {
        if (!$this->checkModuleStatus()) {
            return false;
        }

        $customerid = (isset($params['order']->id_customer)) ? $params['order']->id_customer : '';
        $customer_result = Db::getInstance()->ExecuteS('SELECT id_gender, firstname, lastname, newsletter  FROM '._DB_PREFIX_.'customer WHERE `id_customer` = '.(int) $customerid);
        $id_delivery = (isset($params['order']->id_address_delivery)) ? $params['order']->id_address_delivery : 0;
        $id_address_invoice = (isset($params['order']->id_address_invoice)) ? $params['order']->id_address_invoice : 0;
        $address_delivery = Db::getInstance()->ExecuteS('SELECT * FROM '._DB_PREFIX_.'address WHERE `id_address` = '.(int) $id_delivery);
        $address_billing = Db::getInstance()->ExecuteS('SELECT * FROM '._DB_PREFIX_.'address WHERE `id_address` = '.(int) $id_address_invoice);
        $ref_num = (isset($params['order']->reference)) ? $params['order']->reference : 0;
        $total_to_pay = (isset($params['order']->total_paid)) ? round($params['order']->total_paid, 2) : 0;
        //get phone number and add country prefix
        if (!empty($address_delivery[0]['id_country'])) {
            $phone_sms = !empty($address_delivery[0]['phone_mobile']) ? $address_delivery[0]['phone_mobile'] : $address_delivery[0]['phone'];
            if (!empty($phone_sms)) {
                $result_code = Db::getInstance()->getRow('SELECT `call_prefix` FROM '._DB_PREFIX_.'country
                WHERE `id_country` = \''.pSQL($address_delivery[0]['id_country']).'\'');
                $number = $this->checkMobileNumber($phone_sms, $result_code['call_prefix']);
            }
        }
        if (Configuration::get('Sendin_Api_Sms_Order_Status', '', $this->id_shop_group, $this->id_shop) && Configuration::get('Sendin_Sender_Order', '', $this->id_shop_group, $this->id_shop) && Configuration::get('Sendin_Sender_Order_Message', '', $this->id_shop_group, $this->id_shop)) {
            $data_tran_sms = array();
            $order_date = (isset($params['order']->date_upd)) ? $params['order']->date_upd : 0;
            if ($this->context->language->id == 1) {
                $ord_date = date('m/d/Y', strtotime($order_date));
            } else {
                $ord_date = date('d/m/Y', strtotime($order_date));
            }

            $firstname = (isset($address_delivery[0]['firstname'])) ? $address_delivery[0]['firstname'] : '';
            $lastname = (isset($address_delivery[0]['lastname'])) ? $address_delivery[0]['lastname'] : '';

            if ((Tools::strtolower($firstname) === Tools::strtolower($customer_result[0]['firstname'])) && (Tools::strtolower($lastname) === Tools::strtolower($customer_result[0]['lastname']))) {
                $civility_value = (isset($this->context->customer->id_gender)) ? $this->context->customer->id_gender : '';
                $lang_value = (isset($this->context->customer->id_lang)) ? $this->context->customer->id_lang : '';
            } else {
                $civility_value = '';
            }

            if (!empty($civility_value) && !empty($lang_value)) {
                $gender_name = Db::getInstance()->getRow('SELECT `name` FROM '._DB_PREFIX_.'gender_lang WHERE  `id_lang` = \''.pSQL($lang_value).'\' AND `id_gender` = \''.pSQL($civility_value).'\'');
                $civility = !empty($gender_name['name']) ? $gender_name['name'] : '';
            } else {
                $civility = '';
            }

            $total_pay = $total_to_pay.' '.$this->context->currency->iso_code;
            $msgbody = Configuration::get('Sendin_Sender_Order_Message', '', $this->id_shop_group, $this->id_shop);
            $civility_data = str_replace('{civility}', $civility, $msgbody);
            $fname = str_replace('{first_name}', $firstname, $civility_data);
            $lname = str_replace('{last_name}', $lastname."\r\n", $fname);
            $product_price = str_replace('{order_price}', $total_pay, $lname);
            $order_date = str_replace('{order_date}', $ord_date."\r\n", $product_price);
            $msgbody = str_replace('{order_reference}', $ref_num, $order_date);
            $data_tran_sms['from'] = Configuration::get('Sendin_Sender_Order', '', $this->id_shop_group, $this->id_shop);
            $data_tran_sms['text'] = $msgbody;
            $data_tran_sms['to'] = $number;
            $data_tran_sms['type'] = 'transactional';
            $mailin = $this->createObjMailin();
            $this->sendSmsApi($data_tran_sms);
        }

        if (Configuration::get('Sendin_Api_Key_Status', '', $this->id_shop_group, $this->id_shop) == 1 && Configuration::get('Sendin_Tracking_Status', '', $this->id_shop_group, $this->id_shop) == 1 && $customer_result[0]['newsletter'] == 1) {
            $this->tracking = $this->trackingResult();
            $config_value = $this->getApiConfigValue();

            if ($config_value->date_format == 'dd-mm-yyyy') {
                $date = date('d-m-Y');
            } else {
                $date = date('m-d-Y');
            }

            $list_id = str_replace('|', ',', Configuration::get('Sendin_Selected_List_Data', '', $this->id_shop_group, $this->id_shop));
            $sib_list_id = explode('|', $list_id);

            $attribute_data = array();
            $attribute_key = array();

            if (!empty($this->context->customer->firstname)) {
                $attribute_data[] = $this->context->customer->firstname;
                if ($config_value->language == 'fr') {
                    $attribute_key[] = 'PRENOM';
                } else {
                    $attribute_key[] = 'NAME';
                }
                $client = 1;
            }
            if (!empty($this->context->customer->lastname)) {
                $attribute_data[] = $this->context->customer->lastname;
                if ($config_value->language == 'fr') {
                    $attribute_key[] = 'NOM';
                } else {
                    $attribute_key[] = 'SURNAME';
                }
            }
            if (!empty($number)) {
                $attribute_data[] = $number;
                $attribute_key[] = 'SMS';
            }
            if (!empty($ref_num)) {
                $attribute_data[] = $ref_num;
                $attribute_key[] = 'ORDER_ID';
            }
            if (!empty($date)) {
                $attribute_data[] = $date;
                $attribute_key[] = 'ORDER_DATE';
            }
            if (!empty($total_to_pay)) {
                $attribute_data[] = Tools::safeOutput($total_to_pay);
                $attribute_key[] = 'ORDER_PRICE';
            }
            if ($client >= 0) {
                $attribute_data[] = $client;
                $attribute_key[] = 'CLIENT';
            }
            $mailin = $this->createObjMailin();
            $blacklisted_value = 0;
            $attr_key_val = array();
            $i = 0;
            foreach ($attribute_key as $val) {
                $attr_key_val[$val] = $attribute_data[$i];
                $i = $i + 1;
            }
            $data = array('email' => $this->context->customer->email,
            'attributes' => $attr_key_val,
            'blacklisted' => $blacklisted_value,
            'listid' => $sib_list_id,
            );
            $mailin->createUpdateUser($data);
        } elseif ($customer_result[0]['newsletter'] == 1 && !empty($this->context->customer->email)) {
            $list_id = str_replace('|', ',', Configuration::get('Sendin_Selected_List_Data', '', $this->id_shop_group, $this->id_shop));
            $sib_list_id = explode('|', $list_id);
            $config_value = $this->getApiConfigValue();
            $attribute_data = array();
            $attribute_key = array();

            if (!empty($this->context->customer->firstname)) {
                $attribute_data[] = $this->context->customer->firstname;
                if (!empty($config_value->language) && $config_value->language == 'fr') {
                    $attribute_key[] = 'PRENOM';
                } else {
                    $attribute_key[] = 'NAME';
                }
                $client = 1;
            }
            if (!empty($this->context->customer->lastname)) {
                $attribute_data[] = $this->context->customer->lastname;
                if (!empty($config_value->language) && $config_value->language == 'fr') {
                    $attribute_key[] = 'NOM';
                } else {
                    $attribute_key[] = 'SURNAME';
                }
            }
            if (!empty($number)) {
                $attribute_data[] = $number;
                $attribute_key[] = 'SMS';
            }

            if ($client >= 0) {
                $attribute_data[] = $client;
                $attribute_key[] = 'CLIENT';
            }
            $mailin = $this->createObjMailin();
            $blacklisted_value = 0;
            $attr_key_val = array();
            $i = 0;
            foreach ($attribute_key as $val) {
                $attr_key_val[$val] = $attribute_data[$i];
                $i = $i + 1;
            }
            $data = array('email' => $this->context->customer->email,
            'attributes' => $attr_key_val,
            'blacklisted' => $blacklisted_value,
            'listid' => $sib_list_id,
            );
            $mailin->createUpdateUser($data);
        }

        $automation_Key = Configuration::get('Sendin_Automation_Key', '', $this->id_shop_group, $this->id_shop);
        $abandoned_status = Configuration::get('Sendin_Abandoned_Status', '', $this->id_shop_group, $this->id_shop);
        if (!empty($automation_Key) && $abandoned_status == 1) {
            $this->cartOrderConfirm($params, $address_billing, $address_delivery, $ref_num);
        }
    }

    /**
     * Method is used to send test email to the user.
     */
    private function sendMail($email, $title)
    {
        $country_iso = Tools::strtolower($this->context->language->iso_code);
        if (is_dir(dirname(__FILE__).'/mails/'.$country_iso) != true) {
            $result = Db::getInstance()->getRow('SELECT `id_lang` FROM '._DB_PREFIX_.'lang WHERE `iso_code` = \'en\'');
            $this->context->language->id = $result['id_lang'];
        }

        $toname = explode('@', $email);
        $toname = preg_replace('/[^a-zA-Z0-9]+/', ' ', $toname[0]);

        return Mail::Send((int) $this->context->language->id, 'sendinsmtp_conf', Mail::l($title, (int) $this->context->language->id), array('{title}' => $title), $email, $toname, $this->l('contact@sendinblue.com'), $this->l('Sendinblue'), null, null, dirname(__FILE__).'/mails/');
    }

    public function sendNotifySms($email, $id_lang, $id_shop_group, $id_shop)
    {
        $country_iso = Db::getInstance()->getRow('SELECT `iso_code` FROM '._DB_PREFIX_.'lang WHERE  `id_lang` = \''.pSQL($id_lang).'\'');
        $iso_code = Tools::strtolower($country_iso['iso_code']);
        if (is_dir(dirname(__FILE__).'/mails/'.$iso_code) != true) {
            $result = Db::getInstance()->getRow('SELECT `id_lang` FROM '._DB_PREFIX_.'lang WHERE `iso_code` = \'en\'');
            $id_lang = $result['id_lang'];
        }
        $title = '[Sendinblue] Notification : Credits SMS';
        $site_name = Configuration::get('PS_SHOP_NAME');
        $present_credit = $this->getSmsCredit($id_shop_group, $id_shop);
        $toname = explode('@', $email);
        $toname = preg_replace('/[^a-zA-Z0-9]+/', ' ', $toname[0]);

        return Mail::Send((int) $id_lang, 'sendinsms_notify', Mail::l($title, (int) $id_lang), array('{title}' => $title, '{present_credit}' => $present_credit, '{site_name}' => $site_name), $email, $toname, $this->l('contact@sendinblue.com'), $this->l('Sendinblue'), null, null, dirname(__FILE__).'/mails/');
    }

    public function checkMobileNumber($number, $call_prefix)
    {
        $number = preg_replace('/\s+/', '', $number);
        $charone = Tools::substr($number, 0, 1);
        $chartwo = Tools::substr($number, 0, 2);

        if (preg_match('/^'.$call_prefix.'/', $number)) {
            return '00'.$number;
        } elseif ($charone == '0' && $chartwo != '00') {
            if (preg_match('/^0'.$call_prefix.'/', $number)) {
                return '00'.Tools::substr($number, 1);
            } else {
                return '00'.$call_prefix.Tools::substr($number, 1);
            }
        } elseif ($chartwo == '00') {
            if (preg_match('/^00'.$call_prefix.'/', $number)) {
                return $number;
            } else {
                return '00'.$call_prefix.Tools::substr($number, 2);
            }
        } elseif ($charone == '+') {
            if (preg_match('/^\+'.$call_prefix.'/', $number)) {
                return '00'.Tools::substr($number, 1);
            } else {
                return '00'.$call_prefix.Tools::substr($number, 1);
            }
        } elseif ($charone != '0') {
            return '00'.$call_prefix.$number;
        }
    }

    /**
     * Retrieve customers by email address.
     *
     * @static
     *
     * @param $email
     *
     * @return array
     */
    public function getCustomersByEmail($email)
    {
        $sql = 'SELECT *
            FROM `'._DB_PREFIX_.'customer`
            WHERE `email` = \''.pSQL($email).'\'';

        return Db::getInstance()->ExecuteS($sql);
    }

    public function getAllCustomers()
    {
        $id_shop = !empty($this->id_shop) ? $this->id_shop : 'NULL';
        $id_shop_group = !empty($this->id_shop_group) ? $this->id_shop_group : 'NULL';
        $condition = $this->conditionalValueSecond($id_shop_group, $id_shop);
        $sql = 'SELECT C.id_customer, C.firstname, C.lastname, C.email, C.id_gender, C.newsletter, C.newsletter_date_add FROM '._DB_PREFIX_.'customer as C '.$condition;

        return Db::getInstance()->ExecuteS($sql);
    }

    public function conditionalValueOrder($id_shop_group, $id_shop)
    {
        $id_shop_group = !empty($id_shop_group) ? $id_shop_group : 'NULL';
        $id_shop = !empty($id_shop) ? $id_shop : 'NULL';

        if ($id_shop === 'NULL' && $id_shop_group === 'NULL') {
            $condition = '';
        } elseif ($id_shop_group != 'NULL' && $id_shop === 'NULL') {
            $condition = 'AND id_shop_group ='.$id_shop_group;
        } else {
            $condition = 'AND id_shop_group ='.$id_shop_group.' AND id_shop ='.$id_shop;
        }

        return $condition;
    }

    public function getAllCustomersofOrder($id_shop_group, $id_shop)
    {
        $id_shop = !empty($id_shop) ? $id_shop : 'NULL';
        $id_shop_group = !empty($id_shop_group) ? $id_shop_group : 'NULL';
        $condition = $this->conditionalValueOrder($id_shop_group, $id_shop);
        $sql = 'SELECT id_customer, firstname, lastname, email FROM '._DB_PREFIX_.'customer WHERE newsletter = 1 '.$condition;

        return Db::getInstance()->ExecuteS($sql);
    }

    /**
     * API config value from Sendinblue.
     */
    public function getApiConfigValue($id_shop_group = null, $id_shop = null)
    {
        if ($id_shop === null) {
            $id_shop = $this->id_shop;
        }
        if ($id_shop_group === null) {
            $id_shop_group = $this->id_shop_group;
        }

        $mailin = $this->createObjMailin();
        $result = $mailin->getPluginConfig();

        return (object) $result['data'];
    }

    public function updateSmsSendinStatus($email, $sms_blacklist_status, $id_shop_group, $id_shop)
    {
        if (!$this->syncSetting($id_shop_group, $id_shop)) {
            return false;
        }

        if ($sms_blacklist_status == 0) {
            $sib_blacklisted_sms = 1;
        } elseif ($sms_blacklist_status == 1) {
            $sib_blacklisted_sms = 0;
        }

        $mailin = $this->createObjMailin();

        $data = array('email' => $email,
        'blacklisted_sms' => $sib_blacklisted_sms,
        );

        $mailin->createUpdateUser($data);
    }

    /**
     * Fetches all the subscribers of PrestaShop and adds them to the Sendinblue database for SMS campaign.
     */
    private function smsCampaignList()
    {
        $id_shop = !empty($this->id_shop) ? $this->id_shop : 'NULL';
        $id_shop_group = !empty($this->id_shop_group) ? $this->id_shop_group : 'NULL';
        if ($id_shop === 'NULL' && $id_shop_group === 'NULL') {
            $condition = '';
        } elseif ($id_shop_group != 'NULL' && $id_shop === 'NULL') {
            $condition = 'AND C.id_shop_group ='.$id_shop_group;
        } else {
            $condition = 'AND C.id_shop_group ='.$id_shop_group.' AND C.id_shop ='.$id_shop;
        }

        // select only newly added users and registered user
        $register_result = Db::getInstance()->ExecuteS('
            SELECT  C.id_customer, C.newsletter, C.newsletter_date_add, C.email, C.firstname, C.lastname, C.birthday, C.id_gender, C.id_lang, PSA.id_address, PSA.date_upd, PSA.phone_mobile, PSA.phone, '._DB_PREFIX_.'country.call_prefix
            FROM '._DB_PREFIX_.'customer as C LEFT JOIN '._DB_PREFIX_.'address PSA ON (C.id_customer = PSA.id_customer and (PSA.id_customer, PSA.date_upd) IN
            (SELECT id_customer, MAX(date_upd) upd  FROM '._DB_PREFIX_.'address GROUP BY '._DB_PREFIX_.'address.id_customer))
            LEFT JOIN '._DB_PREFIX_.'country ON '._DB_PREFIX_.'country.id_country =  PSA.id_country
            WHERE C.newsletter_date_add > 0 '.$condition.'
            GROUP BY C.id_customer');

        $value_langauge = $this->getApiConfigValue();
        $register_email = array();

        // registered user store in array
        if ($register_result) {
            foreach ($register_result as $register_row) {
                if (!empty($register_row['phone_mobile']) || !empty($register_row['phone'])) {
                    $sms_data = !empty($register_row['phone_mobile']) ? $register_row['phone_mobile'] : $register_row['phone'];
                    $mobile = $this->checkMobileNumber($sms_data, $register_row['call_prefix']);
                    $birthday = (isset($register_row['birthday'])) ? $register_row['birthday'] : '';

                    if ($value_langauge->date_format == 'dd-mm-yyyy') {
                        $birthday = date('d-m-Y', strtotime($birthday));
                    } else {
                        $birthday = date('m-d-Y', strtotime($birthday));
                    }

                    $civility_value = (isset($register_row['id_gender'])) ? $register_row['id_gender'] : '';
                    $lang_value = (isset($lang_value['id_lang'])) ? $lang_value['id_lang'] : '';
                    if (!empty($civility_value) && !empty($lang_value)) {
                        $gender_name = Db::getInstance()->getRow('SELECT `name` FROM '._DB_PREFIX_.'gender_lang WHERE  `id_lang` = \''.pSQL($lang_value).'\' AND `id_gender` = \''.pSQL($civility_value).'\'');
                        $civility = !empty($gender_name['name']) ? $gender_name['name'] : '';
                    } else {
                        $civility = '';
                    }

                    if ($value_langauge->language == 'fr') {
                        $register_email[] = array('EMAIL' => $register_row['email'], 'CIV' => $civility, 'PRENOM' => $register_row['firstname'], 'NOM' => $register_row['lastname'], 'DDNAISSANCE' => $birthday, 'CLIENT' => 1, 'SMS' => $mobile);
                    } else {
                        $register_email[] = array('EMAIL' => $register_row['email'], 'CIV' => $civility, 'NAME' => $register_row['firstname'], 'SURNAME' => $register_row['lastname'], 'BIRTHDAY' => $birthday, 'CLIENT' => 1, 'SMS' => $mobile);
                    }
                }
            }
        }

        return Tools::jsonEncode($register_email);
    }

    /**
     * Send template email by sendinblue for newsletter subscriber user  .
     */
    public function sendWsTemplateMail($to, $templateid = false)
    {
        $id_shop = !empty($this->id_shop) ? $this->id_shop : 'NULL';
        $id_shop_group = !empty($this->id_shop_group) ? $this->id_shop_group : 'NULL';

        $key = Configuration::get('Sendin_Api_Key', '', $id_shop_group, $id_shop);
        $mailin = $this->createObjMailin();
        if (empty($key)) {
            $id_shop = 'NULL';
            $id_shop_group = 'NULL';
            $key = Configuration::get('Sendin_Api_Key', '', $id_shop_group, $id_shop);
        }
        $Sendin_Confirm_Type = Configuration::get('Sendin_Confirm_Type', '', $id_shop_group, $id_shop);
        if (empty($Sendin_Confirm_Type) || $Sendin_Confirm_Type == 'nocon') {
            return false;
        }

        $attr_array = array();
        if (!$templateid) {
            if ($Sendin_Confirm_Type == 'simplemail') {
                $temp_id_value = Configuration::get('Sendin_Template_Id', '', $id_shop_group, $id_shop);
                $templateid = !empty($temp_id_value) ? $temp_id_value : '';
            }

            if ($Sendin_Confirm_Type == 'doubleoptin') {
                $path_resp = '';
                $shop_name = Configuration::get('PS_SHOP_NAME');
                $email_user = $this->encryptDecrypt('encrypt', $to);
                $path_resp = $this->local_path.'sendinblue/MailResponce.php?'.http_build_query(array('token' => Tools::encrypt(Configuration::get('PS_SHOP_NAME')), 'resp_val' => $email_user), null, '&');
                $sender_email = '';
                $senders_data = Configuration::get('Sendin_Sender_Value', '', $id_shop_group, $id_shop);
                $sender_val = Tools::jsonDecode($senders_data);
                if (!empty($sender_val)) {
                    $sender_name = $sender_val->from_name;
                    $sender_email = $sender_val->from_email;
                }
                if ($sender_email == '') {
                    $sender_email = 'no-reply@sendinblue.com';
                    $sender_name = 'Sendinblue';
                }
                $template_id = Configuration::get('Sendin_Dubleoptin_Template_Id', '', $id_shop_group, $id_shop);
                if ((int) $template_id > 0) {
                    $data = array(
                        'id' => $template_id,
                    );
                    $response = $mailin->getCampaignV2($data);
                    if ($response['code'] == 'success') {
                        $html_content = $response['data'][0]['html_content'];
                        if (trim($response['data'][0]['subject']) != '') {
                            $subject = trim($response['data'][0]['subject']);
                        }
                        if (($response['data'][0]['from_name'] != '[DEFAULT_FROM_NAME]') &&
                            ($response['data'][0]['from_email'] != '[DEFAULT_FROM_EMAIL]') &&
                            ($response['data'][0]['from_email'] != '')) {
                            $sender_name = $response['data'][0]['from_name'];
                            $sender_email = $response['data'][0]['from_email'];
                        }
                        $transactional_tags = $response['data'][0]['campaign_name'];
                    }
                } else {
                    return $this->defaultDoubleoptinTemp($to, $path_resp);
                }

                $to = array($to => '');
                $from = array($sender_email, $sender_name);
                $search_value = "({{\s*doubleoptin\s*}})";

                $html_content = str_replace('{title}', $subject, $html_content);
                $html_content = str_replace('https://[DOUBLEOPTIN]', '{subscribe_url}', $html_content);
                $html_content = str_replace('http://[DOUBLEOPTIN]', '{subscribe_url}', $html_content);
                $html_content = str_replace('https://{{doubleoptin}}', '{subscribe_url}', $html_content);
                $html_content = str_replace('http://{{doubleoptin}}', '{subscribe_url}', $html_content);
                $html_content = str_replace('https://{{ doubleoptin }}', '{subscribe_url}', $html_content);
                $html_content = str_replace('http://{{ doubleoptin }}', '{subscribe_url}', $html_content);
                $html_content = str_replace('[DOUBLEOPTIN]', '{subscribe_url}', $html_content);
                $html_content = preg_replace($search_value, '{subscribe_url}', $html_content);
                $html_content = str_replace('{site_domain}', $shop_name, $html_content);
                $html_content = str_replace('{unsubscribe_url}', $path_resp, $html_content);
                $html_content = str_replace('{subscribe_url}', $path_resp, $html_content);

                $headers = array('Content-Type' => 'text/html;charset=iso-8859-1', 'X-Mailin-tag' => $transactional_tags);
                $data = array('to' => $to,
                    'cc' => array(),
                    'bcc' => array(),
                    'from' => $from,
                    'replyto' => array(),
                    'subject' => $subject,
                    'text' => '',
                    'html' => $html_content,
                    'attachment' => array(),
                    'headers' => $headers,
                    'inline_image' => array(),
                );

                return $mailin->sendEmail($data);
            }
        }

        // should be the campaign id of template created on mailin. Please remember this template should be active than only it will be sent, otherwise it will return error.
        if (!empty($templateid)) {
            $data = array('id' => $templateid,
            'to' => $to,
            'attr' => $attr_array,
            );
            $mailin->sendTransactionalTemplate($data);
        }
    }

    /**
     * send double optin template and manage.
     */
    public function defaultDoubleoptinTemp($subscriber_email, $doubleoptin_url)
    {
        $id_shop = !empty($this->id_shop) ? $this->id_shop : 'NULL';
        $id_shop_group = !empty($this->id_shop_group) ? $this->id_shop_group : 'NULL';
        $id_lang = $this->langid;
        $title = $this->l('Please confirm your subscription');
        $smtp_result = Tools::jsonDecode(Configuration::get('Sendin_Smtp_Result', '', $id_shop_group, $id_shop));
        if ($id_shop_group = 'NULL' && $id_shop === 'NULL' && empty($smtp_result)) {
            $id_shop_group = 1;
            $id_shop = 1;
            $smtp_result = Tools::jsonDecode(Configuration::get('Sendin_Smtp_Result', '', $id_shop_group, $id_shop));
        }
        $country_iso = Db::getInstance()->getRow('SELECT `iso_code` FROM '._DB_PREFIX_.'lang WHERE  `id_lang` = \''.pSQL($this->langid).'\'');
        $iso_code = Tools::strtolower($country_iso['iso_code']);
        if (is_dir(dirname(__FILE__).'/mails/'.$iso_code) != true) {
            $result = Db::getInstance()->getRow('SELECT `id_lang` FROM '._DB_PREFIX_.'lang WHERE `iso_code` = \'en\'');
            $id_lang = $result['id_lang'];
        }
        $site_name = Configuration::get('PS_SHOP_NAME');
        $toname = explode('@', $subscriber_email);
        $toname = preg_replace('/[^a-zA-Z0-9]+/', ' ', $toname[0]);

        return Mail::Send((int) $id_lang, 'doubleoptin_temp', Mail::l($title, (int) $id_lang), array('{double_optin}' => $doubleoptin_url, '{site_name}' => $site_name), $subscriber_email, $toname, $this->l('contact@sendinblue.com'), $this->l('Sendinblue'), null, null, dirname(__FILE__).'/mails/');
    }

    /**
     * Get all temlpate list id by sendinblue.
     */
    public function templateDisplay()
    {
        $mailin = $this->createObjMailin();
        $data = array('type' => 'template',
         'status' => 'temp_active',
         'page' => 1,
         'page_limit' => 100,
        );
        $temp_result = $mailin->getCampaignsV2($data);

        return $temp_result['data'];
    }

    /**
     * Return customer addresses.
     *
     * @return array Addresses
     */
    public function getCustomerAddresses($id)
    {
        return Db::getInstance(_PS_USE_SQL_SLAVE_)->ExecuteS('
            SELECT a.*, cl.`name` AS country, s.name AS state, s.iso_code AS state_iso
            FROM `'._DB_PREFIX_.'address` a
            LEFT JOIN `'._DB_PREFIX_.'country` c ON (a.`id_country` = c.`id_country`)
            LEFT JOIN `'._DB_PREFIX_.'country_lang` cl ON (c.`id_country` = cl.`id_country`)
            LEFT JOIN `'._DB_PREFIX_.'state` s ON (s.`id_state` = a.`id_state`)
            WHERE `id_customer` = '.(int) $id.' AND a.`deleted` = 0');
    }

    /**
     * Update temlpate id in prestashop configuration.
     */
    public function saveTemplateValue()
    {
        $value_template_id = Tools::getValue('template');
        $subscribe_confirm_type = Tools::getValue('subscribe_confirm_type');
        $optin_redirect_url_check = Tools::getValue('optin_redirect_url_check');
        $doubleoptin_redirect_url = Tools::getValue('doubleoptin-redirect-url');
        $final_confirm_email = Tools::getValue('final_confirm_email');
        $final_temp_id = Tools::getValue('template_final');
        $optin_temp_id = Tools::getValue('optin_template_final');

        Configuration::updateValue('Sendin_Template_Id', $value_template_id, '', $this->id_shop_group, $this->id_shop);

        Configuration::updateValue('Sendin_Optin_Url_Check', $optin_redirect_url_check, '', $this->id_shop_group, $this->id_shop);

        Configuration::updateValue('Sendin_doubleoptin_redirect', $doubleoptin_redirect_url, '', $this->id_shop_group, $this->id_shop);

        Configuration::updateValue('Sendin_final_confirm_email', $final_confirm_email, '', $this->id_shop_group, $this->id_shop);
        //double optin template id save in prestashop data base.
        if (!empty($optin_temp_id)) {
            Configuration::updateValue('Sendin_Dubleoptin_Template_Id', $optin_temp_id, '', $this->id_shop_group, $this->id_shop);
        }

        if (!empty($final_temp_id)) {
            Configuration::updateValue('Sendin_Final_Template_Id', $final_temp_id, '', $this->id_shop_group, $this->id_shop);
        }
        //update sender detail in db get from SIB.

        $this->updateSender();
        if (!empty($subscribe_confirm_type)) {
            Configuration::updateValue('Sendin_Confirm_Type', $subscribe_confirm_type, '', $this->id_shop_group, $this->id_shop);
            if ($subscribe_confirm_type == 'doubleoptin') {
                $res_optin = $this->checkFolderListDoubleoptin();
                if (!empty($res_optin['optin_id'])) {
                    Configuration::updateValue('Sendin_optin_list_id', $res_optin['optin_id'], '', $this->id_shop_group, $this->id_shop);
                }
                $api_key = Configuration::get('Sendin_Api_Key', '', $this->id_shop_group, $this->id_shop);
                $mailin = $this->createObjMailin($api_key);
                $data_attr = array();
                $data_attr = array('type' => 'category',
                    'data' => '[ {"name": "DOUBLE_OPT-IN", "enumeration": [ {"label": "Yes"}, {"label": "No"} ]} ]',
                );
                $mailin->createAttribute($data_attr);
                if ($res_optin === false) {
                    $data = array('name' => 'FORM');
                    $folder_res = $mailin->createFolder($data);
                    $folder_id = $folder_res['data']['id'];
                    if (!empty($folder_id)) {
                        $data = array(
                        'list_name' => 'Temp - DOUBLE OPTIN',
                        'list_parent' => $folder_id,
                        );
                        $list_resp = $mailin->createList($data);
                        $list_id = $list_resp['data']['id'];
                    }
                    Configuration::updateValue('Sendin_optin_list_id', $list_id, '', $this->id_shop_group, $this->id_shop);
                }
            }
        }
    }

    public function checkFolderListDoubleoptin()
    {
        $api_key = Configuration::get('Sendin_Api_Key', '', $this->id_shop_group, $this->id_shop);

        if ($api_key == '') {
            return false;
        }

        $mailin = $this->createObjMailin();
        $data_api = array('page' => 1,
          'page_limit' => 50,
        );
        $folder_resp = $mailin->getFolders($data_api);
        //folder id
        $s_array = array();
        $return = false;
        if (!empty($folder_resp['data']['folders'])) {
            foreach ($folder_resp['data']['folders'] as $value) {
                if (Tools::strtolower($value['name']) == 'form') {
                    if (!empty($value['lists'])) {
                        foreach ($value['lists'] as $val) {
                            if ($val['name'] == 'Temp - DOUBLE OPTIN') {
                                $s_array['optin_id'] = $val['id'];
                            }
                        }
                    }
                }
            }
            if (count($s_array) > 0) {
                $return = $s_array;
            } else {
                $return = false;
            }
        }

        return $return;
    }

    /**
     * Check and Update Sendinblue status.
     */
    public function enableSendinblueBlock()
    {
        $sendin_status = Module::isEnabled('sendinblue');
        if (empty($sendin_status) || $sendin_status == 0) {
            Module::enableByName('sendinblue');
        }
    }

    /**
     * Make a condition for query.
     */
    public function conditionalValue()
    {
        $id_shop_group = !empty($this->id_shop_group) ? $this->id_shop_group : 'NULL';
        $id_shop = !empty($this->id_shop) ? $this->id_shop : 'NULL';

        if ($id_shop === 'NULL' && $id_shop_group === 'NULL') {
            $condition = '';
        } elseif ($id_shop_group !== 'NULL' && $id_shop === 'NULL') {
            $condition = 'AND id_shop_group ='.$id_shop_group;
        } else {
            $condition = 'AND id_shop_group ='.$id_shop_group.' AND id_shop ='.$id_shop;
        }

        return $condition;
    }

    public function conditionalValueSecond($id_shop_group = null, $id_shop = null)
    {
        $id_shop_group = !empty($id_shop_group) ? $id_shop_group : 'NULL';
        $id_shop = !empty($id_shop) ? $id_shop : 'NULL';
        if ($id_shop === 'NULL' && $id_shop_group === 'NULL') {
            $condition = '';
        } elseif ($id_shop_group != 'NULL' && $id_shop === 'NULL') {
            $condition = 'WHERE C.id_shop_group ='.$id_shop_group;
        } else {
            $condition = 'WHERE C.id_shop_group ='.$id_shop_group.' AND C.id_shop ='.$id_shop;
        }

        return $condition;
    }

    /**
     * Make a condition after check ps version.
     */
    public function checkVersionCondition($id_shop_group)
    {
        $condition = 'and `id_shop_group` = '.(int) $id_shop_group.'';

        return $condition;
    }

    /**
     * check Default newsletter status enable or not.
     */
    public function defaultNlStatus()
    {
        $module_name = 'ps_emailsubscription';
        $data = Module::isInstalled($module_name);

        if ($data === false) {
            $data_resp = Module::getInstanceByName('ps_emailsubscription');
            if (!empty($data_resp)) {
                $data_resp->install();
            }
        }

        $block_resp = Module::isEnabled($module_name);
        if ($block_resp === false) {
            Module::enableByName($module_name);
        }

        $data_final = Module::isInstalled($module_name);
        if ($data_final === true) {
            return 1;
        } else {
            return 0;
        }
    }

    /**
     * encript/decript string function.
     */
    public function encryptDecrypt($action, $string)
    {
        $output = false;
        $encrypt_method = 'AES-256-CBC';
        $secret_key = 'sendinblue';
        $secret_iv = 'sendinblue';

        // hash
        $key = hash('sha256', $secret_key);

        // iv - encrypt method AES-256-CBC expects 16 bytes - else you will get a warning
        $iv = Tools::substr(hash('sha256', $secret_iv), 0, 16);

        if ($action == 'encrypt') {
            $output = openssl_encrypt($string, $encrypt_method, $key, 0, $iv);
        } elseif ($action == 'decrypt') {
            $output = openssl_decrypt($string, $encrypt_method, $key, 0, $iv);
        }

        return $output;
    }

    /**
     * create new web hookurl for unsubscribe responce.
     */
    public function createPsWebHook()
    {
        $web_hook = $this->local_path.'sendinblue/sendinWebHook.php?token='.Tools::encrypt(Configuration::get('PS_SHOP_NAME'));
        $api_key = Configuration::get('Sendin_Api_Key', '', $this->id_shop_group, $this->id_shop);
        if (($_SERVER['HTTP_HOST'] != 'localhost') && !empty($api_key)) {
            $mailin = $this->createObjMailin();
            $data_api = array('url' => $web_hook,
                'description' => 'prestashopWebHook',
                'events' => array('unsubscribe', 'spam', 'hard_bounce'),
                'is_plat' => 1, );
            $web_resp = $mailin->createWebhook($data_api);
            if ($web_resp['code'] == 'success' || $web_resp['message'] == 'URL already exist with Platform webhook.') {
                Configuration::updateValue('Sendin_Web_Hook_Status', 1);
                Configuration::updateValue('Sendin_Web_Hook_Recheck', 1);
            }
        }
    }

    /**
     * check port 587 open or not, for using Sendinblue smtp service.
     */
    public function checkPortStatus()
    {
        $relay_port_status = @fsockopen('smtp-relay.sendinblue.com', 587);
        if (!$relay_port_status) {
            return 0;
        }
    }

    /**
     * Update sender name (from name and from email) from Sendinblue for mail service.
     */
    public function updateSender()
    {
        $mailin = $this->createObjMailin();
        $data = array('option' => '');
        $response = $mailin->getSenders($data);
        if ($response['code'] == 'success') {
            $senders = array('id' => $response['data']['0']['id'], 'from_name' => $response['data']['0']['from_name'], 'from_email' => $response['data']['0']['from_email']);
            Configuration::updateValue('Sendin_Sender_Value', Tools::jsonEncode($senders), '', $this->id_shop_group, $this->id_shop);
        }
    }

    /**
     * create object for access data from Sendinblue threw API call.
     */
    public function createObjMailin($api_key = '')
    {
        if (empty($api_key)) {
            $api_key = Configuration::get('Sendin_Api_Key', '', $this->id_shop_group, $this->id_shop);
        }

        if (!empty($api_key)) {
            return new Psmailin($this->sib_api_url, $api_key);
        }
    }

    /**
     * Displays the tracking code in the code block.
     */
    public function automationTracking()
    {
        $automation_status = Configuration::get('Sendin_Automation_Status', '', $this->id_shop_group, $this->id_shop);
        $abandoned_status = Configuration::get('Sendin_Abandoned_Status', '', $this->id_shop_group, $this->id_shop);
        $this->context->smarty->assign('auto_status', $automation_status);
        $this->context->smarty->assign('abandoned_status', $abandoned_status);
        $this->context->smarty->assign('cl_version', $this->cl_version);

        return $this->display(__FILE__, 'views/templates/admin/automation.tpl');
    }

    /**
     * Check configration and add automation script in Header in PS site.
     */
    public function hookDisplayHeader($params)
    {
        if (!$this->checkModuleStatus()) {
            return false;
        }

        $version_nl = $this->newsletterVersion();
        if ($version_nl >= '2.6.0') {
            $this->context->controller->addJs($this->local_path.$this->name.'/views/js/sendinnlscript.js');
        }
        $automation_status = Configuration::get('Sendin_Automation_Status', '', $this->id_shop_group, $this->id_shop);
        if ($automation_status == 1) {
            $ma_email = isset($params['cookie']) ? $params['cookie']->email : '';
            $ma_key = Configuration::get('Sendin_Automation_Key', '', $this->id_shop_group, $this->id_shop);
            if (!empty($ma_key)) {
                return <<<EOT
                <script type="text/javascript">
                    (function() {
                        window.sib = { equeue: [], client_key: "$ma_key" };
                        /* OPTIONAL: email for identify request*/
                        window.sib.email_id = "$ma_email";
                        window.sendinblue = {}; for (var j = ['track', 'identify', 'trackLink', 'page'], i = 0; i < j.length; i++) { (function(k) { window.sendinblue[k] = function() { var arg = Array.prototype.slice.call(arguments); (window.sib[k] || function() { var t = {}; t[k] = arg; window.sib.equeue.push(t);})(arg[0], arg[1], arg[2]);};})(j[i]);}var n = document.createElement("script"),i = document.getElementsByTagName("script")[0]; n.type = "text/javascript", n.id = "sendinblue-js", n.async = !0, n.src = "https://sibautomation.com/sa.js?key=" + window.sib.client_key, i.parentNode.insertBefore(n, i), window.sendinblue.page();
                    })();
                </script>
EOT;
            }
        }
    }

    /**
     * Displays Automation message after enable/disable script.
     */
    public function automationMsg()
    {
        $this->registerHook('header');
        $automation_status = Configuration::get('Sendin_Automation_Status', '', $this->id_shop_group, $this->id_shop);

        $automation_Key = Configuration::get('Sendin_Automation_Key', '', $this->id_shop_group, $this->id_shop);

        if ($automation_status == 1 && !empty($automation_Key)) {
            return $this->redirectPage($this->l('Your Marketing Automation script is installed correctly.'), 'SUCCESS');
        } elseif ($automation_status == 2 && empty($automation_Key)) {
            return $this->redirectPage($this->l("To activate Marketing Automation, please go to your Sendinblue's account or contact us at contact@sendinblue.com"), 'ERROR');
        } elseif ($automation_status == 0) {
            return $this->redirectPage($this->l('Your Marketing Automation script has been uninstalled'), 'ERROR');
        }
    }

    /**
     * Validate first name and last name.
     */
    public static function isCustomerName($name)
    {
        $validityPattern = Tools::cleanNonUnicodeSupport(
            '/^(?:[^0-9!<>,;?=+()\/\\@#"°*`{}_^$%:¤\[\]|\.。]|[\.。](?:\s|$))*$/u'
        );

        return preg_match($validityPattern, $name);
    }

    /**
     * Tracking Events
     * Abandoned Cart.
     */
    private function curlpost($data, $method)
    {
        $url = "https://in-automate.sendinblue.com/api/v2/$method";
        $automation_Key = Configuration::get('Sendin_Automation_Key', '', $this->id_shop_group, $this->id_shop);
        $headers = array(
            'Content-Type: application/json',
            'ma-key: '.$automation_Key,
        );

        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_HTTPHEADER => $headers,
            CURLOPT_URL => $url,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS => json_encode($data),
        ));
        curl_exec($curl);
        curl_close($curl);
    }

    /**
     * Tracking Events
     * Add product in cart.
     * actionCartSave
     * hookActionCartSave.
     */
    public function hookactionCartSave($params)
    {
        if (!$this->checkModuleStatus()) {
            return false;
        }
        $automation_Key = Configuration::get('Sendin_Automation_Key', '', $this->id_shop_group, $this->id_shop);
        $abandoned_status = Configuration::get('Sendin_Abandoned_Status', '', $this->id_shop_group, $this->id_shop);
        if (empty($automation_Key) || $abandoned_status != 1) {
            return false;
        }
        $cart = !empty($params['cart']) ? $params['cart'] : '';
        $cookie = !empty($params['cookie']) ? $params['cookie'] : '';

        $email = '';
        if ($this->context->customer) {
            if ($this->context->customer->isLogged()) {
                $email = $this->context->customer->email;
            }
        } elseif (!empty($cookie->email)) {
            $email = $cookie->email;
        }

        if (empty($email) || empty($cart) || empty($cart->id)) {
            return false;
        }
        $first_name = !empty($params['cookie']->customer_firstname) ? $params['cookie']->customer_firstname : '';
        $last_name = !empty($params['cookie']->customer_lastname) ? $params['cookie']->customer_lastname : '';
        $currency = new CurrencyCore($cart->id_currency);
        $my_currency = $currency->iso_code;
        $cart_id = $cart->id;
        $data = array(
            'email' => $email,
            'event' => '',
            'properties' => array(
            'FIRSTNAME' => $first_name,
            'LASTNAME' => $last_name,
                ),
                'eventdata' => array(
                    'id' => 'cart:'.$cart_id,
                    'data' => array(),
                ),
            );
        $products = array();
        $subtotal = 0;
        $subtotal_predisc = 0;
        $subtotal_taxinc = 0;
        $subtotal_predisc_taxinc = 0;
        $total = 0;
        $check_delete = Tools::getValue('delete');
        $image_type = ImageType::getFormatedName('home');
        $base = (Configuration::get('PS_SSL_ENABLED') ? 'https://' : 'http://');
        $link = new Link();
        $products_all = $cart->getProducts();
        if (!empty($products_all)) {
            foreach ($products_all as $product_data) {
                $image = $base.$link->getImageLink($product_data['link_rewrite'], $product_data['id_image'], $image_type);
                $url = $link->getProductLink(new Product((int) $product_data['id_product']));
                $quantity = !empty($product_data['quantity']) ? $product_data['quantity'] : 0;
                $size = '';
                if (!empty($product_data['attributes_small'])) {
                    $product_varient = explode('-', $product_data['attributes_small']);
                    $size = !empty($product_varient['0']) ? $product_varient['0'] : '';
                }
                // The tax rate percentage
                $tax_rate = !empty($product_data['rate']) ? $product_data['rate'] : 0;
                // Retail price, including tax, excluding sales discounts
                $price_predisc_taxinc = !empty($product_data['price_without_reduction']) ? $product_data['price_without_reduction'] : 0;
                // Retail price, excluding tax, excluding sales discounts
                $price_predisc_taxexc = $base_price = (100 * $price_predisc_taxinc) / (100 + $tax_rate);
                // Retail price, including tax, including sales discounts
                $price_taxinc = !empty($product_data['price_with_reduction']) ? $product_data['price_with_reduction'] : 0;
                // The monetary value of tax
                $tax_amount = ($base_price * $tax_rate) / 100;
                // The monetary value of discount, including tax
                $disc_amt_taxinc = $price_predisc_taxinc - $price_taxinc;
                // The discount percentage
                $disc_rate = round(($disc_amt_taxinc / $price_predisc_taxinc) * 100, 2);
                // The monetary value of discount, excluding tax
                $disc_amt_taxexc = ($disc_rate * $base_price) / 100;
                // Sum of (price_predisc * quantity ) = Sum of retail price, excluding tax, excluding sales discounts, excluding shipping, excluding vouchers
                $subtotal_predisc += $price_predisc_taxexc * $quantity;
                // Sum of (price * quantity ) = Sum of retail price, excluding tax, including sales discounts, excluding shipping, excluding vouchers
                $subtotal += !empty($product_data['price']) ? $product_data['price'] * $quantity : 0;
                // Sum of (price_predisc_taxinc * quantity ) = Sum of retail price, including tax, excluding sales discounts, excluding shipping, excluding vouchers
                $subtotal_predisc_taxinc += $price_predisc_taxinc * $quantity;
                // Sum of (price_taxinc * quantity ) = Sum of retail price, including tax, including sales discounts, excluding shipping, excluding vouchers
                $subtotal_taxinc += $price_taxinc * $quantity;

                $products[] = array(
                    'id' => !empty($product_data['id_product']) ? $product_data['id_product'] : '',
                    'name' => !empty($product_data['name']) ? $product_data['name'] : '',
                    'category' => !empty($product_data['category']) ? $product_data['category'] : '',
                    'description_short' => !empty($product_data['description_short']) ? $product_data['description_short'] : '',
                    'available_now' => !empty($product_data['available_now']) ? $product_data['available_now'] : '',
                    'price' => !empty($product_data['price']) ? $product_data['price'] : '',
                    'quantity' => !empty($product_data['quantity']) ? $product_data['quantity'] : '',
                    'variant_id_name' => !empty($product_data['attributes_small']) ? $product_data['attributes_small'] : '',
                    'variant_name' => !empty($product_data['attributes_small']) ? $product_data['attributes_small'] : '',
                    'variant_id' => '',
                    'size' => $size,
                    'sku' => !empty($product_data['reference']) ? $product_data['reference'] : '',
                    'quantity' => !empty($product_data['quantity']) ? $product_data['quantity'] : '',
                    'price' => !empty($product_data['price']) ? $product_data['price'] : '',
                    'url' => $url,
                    'image' => $image,
                    'price_predisc' => round($price_predisc_taxexc, 2),
                    'price_predisc_taxinc' => round($price_predisc_taxinc, 2),
                    'price_taxinc' => round($price_taxinc, 2),
                    'tax_amount' => round($tax_amount, 2),
                    'tax_rate' => $tax_rate,
                    'tax_name' => !empty($product_data['tax_name']) ? $product_data['tax_name'] : '',
                    'disc_amount' => round($disc_amt_taxexc, 2),
                    'disc_amount_taxinc' => round($disc_amt_taxinc, 2),
                    'disc_rate' => $disc_rate,
                );
            }
            // Note: to get all vouchers applied in total cart with Filter FILTER_ACTION_ALL_NOCAP(as it will give latest result even on ajax request)
            $voucher_discounts = $cart->getCartRules(CartRule::FILTER_ACTION_ALL_NOCAP);
            // Sum of value of vouchers, excluding tax
            $voucher_disc = 0;
            // Sum of value of vouchers, including tax
            $voucher_disc_taxinc = 0;
            if (!empty($voucher_discounts) && is_array($voucher_discounts)) {
                foreach ($voucher_discounts as $voucher_discount) {
                    $voucher_disc += $voucher_discount['value_tax_exc'];
                    $voucher_disc_taxinc += $voucher_discount['value_real'];
                }
            }
            // Round off these total types values to 2 decimal places
            $subtotal_predisc = round($subtotal_predisc, 2);
            $subtotal = round($subtotal, 2);
            $subtotal_predisc_taxinc = round($subtotal_predisc_taxinc, 2);
            $subtotal_taxinc = round($subtotal_taxinc, 2);
            $voucher_disc = round($voucher_disc, 2);
            $voucher_disc_taxinc = round($voucher_disc_taxinc, 2);

            // Shipping cost, excluding tax (its already round off to 2 decimal places)
            $shipping = $cart->getOrderTotal(false, Cart::ONLY_SHIPPING);
            // Shipping cost, including tax (its already round off to 2 decimal places)
            $shipping_taxinc = $cart->getOrderTotal(true, Cart::ONLY_SHIPPING);
            // Sum of subtotal + discount + shipping = Sum of retail price, excluding tax, including sales discounts, including shipping cost (excluding tax), including vouchers (excluding tax)
            $total_before_tax = $subtotal + $shipping - $voucher_disc;
            // Sum of subtotal_taxinc + discount_taxinc + shipping_taxinc = Sum of retail price, including tax, including sales discounts, including shipping (including tax), including vouchers (including tax)
            $total = $subtotal_taxinc + $shipping_taxinc - $voucher_disc_taxinc;

            $tax_total = $total - $subtotal;
            $data['eventdata']['data']['subtotal_predisc'] = $subtotal_predisc;
            $data['eventdata']['data']['subtotal'] = $subtotal;
            $data['eventdata']['data']['subtotal_predisc_taxinc'] = $subtotal_predisc_taxinc;
            $data['eventdata']['data']['subtotal_taxinc'] = $subtotal_taxinc;
            $data['eventdata']['data']['shipping'] = $shipping;
            $data['eventdata']['data']['shipping_taxinc'] = $shipping_taxinc;
            $data['eventdata']['data']['total_before_tax'] = $total_before_tax;
            $data['eventdata']['data']['tax'] = $tax_total;
            $data['eventdata']['data']['discount'] = $voucher_disc;
            $data['eventdata']['data']['discount_taxinc'] = $voucher_disc_taxinc;
            $data['eventdata']['data']['total'] = $total;
            $data['eventdata']['data']['revenue'] = $total;
            $data['eventdata']['data']['url'] = $this->context->link->getPageLink('order.php', true);
            $data['eventdata']['data']['currency'] = $my_currency;
            $data['eventdata']['data']['items'] = $products;
            if (!empty($products)) {
                $data['event'] = 'cart_updated';
                $this->curlpost($data, 'trackEvent');
            }
        } elseif ($check_delete) {
            $data['event'] = 'cart_deleted';
            $data['eventdata']['data']['items'] = $products;
            $this->curlpost($data, 'trackEvent');
        }
        //end else deleted
    }

    /*
     * Tracking Events
     * Abandoned Cart order confirmation.
    */
    public function cartOrderConfirm($params, $address_billing, $address_delivery, $ref_num)
    {
        $email = !empty($this->context->customer->email) ? $this->context->customer->email : '';
        $first_name = !empty($this->context->customer->firstname) ? $this->context->customer->firstname : '';
        $last_name = !empty($this->context->customer->lastname) ? $this->context->customer->lastname : '';
        $cart_id = (isset($params['order']->id_cart)) ? $params['order']->id_cart : '';
        $data = array(
            'email' => $email,
            'event' => 'order_completed',
            'properties' => array(
                'FIRSTNAME' => $first_name,
                'LASTNAME' => $last_name,
            ),
            'eventdata' => array(
                'id' => 'cart:'.$cart_id,
                'data' => array(),
            ),
        );
        $id_currency = !empty($params['order']->id_currency) ? $params['order']->id_currency : '';
        $my_currency = new Currency($id_currency);
        // Sum of value of vouchers, excluding tax
        $discount = !empty($params['order']->total_discounts) ? $params['order']->total_discounts : '';
        // sum of subtotal_taxinc + discount_taxinc + shipping_taxinc = Sum of retail price, including tax, including sales discounts, including shipping (including tax), including vouchers (including tax)
        $total = round($params['order']->total_paid, 2);
        // Sum of (price * quantity ) = Sum of retail price, excluding tax, including sales discounts, excluding shipping, excluding vouchers (for now it is equal to = total_before_tax)
        $subtotal = round($params['order']->total_paid_tax_excl, 2);
        $tax_total = $total - $subtotal;
        $order_date = (isset($params['order']->date_upd)) ? $params['order']->date_upd : 0;
        if ($this->context->language->id == 1) {
            $ord_date = date('m-d-Y', strtotime($order_date));
        } else {
            $ord_date = date('d-m-Y', strtotime($order_date));
        }
        $data['eventdata']['data']['id'] = $ref_num;
        $data['eventdata']['data']['date'] = !empty($ord_date) ? $ord_date : '';
        $data['eventdata']['data']['subtotal'] = $subtotal;
        $cart = new Cart($cart_id);
        if (!empty($cart)) {
            $data['eventdata']['data']['shipping'] = $cart->getOrderTotal(true, Cart::ONLY_SHIPPING);
            $data['eventdata']['data']['shipping_tax_exc'] = $cart->getOrderTotal(false, Cart::ONLY_SHIPPING);
        }
        $data['eventdata']['data']['total_before_tax'] = $subtotal;
        $data['eventdata']['data']['tax'] = $tax_total;
        $data['eventdata']['data']['discount'] = round($discount, 2);
        $data['eventdata']['data']['total'] = $total;
        $data['eventdata']['data']['revenue'] = $total;
        $data['eventdata']['data']['currency'] = $my_currency->iso_code;

        $order_obj = $params['order'];
        $products = array();
        $products_all = $order_obj->getProductsDetail();
        $site_path = Tools::getShopDomainSsl(true);
        $base = (Configuration::get('PS_SSL_ENABLED') ? 'https://' : 'http://');
        $image_type = ImageType::getFormatedName('home');
        $link = new Link();
        if (!empty($products_all)) {
            foreach ($products_all as $product_data) {
                $product_new = new Product($product_data['product_id'], false, $params['order']->id_lang);
                $image = Image::getCover($product_data['product_id']);
                $image_path = $base.$link->getImageLink($product_new->link_rewrite, $image['id_image'], $image_type);
                $url = $site_path.'/index.php?id_product='.$product_data['product_id'].'&controller=product';

                if ($product_data['total_price_tax_incl']) {
                    $total_price = round($product_data['total_price_tax_incl'], 2);
                }
                if (!empty($product_data['product_name'])) {
                    $product_attribute = explode(' - ', $product_data['product_name']);
                    $product_varient = !empty($product_attribute['1']) ? $product_attribute['1'] : '';
                }
                // Retail price, excluding tax, excluding sales discounts
                $price_predisc_taxexc = $base_price = !empty($product_data['product_price']) ? $product_data['product_price'] : 0;
                // Retail price, excluding tax, including sales discounts
                $price_taxexc = !empty($product_data['unit_price_tax_excl']) ? $product_data['unit_price_tax_excl'] : 0;
                // Retail price, including tax, including sales discounts
                $price_taxinc = !empty($product_data['unit_price_tax_incl']) ? $product_data['unit_price_tax_incl'] : 0;
                // tax amount on discount
                $tax_amount_on_disc = $price_taxinc - $price_taxexc;
                // The tax rate percentage
                $tax_rate = round(($tax_amount_on_disc / $price_taxexc) * 100, 2);
                // The monetary value of tax
                $tax_amount = ($base_price * $tax_rate) / 100;
                // Retail price, including tax, excluding sales discounts
                $price_predisc_taxinc = $price_predisc_taxexc + $tax_amount;
                // The monetary value of discount, excluding tax
                $disc_amt_taxexc = $price_predisc_taxexc - $price_taxexc;
                // The discount percentage
                $disc_rate = round((($disc_amt_taxexc / $base_price) * 100), 2);
                // The monetary value of discount, including tax
                $disc_amt_taxinc = ($disc_rate * $price_predisc_taxinc) / 100;

                $products[] = array(
                    'id' => !empty($product_data['product_id']) ? $product_data['product_id'] : '',
                    'name' => !empty($product_new->name) ? $product_new->name : '',
                    'category' => !empty($product_new->category) ? $product_new->category : '',
                    'description_short' => !empty($product_new->description_short) ? $product_new->description_short : '',
                    'available_now' => !empty($product_new->available_now) ? $product_new->available_now : '',
                    'price' => $total_price,
                    'quantity' => !empty($product_data['product_quantity']) ? $product_data['product_quantity'] : '',
                    'variant_id_name' => $product_varient,
                    'variant_name' => $product_varient,
                    'variant_id' => '',
                    'sku' => !empty($product_data['reference']) ? $product_data['reference'] : '',
                    'url' => $url,
                    'image' => $image_path,
                    'price_predisc' => round($price_predisc_taxexc, 2),
                    'price_predisc_taxinc' => round($price_predisc_taxinc, 2),
                    'price_taxinc' => round($price_taxinc, 2),
                    'tax_amount' => round($tax_amount, 2),
                    'tax_rate' => $tax_rate,
                    'tax_name' => !empty($product_data['tax_name']) ? $product_data['tax_name'] : '',
                    'disc_amount' => round($disc_amt_taxexc, 2),
                    'disc_amount_taxinc' => round($disc_amt_taxinc, 2),
                    'disc_rate' => $disc_rate,
                );
            }
            $data['eventdata']['data']['items'] = $products;
        }

        $code_delivery = !empty($address_delivery[0]['id_country']) ? $address_delivery[0]['id_country'] : 0;
        if (!empty($address_delivery[0]['phone_mobile']) || !empty($address_delivery[0]['phone'])) {
            $mobile_phone_delivery = !empty($address_delivery[0]['phone_mobile']) ? $address_delivery[0]['phone_mobile'] : $address_delivery[0]['phone'];
            $result_code_delivery = $this->countyCode($code_delivery);
            $number_delivery = $this->checkMobileNumber($mobile_phone_delivery, $result_code_delivery['call_prefix']);
        }

        if (!empty($address_delivery[0]['id_country'])) {
            $country_delivery = Country::getNameById($params['order']->id_lang, $address_delivery[0]['id_country']);
        }
        if (!empty($address_delivery[0]['id_state'])) {
            $state_delivery = State::getNameById($address_delivery[0]['id_state']);
        }
        $shipping_address = array(
            'firstname' => !empty($address_delivery[0]['firstname']) ? $address_delivery[0]['firstname'] : '',
            'lastname' => !empty($address_delivery[0]['lastname']) ? $address_delivery[0]['lastname'] : '',
            'company' => !empty($address_delivery[0]['company']) ? $address_delivery[0]['company'] : '',
            'phone' => !empty($number_delivery) ? $number_delivery : '',
            'country' => !empty($country_delivery) ? $country_delivery : '',
            'state' => !empty($state_delivery) ? $state_delivery : '',
            'address1' => !empty($address_delivery[0]['address1']) ? $address_delivery[0]['address1'] : '',
            'address2' => !empty($address_delivery[0]['address2']) ? $address_delivery[0]['address2'] : '',
            'city' => !empty($address_delivery[0]['city']) ? $address_delivery[0]['city'] : '',
            'zipcode' => !empty($address_delivery[0]['postcode']) ? $address_delivery[0]['postcode'] : '',
        );
        if (!empty($address_billing[0]['id_country'])) {
            $country_billing = Country::getNameById($params['order']->id_lang, $address_billing[0]['id_country']);
        }
        if (!empty($address_billing[0]['id_state'])) {
            $state_billing = State::getNameById($address_billing[0]['id_state']);
        }

        $code_billing = !empty($address_billing[0]['id_country']) ? $address_billing[0]['id_country'] : 0;
        if (!empty($address_billing[0]['phone_mobile']) || !empty($address_billing[0]['phone'])) {
            $mobile_phone = !empty($address_billing[0]['phone_mobile']) ? $address_billing[0]['phone_mobile'] : $address_billing[0]['phone'];
            $result_code = $this->countyCode($code_billing);
            $number_billing = $this->checkMobileNumber($mobile_phone, $result_code['call_prefix']);
        }
        $billing_address = array(
            'firstname' => !empty($address_billing[0]['firstname']) ? $address_billing[0]['firstname'] : '',
            'lastname' => !empty($address_billing[0]['lastname']) ? $address_billing[0]['lastname'] : '',
            'company' => !empty($address_billing[0]['company']) ? $address_billing[0]['company'] : '',
            'phone' => !empty($number_billing) ? $number_billing : '',
            'country' => !empty($country_billing) ? $country_billing : '',
            'state' => !empty($state_billing) ? $state_billing : '',
            'address1' => !empty($address_billing[0]['address1']) ? $address_billing[0]['address1'] : '',
            'address2' => !empty($address_billing[0]['address2']) ? $address_billing[0]['address2'] : '',
            'city' => !empty($address_billing[0]['city']) ? $address_billing[0]['city'] : '',
            'zipcode' => !empty($address_billing[0]['postcode']) ? $address_billing[0]['postcode'] : '',
        );
        $data['eventdata']['data']['shipping_address'] = $shipping_address;
        $data['eventdata']['data']['billing_address'] = $billing_address;
        $tax_discount = $params['order']->total_discounts_tax_incl - $params['order']->total_discounts;
        $data['eventdata']['data']['Miscellaneous'] = array(
            'cart_DISCOUNT' => round($params['order']->total_discounts, 2),
            'cart_DISCOUNT_TAX' => $tax_discount,
            'customer_USER ' => $params['order']->id_customer,
            'payment_METHOD' => $params['order']->payment,
            'payment_METHOD_TITLE' => $params['order']->module,
            'customer_IP_ADDRESS' => '',
            'customer_USER_AGENT' => '',
            'user_LOGIN' => '',
            'user_PASSWORD' => '',
            'refunded_AMOUNT' => 0,
        );
        $this->curlpost($data, 'trackEvent');
    }

    public function countyCode($code)
    {
        return Db::getInstance()->getRow('SELECT `call_prefix` FROM '._DB_PREFIX_.'country
            WHERE `id_country` = \''.(int) $code.'\'');
    }

    /**
     * Displays Abondoned status.
     */
    public function abandonedMsg()
    {
        $this->registerHook('actionCartSave');
        $abandoned_status = Configuration::get('Sendin_Abandoned_Status', '', $this->id_shop_group, $this->id_shop);

        $automation_Key = Configuration::get('Sendin_Automation_Key', '', $this->id_shop_group, $this->id_shop);

        if ($abandoned_status == 1 && !empty($automation_Key)) {
            return $this->redirectPage($this->l('Your Abandoned Cart script is installed correctly.'), 'SUCCESS');
        } elseif ($abandoned_status == 2 && empty($automation_Key)) {
            return $this->redirectPage($this->l("To activate Marketing Automation , please go to your Sendinblue's account or contact us at contact@sendinblue.com"), 'ERROR');
        } elseif ($abandoned_status == 0) {
            return $this->redirectPage($this->l('Your Abandoned cart script has been uninstalled'), 'ERROR');
        }
    }

    /**
     * Register hook for  Add product in cart.
     */
    public function registerAbandonedHook()
    {
        $this->registerHook('actionCartSave');
    }

    /**
     * Create Normal, Transactional, Calculated and Global attributes and their values
     * on Sendinblue platform. This is necessary for the PrestaShop to add subscriber's details.
     */
    public function createNewAttribute()
    {
        $api_key = Configuration::get('Sendin_Api_Key', '', $this->id_shop_group, $this->id_shop);
        if (!empty($api_key)) {
            $data_attr = array();
            $data_attr = array('DEFAULT_GROUP_ID' => 'TEXT');

            $mailin = $this->createObjMailin($api_key);
            $data = array('type' => 'normal',
            'data' => $data_attr,
            );
            $mailin->createAttribute($data);
            Configuration::updateValue('Sendin_Attribute_Status', 1, '', $this->id_shop_group, $this->id_shop);
        }
    }
    /**
    * Create new Attributes 'COMPANY' and 'POSTCODE' as per the client requirements.
    */
    public function createCompanyAndPostcodeAttr()
    {
        $api_key = Configuration::get('Sendin_Api_Key', '', $this->id_shop_group, $this->id_shop);
        if (!empty($api_key)) {
            $data_attr = array();
            $data_attr = array( 'COMPANY' => 'TEXT','POSTCODE' => 'TEXT');

            $mailin = $this->createObjMailin();
            $data = array('type' => 'normal',
            'data' => $data_attr,
            );
            $mailin->createAttribute($data);
            Configuration::updateValue('Sendin_New_Attribute_Status', 1, '', $this->id_shop_group, $this->id_shop);
        }
    }
    
     /**
     * For the Default PS Newsletter i.e. ps_emailsubscription version 2.6.0
     */
    public function sendinDefaultNewsletter($email)
    {
        $lang_id = !empty($this->context->language->id) ? $this->context->language->id : '';
        $guest_iso = Language::getIsoById((int) $lang_id);
        
        $this->newsletterRegistration($guest_iso);
        $this->email = Tools::safeOutput($email);
    }

    /**
     * For the Default PS Newsletter i.e. ps_emailsubscription version 2.6.0
     */
    public function newsletterVersion()
    {
        $module = Module::getInstanceByName('ps_emailsubscription');
        return $module->version;
    }

    /**
     * check google captcha response validate
     */
    public function checkCaptchaValidation()
    {
        $posted_values = Tools::getAllValues();
        if (array_key_exists("g-recaptcha-response", $posted_values) && empty($posted_values['g-recaptcha-response'])) {
            return false;
        } else {
            return true;
        }
    }

    //end file
}
