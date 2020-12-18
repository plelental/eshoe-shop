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

{if $resp != 1}
<div class="module_error alert error">' . $this->l('You need to set up PrestaShop Newsletter module on your Prestashop back office before using it' mod='sendinblue'}</div>
{/if}
{if $chk_port_status === 0}
<div class="bootstrap"><div class="module_error alert alert-danger">{l s='Your server configuration does not allow to send emails. Please contact you system administrator to allow outgoing connections on port 587 for following IP ranges: 94.143.17.4/32, 94.143.17.6/32 and 185.107.232.0/24.' mod='sendinblue'}</div></div>
{/if}

<div class="header">
    <a href="#" class="logo"><img src="{$img_source|escape:'htmlall':'UTF-8'}sendinblue.png" width="180"></a>
    <h3>{l s='Sendinblue is the all-in-one app for your marketing and transactional emails' mod='sendinblue'}</h3>
    <div class="clear"></div>
</div>

<ul class="main-tabs">
	<li><a data-id="#about-sendinblue" id="about-sendinblue" href="javascript:void(0)" class="active">{l s='About Sendinblue' mod='sendinblue'}</a></li>
	<li><a data-id="#subscribe-manager" id="subscribe-manager" href="javascript:void(0)">{l s='Contacts Manager' mod='sendinblue'}</a></li>
    <li><a data-id="#code-tracking" id="code-tracking" href="javascript:void(0)">{l s='Track & Sync Orders' mod='sendinblue'}</a></li>
    <li><a data-id="#automation-tracking" id="automation-tracking" href="javascript:void(0)">{l s='Automation & Abandoned Cart' mod='sendinblue'}</a></li>
    <li><a data-id="#transactional-email-sms-management" id="transactional-email-sms-management" href="javascript:void(0)">{l s='Transactional Email & Text Message Manager' mod='sendinblue'}</a></li>
    <li><a data-id="#contact_list" id="contact_list" href="javascript:void(0)">{l s='Contact List' mod='sendinblue'}</a></li>
</ul>
        <div class="clear"></div>
        <div class="main-tabs-content">
			<div  class="tab-pane active"  id="about-sendinblue">
				<div class="form-box">
				<h2 class="heading">
					<svg viewBox="0 0 512 512" style="width:16px !important; height:16px !important; display:inline !important;padding: 0 2px 0 0 !important;vertical-align: middle !important;">
                <title>Sendinblue</title>
                    <path fill="#ffffff" d="M473.722 127.464c-18.027-31.901-48.272-55.215-83.865-64.647a142.257 142.257 0 0 0-22.471-3.885C342.065 22.06 300.026 0 255.08 0c-44.944 0-86.983 22.06-112.304 58.932C98.157 63.142 58.4 88.68 36.24 127.365a139.082 139.082 0 0 0-5.316 127.402 139.674 139.674 0 0 0 5.316 127.104c18.053 31.879 48.287 55.184 83.865 64.647a130.245 130.245 0 0 0 22.973 3.885c25.261 36.958 67.322 59.087 112.304 59.087 44.983 0 87.043-22.13 112.305-59.087 44.638-4.161 84.414-29.71 106.536-68.433a138.588 138.588 0 0 0 5.317-127.402 139.379 139.379 0 0 0-5.818-127.104zm-33.861 20.14c10.8 18.89 14.88 40.769 11.6 62.186a140.27 140.27 0 0 0-24.015-17.568c-31.777-18.423-69.787-23.497-105.428-14.074-21.674 5.722-41.612 16.51-58.107 31.442-6.093-38.506 12.271-76.783 46.404-96.722 21.403-12.61 47.09-16.21 71.235-9.981 24.815 6.533 45.86 22.673 58.31 44.717zM254.813 44.955c21.153.117 41.612 7.52 57.892 20.948a140.215 140.215 0 0 0-27.272 12.04c-50.843 30.193-76.605 89.302-63.996 146.832-35.486-14.33-58.666-48.648-58.581-86.729-.22-50.807 40.858-92.26 91.957-92.797v-.294zM71.075 149.893c10.763-18.148 27.595-32.249 47.752-40.003a134.308 134.308 0 0 0-3.455 29.342c-.174 58.952 39.193 111.274 97.433 129.495-10.376 8.36-22.506 14.466-35.56 17.898-24.037 6.26-49.683 2.91-71.118-9.291-45.903-26.087-61.706-82.724-35.56-127.441h.508zm-.458 211.901c-10.82-18.85-14.87-40.716-11.503-62.094a144.971 144.971 0 0 0 23.922 17.57c21.096 12.2 45.136 18.646 69.627 18.668a142.451 142.451 0 0 0 35.831-4.692c21.69-5.7 41.64-16.493 58.125-31.446 6.072 38.511-12.239 76.793-46.316 96.835-21.417 12.59-47.102 16.188-71.256 9.983-25.019-6.331-46.312-22.417-58.939-44.524l.51-.3zm185.12 102.546c-21.194-.131-41.677-7.601-57.917-21.121a133.872 133.872 0 0 0 27.284-11.832c50.865-30.16 76.638-89.204 64.024-146.672 41.267 16.713 65.055 59.88 56.975 103.392-8.08 43.51-45.809 75.421-90.366 76.428v-.195zm174.56-104.781c-10.365 18.23-26.73 32.368-46.35 40.041a132.315 132.315 0 0 0 3.353-29.37c.138-58.999-38.063-111.355-94.575-129.62a91.453 91.453 0 0 1 34.516-17.915c23.401-6.086 48.285-2.557 69.033 9.79 44.263 26.268 59.358 82.778 34.024 127.368v-.294z"/>
                </svg>
					<span style="vertical-align: middle">Sendinblue</span></h2>
				<div class="form-box-content">
				<div class="contact-box">
				<h2 style="color:#044A75;">{l s='Contact Sendinblue Team' mod='sendinblue'}</h2>
				<div style="clear: both;"></div>
				<p>{l s=' Contact us :' mod='sendinblue'}<br /><br />
				{l s='Email : ' mod='sendinblue'}<a href="mailto:contact@sendinblue.com" style="color:#044A75;">contact@sendinblue.com</a></p>
				<p style="padding-top:20px;"><b>{l s='For further informations, please visit our website:' mod='sendinblue'}</b><br /><a href="https://www.sendinblue.com?utm_source=prestashop_plugin&utm_medium=plugin&utm_campaign=module_link" target="_blank"
				style="color:#044A75;">https://www.sendinblue.com</a></p>
			</div>
			<p class="sub-heading">{l s='With Sendinblue, you can build and grow relationships with your contacts and customers. ' mod='sendinblue'}</p>
			<ul class="listt">
			<li>{l s=' Automatically sync your Prestashop opt-in contacts with your Sendinblue Account' mod='sendinblue'}</li>
			<li>{l s=' Easily create engaging, mobile-friendly emails' mod='sendinblue'}</li>
			<li>{l s=' Schedule email and text message campaigns' mod='sendinblue'}</li>
			<li>{l s=' Manage transactional emails with better deliverability, custom templates, and real-time analytics' mod='sendinblue'}</li>
			</ul>
			<p class="sub-heading">{l s='Why use Sendinblue ?' mod='sendinblue'}</p>
			<ul class="listt">
			<li>{l s=' Reach the inbox with optimized deliverability' mod='sendinblue'}</li>
			<li>{l s=' Unbeatable pricing - the best value in email marketing' mod='sendinblue'}</li>
			<li>{l s=' Friendly customer support by phone and email' mod='sendinblue'}</li>
			</ul><div style="clear:both;">&nbsp;</div>

