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

<div class="panel">
	<h3>{l s='Current template' mod='ps_emailsmanager'}</h3>
	<div class="row">
		<div class="col-md-6">
			<img src="{$module_dir|escape:'quotes':'UTF-8'}imports/{$currentTemplate.name|escape:'quotes':'UTF-8'}/preview.jpg" style="width:200px;" class='center-block'>
		</div>
		<div class="col-md-6 col-centered">
			<h2>{$currentTemplate.name|escape:'htmlall':'UTF-8'} <small>{l s='version' mod='ps_emailsmanager'} {if isset($currentTemplate.version)}{$currentTemplate.version|escape:'htmlall':'UTF-8'}{/if}</small></h2>
			{if isset($currentTemplate.author)}<p>{l s='Author:' mod='ps_emailsmanager'} {$currentTemplate.author|escape:'htmlall':'UTF-8'}</p>{/if}
		</div>
	</div>
	<div class="panel-footer">
		{if $currentTemplate.name != 'classic'}
			<a href="{$moduleLink|escape:'quotes':'UTF-8'}&amp;select_template={$currentTemplate.name|escape:'htmlall':'UTF-8'}" class="btn btn-default pull-right">
				<i class="process-icon-configure"></i> {l s='Settings' mod='ps_emailsmanager'}
			</a>
		{/if}
		<a href="{$previewLink|escape:'quotes':'UTF-8'}{$currentTemplate.name|escape:'htmlall':'UTF-8'}" class="btn btn-default pull-right" target="_blank">
			<i class="process-icon-preview"></i> {l s='Preview' mod='ps_emailsmanager'}
		</a>
	</div>
</div>
