<?php
/**
 * 2007-2014 PrestaShop
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
 * @copyright 2007-2014 PrestaShop SA
 * @license   http://opensource.org/licenses/afl-3.0.php Academic Free License (AFL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 */

include(dirname(__FILE__) . '/../../config/config.inc.php');
include(dirname(__FILE__) . '/sendinblue.php');

$token = Tools::getValue('token');
$ps_shop_name = Configuration::get('PS_SHOP_NAME');
$ps_shop_name_enc = Tools::encrypt($ps_shop_name);
if ($token != $ps_shop_name_enc) {
    die('Error: Invalid Token');
}

$id_shop_group = Tools::getValue('id_shop_group', 'NULL');
$id_shop = Tools::getValue('id_shop', 'NULL');
$sendin = new Sendinblue();
$value_abandoned = Tools::getValue('abandoned_radio');
Configuration::updateValue('Sendin_Abandoned_Status', $value_abandoned, '', $id_shop_group, $id_shop);
$response = $sendin->trackingResult($id_shop_group, $id_shop);

if ($value_abandoned == 1) {
    $response = $sendin->trackingResult($id_shop_group, $id_shop);
    if (isset($response['marketing_automation']) && $response['marketing_automation']['enabled'] == '1') {
        $ma_key = $response['marketing_automation']['key'];
        echo 'enable';
    } else {
        $value_abandoned = 2;
        Configuration::updateValue('Sendin_Abandoned_Status', $value_abandoned, '', $id_shop_group, $id_shop);
        $ma_key = '';
        echo 'account_disable';
    }
    Configuration::updateValue('Sendin_Automation_Key', $ma_key, '', $id_shop_group, $id_shop);
} elseif ($value_abandoned == 0) {
    $ma_key = '';
    echo 'disable';
}
