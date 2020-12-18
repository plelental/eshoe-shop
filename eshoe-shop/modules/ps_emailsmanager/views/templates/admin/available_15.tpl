{*
* 2007-2017 PrestaShop
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
*  @author    PrestaShop SA <contact@prestashop.com>
*  @copyright 2007-2017 PrestaShop SA
*  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<br />
<fieldset id="available_templates">
	<legend>{l s='Available templates' mod='ps_emailsmanager'}</legend>
	{foreach from=$availableTemplates item=template}
		<div class="select_theme {if $currentTemplate.name == $template.name}select_theme_choice{/if}">
			{$template.name|escape:'htmlall':'UTF-8'} {$template.version|escape:'htmlall':'UTF-8'}<br><br>
			<img src="{$module_dir|escape:'htmlall':'UTF-8'}imports/{$template.folder|escape:'htmlall':'UTF-8'}/preview.jpg" alt="{$template.name|escape:'htmlall':'UTF-8'}"><br><br>
			<a href="{$previewLink|escape:'quotes':'UTF-8'}{$template.folder|escape:'htmlall':'UTF-8'}" class="button" target="_blank">
				{l s='Preview' mod='ps_emailsmanager'}
			</a>
			<br />
			{if $currentTemplate.name != $template.name}
				<a href="{$moduleLink|escape:'quotes':'UTF-8'}&amp;select_template={$template.folder|escape:'htmlall':'UTF-8'}" class="button">
					{l s='Use this template' mod='ps_emailsmanager'}
				</a>
				{if $template.name != 'classic'}
					<br />
					<a href="{$moduleLink|escape:'quotes':'UTF-8'}&amp;delete_template={$template.name|escape:'htmlall':'UTF-8'}" title="{l s='Delete this template' mod='ps_emailsmanager'}" class="button" onclick="return confirm('{l s='This action will delete the template from your server. Are you sure?' mod='ps_emailsmanager' js=1}')">
						{l s='Delete this template' mod='ps_emailsmanager'}
					</a>
				{/if}
			{else}
				{if $template.name != 'classic'}
					<a href="{$moduleLink|escape:'quotes':'UTF-8'}&amp;select_template={$template.folder|escape:'htmlall':'UTF-8'}" class="button">
						{l s='Change settings' mod='ps_emailsmanager'}
					</a>
				{/if}
			{/if}
		</div>
	{/foreach}
</fieldset>
