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

class ImageFilterIterator extends RecursiveFilterIterator
{
    private static $validTypeConstants = array(
        IMAGETYPE_GIF,
        IMAGETYPE_JPEG,
        IMAGETYPE_PNG,
    );

    public function accept()
    {
        return $this->getInnerIterator()->hasChildren() || $this->isImage();
    }

    private function isImage()
    {
        $filePath = $this->current()->getRealPath();

        if (is_dir($filePath)) {
            return false;
        }

        if (function_exists('exif_imagetype')) {
            $type = exif_imagetype($filePath);

            return in_array($type, self::$validTypeConstants, true);
        } else {
            $imagesize = getimagesize($filePath);

            // Index 2 is one of the IMAGETYPE_XXX constants indicating the
            // type of the image
            return in_array($imagesize[2], self::$validTypeConstants, true);
        }
    }
}
