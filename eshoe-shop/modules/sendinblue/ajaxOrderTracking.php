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
include_once(_PS_CLASS_DIR_ . '/../classes/Customer.php');
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
$api_key = Configuration::get('Sendin_Api_Key', '', $id_shop_group, $id_shop);
if (!empty($api_key)) {
    $mailin = new Psmailin('https://api.sendinblue.com/v2.0', $api_key);
}

$sendin_order_track_status = Configuration::get('Sendin_order_tracking_Status', '', $id_shop_group, $id_shop);
if ($sendin_order_track_status == 0) {
    $file_name = rand();
    Configuration::updateValue('Sendin_CSV_File_Name', $file_name, '');
    $handle = fopen(_PS_MODULE_DIR_ . 'sendinblue/csv/'.$file_name.'.csv', 'w+');
    $linedata = 'EMAIL,ORDER_ID,ORDER_PRICE,ORDER_DATE';
    fwrite($handle, $linedata . "\n");
    
    $date_value = $sendin->getApiConfigValue($id_shop_group, $id_shop);
    if ($date_value->date_format == 'dd-mm-yyyy') {
        $dateFormate = 'd-m-Y';
    } else {
        $dateFormate = 'm-d-Y';
    }
    
    $condition_shop = '';
    $id_shop_group = !empty($id_shop_group) ? $id_shop_group : 'NULL';
    $id_shop = !empty($id_shop) ? $id_shop : 'NULL';

    if ($id_shop === 'NULL' && $id_shop_group === 'NULL') {
        $condition_shop = '';
    } elseif ($id_shop_group != 'NULL' && $id_shop === 'NULL') {
        $condition_shop = 'AND cu.id_shop_group =' . $id_shop_group;
    } else {
        $condition_shop = 'AND cu.id_shop_group =' . $id_shop_group . ' AND cu.id_shop =' . $id_shop;
    }
    $orders_by_customer = '
     SELECT cu.email,  o.id_order , o.reference, o.total_paid ,o.date_add  FROM  ' . _DB_PREFIX_ . 'orders as o LEFT JOIN  ' . _DB_PREFIX_ . 'customer cu on (cu.id_customer = o.id_customer)
                         WHERE (cu.newsletter = 1' . $condition_shop . ') AND o.valid = 1
                         ORDER BY cu.email
                        ';
    $orders = Db::getInstance()->ExecuteS($orders_by_customer);

    if (isset($orders)) {
        foreach ($orders as $order) {
            $order_id = $order['reference'];
            $order_price = Tools::safeOutput(round($order['total_paid'], 2));
           
            $date = date($dateFormate, strtotime($order['date_add']));
            
            $order_data = array();
            $line = $order['email'].','.$order_id.','.$order_price.','.$date."\n";

            fputs($handle, $line);
        }
    }
    fclose($handle);

    $list = Configuration::get('Sendin_Selected_List_Data', '', $id_shop_group, $id_shop);
    $list_id = explode('|', $list);
    $file_name = Configuration::get('Sendin_CSV_File_Name');
    $data = array( "url" => $sendin->local_path . $sendin->name . '/csv/'.$file_name.'.csv',
        "listids" => $list_id,
        "notify_url" => $sendin->local_path . 'sendinblue/EmptyImportOldOrdersFile.php?token=' . Tools::getValue('token')
    );
    $resp_data = $mailin->importUsers($data);

    if ($resp_data['code'] == 'success') {
        Configuration::updateValue('Sendin_order_tracking_Status', 1, '', $id_shop_group, $id_shop);
    }
    echo 'Process complete';
    exit;
}
