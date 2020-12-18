{*
* 2007-2020 PrestaShop
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
* @author PrestaShop SA <contact@prestashop.com>
* @copyright  2007-2020 PrestaShop SA
* @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
* International Registered Trademark & Property of PrestaShop SA
*}

<div class="tab-pane" id="code-tracking">
    <div class="form-box">
    <h2 class="heading">{l s='Activate Sendinblue to track & sync your orders with Sendinblue' mod='sendinblue'}</h2><div class="form-box-content">
    <tr>
        <td>
        <label>{l s='Do you want to track and sync your order data with Sendinblue?' mod='sendinblue'}
        </label><span class="{$cl_version|escape:'htmlall':'UTF-8'|stripslashes}">
        <input type ="hidden" name="customtoken" id="customtoken" value="{$customtoken|escape:'htmlall':'UTF-8'|stripslashes}">
        <input type ="hidden" name="langvalue" id="langvalue" value="{$langvalue|escape:'htmlall':'UTF-8'|stripslashes}">
        <input type ="hidden" name="id_shop_group" id="id_shop_group" value="{$id_shop_group|escape:'htmlall':'UTF-8'|stripslashes}">
        <input type ="hidden" name="id_shop" id="id_shop" value="{$id_shop|escape:'htmlall':'UTF-8'|stripslashes}">
        <input type ="hidden" name="iso_code" id="iso_code" value="{$iso_code|escape:'htmlall':'UTF-8'|stripslashes}">
        <label class="differ-radio-btn"><input type="radio" {if !empty($Sendin_Tracking_Status) && $Sendin_Tracking_Status == 1}checked="checked"{/if} class="ordertracking script" id="yesradio" name="script" value="1") . '/><span>{l s='Yes' mod='sendinblue'}
        </span></label><label class="differ-radio-btn"><input type="radio" {if empty($Sendin_Tracking_Status) || $Sendin_Tracking_Status == 0}checked="checked"{/if} class="ordertracking script" id="noradio" name="script" value="0") . '/><span>{l s='No' mod='sendinblue'}
        </span></label><span class="toolTip"
        title="{l s='This feature will allow you to transfer all your customers orders from PrestaShop into Sendinblue to implement your email marketing strategy' mod='sendinblue'}">
        </span><label class="differ-radio-btn"><input class="blue-btn btn-xs ordertrackingcls scriptcls" type="button" name="ordertrackingcls" value="{l s='Update' mod='sendinblue'}"></label>
        </td>
    </tr>
    <form method="post" name="ordertrackform" id="ordertrackform" action="{$form_url|escape:'htmlall':'UTF-8'|replace:'&amp;':'&'}">
        <tr><td>
        <div id="div_order_track" style="clear:both;">
        <input type ="hidden" name="importmsg" id="importmsg" value="{l s='Order history has been import successfully' mod='sendinblue'}">
        <p style="text-align:left; padding:20px 265px 15px;"><a id="importOrderTrack" {$st|escape:'quotes':'UTF-8'} class="ordertrack green-btn" href="javascript:void(0);">
        {l s='Import the data of previous orders' mod='sendinblue'}</a>                            
        </div>
        </td>
        </tr>
    </form>
    </div>
    </div>
</div>
