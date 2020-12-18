<?php
include(dirname(__FILE__) . '/../../../config/config.inc.php');

$file_name = Configuration::get('Sendin_CSV_File_Name');    
if(!empty($_REQUEST['path']) && ($_REQUEST['path'] == $file_name)) {
    // output headers so that the file is downloaded rather than displayed
    header("Content-type: text/csv");
    //header("Content-disposition: attachment; filename = report.csv");
    echo file_get_contents($_REQUEST['path'].".csv");
} else {
    header('Expires: Mon, 26 Jul 1997 05:00:00 GMT');
    header('Last-Modified: '.gmdate('D, d M Y H:i:s').' GMT');
    header('Cache-Control: no-store, no-cache, must-revalidate');
    header('Cache-Control: post-check=0, pre-check=0', false);
    header('Pragma: no-cache');
    header('Location: ../');
    exit;
}
