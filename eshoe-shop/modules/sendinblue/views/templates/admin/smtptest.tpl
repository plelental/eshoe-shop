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

<div class="tab-pane" id="transactional-email-sms-management">
		<div class="form-box">
		<h2 class="heading">{l s='Manage Transactional Emails' mod='sendinblue'}</h2>
		<div class="form-box-content">
        <table class="tableblock"
        cellspacing="0" cellpadding="0" width="100%">
    <tr><td><form method="post" action="{$form_url|escape:'htmlall':'UTF-8'|replace:'&amp;':'&'}">
        <label>
        {l s='Manage Transactional Emails' mod='sendinblue'}
        </label><span class="{$cl_version|escape:'htmlall':'UTF-8'|stripslashes}">
        <label class="differ-radio-btn"><input type="radio" class="smtptestclick" id="yessmtp"
        name="smtpmail"
        value="1" {if !empty($Sendin_Api_Smtp_Status)}checked="checked"{/if}/><span>{l s='Yes' mod='sendinblue'}
        </span></label><label class="differ-radio-btn"><input type="radio" class="smtptestclick" id="nosmtp"
        name="smtpmail" value="0"
        {if empty($Sendin_Api_Smtp_Status)}checked="checked"{/if}) . '/><span>{l s='No' mod='sendinblue'}
        </span></label><span class="toolTip" title="{l s='Transactional email is an expected email because it is triggered automatically after a transaction or a specific event. Common examples of transactional email are : account opening and welcome message, order shipment confirmation, shipment tracking and purchase order status, registration via a contact form, account termination, payment confirmation, invoice etc.' mod='sendinblue'}">&nbsp;</span>
        <label class="differ-radio-btn"><input class="blue-btn btn-xs smtptestclickcls" type="button" name="smtptestclickcls" value="{l s='Update' mod='sendinblue'}"></label>
        </form></td>
    </tr>
    <form method="post" name="smtpform" id="smtpform" action="{$form_url|escape:'htmlall':'UTF-8'|replace:'&amp;':'&'}">
        <tr id="smtptest" {$st|escape:'htmlall':'UTF-8'|stripslashes}><td colspan="2">
        <div id="div_email_test">
        <p style="padding-left:85px;">{l s='Send email test From / To : ' mod='sendinblue'}&nbsp;
        <input type="text" size="40" name="testEmail" value="{$testEmail|escape:'htmlall':'UTF-8'|stripslashes}" id="email_from">
        &nbsp;
        <input type="submit"  class="blue-btn" value="{l s='Send' mod='sendinblue'}" name="sendTestMail" id="sendTestMail"></p>
        </div>
        </td>
        </tr></form>
        </table>
        </div>
</div>


