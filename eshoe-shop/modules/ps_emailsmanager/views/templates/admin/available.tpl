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

{if !empty($availableTemplates) && count($availableTemplates) > 1}
	<div class="panel">
		<h3>{l s='Available templates' mod='ps_emailsmanager'}</h3>
	  <div class="row">
	    {foreach from=$availableTemplates item=template}
		    <div class="col-sm-12 col-md-6 col-lg-3">
				<div class="theme-container">
					<h4 class="theme-title" style="margin-bottom:0;">{$template.name|escape:'htmlall':'UTF-8'} {$template.version|escape:'htmlall':'UTF-8'}</h4>
					<div class="thumbnail-wrapper">
						<div class="action-wrapper">
							<div class="action-overlay"></div>
							<div class="action-buttons">
								<div class="btn-group">
									<a href="{$moduleLink|escape:'quotes':'UTF-8'}&amp;select_template={$template.folder|escape:'htmlall':'UTF-8'}" class="btn btn-default">
										<i class="icon-check"></i> {l s='Use this template' mod='ps_emailsmanager'}
									</a>
									<button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
										<i class="icon-caret-down"></i>&nbsp;
									</button>
									<ul class="dropdown-menu">
										<li>
											<a href="{$previewLink|escape:'quotes':'UTF-8'}{$template.folder|escape:'htmlall':'UTF-8'}" target="_blank">
												<i class="icon-eye"></i> {l s='Preview' mod='ps_emailsmanager'}
											</a>
										</li>
										{if $template.name != 'classic'}
											<li>
												<a href="{$moduleLink|escape:'quotes':'UTF-8'}&amp;delete_template={$template.name|escape:'htmlall':'UTF-8'}" title="{l s='Delete this template' mod='ps_emailsmanager'}" class="delete" onclick="return confirm('{l s='This action will delete the template from your server. Are you sure?' mod='ps_emailsmanager' js=1}')">
													<i class="icon-trash"></i> {l s='Delete this template' mod='ps_emailsmanager'}
												</a>
											</li>
										{/if}
									</ul>
								</div>
							</div>
						</div>
						<img class="center-block img-thumbnail" src="{$module_dir|escape:'quotes':'UTF-8'}imports/{$template.folder|escape:'htmlall':'UTF-8'}/preview.jpg" alt="{$template.name|escape:'htmlall':'UTF-8'}">
					</div>
				</div>
			</div>
	    {/foreach}
	  </div>
	</div>
{/if}
