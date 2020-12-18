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
* @copyright 2007-2014 PrestaShop SA
* @license   http://addons.prestashop.com/en/content/12-terms-and-conditions-of-use
* International Registered Trademark & Property of PrestaShop SA
*/

class EmailTemplateFilterIterator extends RecursiveFilterIterator
{
    private static $validExtensions = array('tpl', 'html', 'txt');

    public function accept()
    {
        if ($this->getInnerIterator()->hasChildren()) {
            return true;
        }

        return in_array(
            $this->current()->getExtension(),
            self::$validExtensions,
            true
        );
    }
}
