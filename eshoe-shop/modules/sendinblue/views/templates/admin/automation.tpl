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

<div class="tab-pane" id="automation-tracking">
    <div class="form-box">
    <h2 class="heading">{l s='Automation' mod='sendinblue'}</h2>
    <div class="form-box-content">

        <label>{l s='Activate Marketing Automation through Sendinblue' mod='sendinblue'}
        </label><span class="{$cl_version|escape:'htmlall':'UTF-8'|stripslashes}">
        
        <label class="differ-radio-btn">
        <input type="radio" class="automationtracking radio_nospaceing" id="yesradio" name="automation_radio" value="1"
        {if !empty($auto_status) && $auto_status == 1}checked="checked"{/if}/>{l s='Yes' mod='sendinblue'}
        <input type="radio" class="automationtracking radio_spaceing2" id="noradio"
        name="automation_radio" value="0"{if empty($auto_status) || $auto_status == 0 || $auto_status == 2}checked="checked"{/if}/>{l s='No' mod='sendinblue'}
        <span class="toolTip"
         title="{l s='Choose Yes if you want to use Sendinblue Automation to track your website activity' mod='sendinblue'}">
        </span>
        </label>
        </span> 
<div class="clearfix"></div>
     <form method="post" name="automationform" id="automationform" action="{$form_url|escape:'htmlall':'UTF-8'|replace:'&amp;':'&'}">
    <div id="automationtrack">
        <label><a style="color:#044A75;" href="https://resources.sendinblue.com/en/introduction-marketing-automation/?utm_source=prestashop_plugin&utm_medium=plugin&utm_campaign=module_link">{l s='Explore our resource' mod='sendinblue'}</a>
        {l s='to learn more about Sendinblue Automation' mod='sendinblue'}</label>

        <div id="div_automation_track">
        <input type ="hidden" name="automsg" id="automsg" value="{l s='Your Marketing Automation script will be uninstalled, you would not have access to any Marketing Automation data and workflows' mod='sendinblue'}">
        <input id="submitautomation" class="blue-btn btn-xs clssubmitautomation" type="submit" name="submitautomation" style="margin-top: 0px;" value="{l s='Validate' mod='sendinblue'}">
        </div>
    </div>
    </form>
    <div class="clearfix" style="padding-bottom:15px;"></div>
    </div>
    </div>
</div>


<div class="tab-pane" id="automation-tracking">
    <div class="form-box">
    <h2 class="heading">{l s='AbandonedCart tracking' mod='sendinblue'}</h2>
    <div class="form-box-content">

        <label>{l s='Do you want to recover abandoned cart?' mod='sendinblue'}
        </label><span class="{$cl_version|escape:'htmlall':'UTF-8'|stripslashes}">
        
        <label class="differ-radio-btn">
        <input type="radio" class="abandonedtracking radio_nospaceing" id="yesradio" name="abandoned_radio" value="1"
        {if !empty($abandoned_status) && $abandoned_status == 1}checked="checked"{/if}/>{l s='Yes' mod='sendinblue'}
        <input type="radio" class="abandonedtracking radio_spaceing2" id="noradio"
        name="abandoned_radio" value="0"{if empty($abandoned_status) || $abandoned_status == 0 || $abandoned_status == 2}checked="checked"{/if}/>{l s='No' mod='sendinblue'}
        <span class="toolTip"
         title="{l s='Choose Yes if you want to use Sendinblue Abandoned Cart to track your website cart activity' mod='sendinblue'}">
        </span>
        </label>
        </span> 
<div class="clearfix"></div>
     <form method="post" name="abandonedform" id="abandonedform" action="{$form_url|escape:'htmlall':'UTF-8'|replace:'&amp;':'&'}">
        <tr id="abandonedtrack">
        <td colspan="2">
        <label>&nbsp;</label>
        <div id="div_abandoned_track">
        <input type ="hidden" name="abanmsg" id="abanmsg" value="{l s='Your Abandoned Cart tracking feature will be uninstalled, you would not have access to any Cart tracking data and workflows' mod='sendinblue'}">
        <input id="submitabandoned" class="blue-btn btn-xs clssubmitabandoned" type="submit" name="submitabandoned" style="margin-top: 0px;" value="{l s='Validate' mod='sendinblue'}">
        </div>
        </td>
        </tr>
    </form>
    <div class="clearfix" style="padding-bottom:15px;"></div>
    </div>
    </div>
</div>
