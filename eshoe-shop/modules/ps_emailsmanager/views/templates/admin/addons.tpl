<div class="panel">
	<h3><i class="icon-picture-o"></i> {l s='Live from PrestaShop Addons' mod='ps_emailsmanager'}</h3>
    <div class="row margin-bottom">
        <div class="panel clearfix">
            <div class="col-lg-2 col-md-12 col-sm-12">
                <img alt="PrestaShop Addons" src="https://medias1.prestastore.com/themes/prestastore/img/front/logo.png">
            </div>
            <div class="col-lg-7 col-md-12 col-sm-12">
                {l s='Simply choose the template you prefer, then just personalize the colors, and all your automatic emails (account creation, order confirmation, payment accepted, etc.) will have a professional design optimized for all devices: computer, smartphone, tablet.' mod='ps_emailsmanager'}
            </div>
            <div class="col-lg-3 col-md-12 col-sm-12">
                <a href="https://addons.prestashop.com/en/625-prestashop-email-templates?utm_source=back-office&utm_medium=emailtemplate&utm_content=download{$ps_version|intval}" class="btn btn-primary btn-lg btn-block" target="_blank" rel="noopener">{l s='See all email templates' mod='ps_emailsmanager'}</a>
                </div>
            </div>
        </div>
    <div class="row">
        {foreach from=$addons_products item=product}
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="panel">
                    <header class="panel-heading">{$product.displayName|escape:'htmlall':'UTF-8'}</header>
                    <a href="{$product.url|escape:'quotes':'UTF-8'}?utm_source=back-office&utm_medium=emailtemplate&utm_content=download{$ps_version|intval}" target="_blank">
                        <img class="img-responsive" src="{$product.cover.big|escape:'quotes':'UTF-8'}">
                    </a>
                    <br/>
                    <a href="{$product.url|escape:'quotes':'UTF-8'}?utm_source=back-office&utm_medium=emailtemplate&utm_content=download{$ps_version|intval}" class="btn btn-primary btn-lg btn-block" target="_blank">{l s='Discover' mod='ps_emailsmanager'}</a>
                </div>
            </div>
        {/foreach}
    </div>
</div>
