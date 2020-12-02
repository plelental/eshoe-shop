



<div>
    {if $mode == 'SANDBOX'}
        <p>
          <label for="paypal_ec_clientid">{l s='Client ID' mod='paypal'}</label>
          <input
                  type="text"
                  id="paypal_ec_clientid"
                  name="paypal_ec_clientid_sandbox"
                  value="{if isset($paypal_ec_clientid)}{$paypal_ec_clientid|escape:'htmlall':'UTF-8'}{/if}"/>
        </p>
        <p>
          <label for="paypal_ec_secret">{l s='Secret' mod='paypal'}</label>
          <input
                  type="password"
                  id="paypal_ec_secret"
                  name="paypal_ec_secret_sandbox"
                  value="{if isset($paypal_ec_secret)}{$paypal_ec_secret|escape:'htmlall':'UTF-8'}{/if}"/>
        </p>
    {else}
        <p>
          <label for="paypal_ec_clientid">{l s='Client ID' mod='paypal'}</label>
          <input
                  type="text"
                  id="paypal_ec_clientid"
                  name="paypal_ec_clientid_live"
                  value="{if isset($paypal_ec_clientid)}{$paypal_ec_clientid|escape:'htmlall':'UTF-8'}{/if}"/>
        </p>
        <p>
          <label for="paypal_ec_secret">{l s='Secret' mod='paypal'}</label>
          <input
                  type="password"
                  id="paypal_ec_secret"
                  name="paypal_ec_secret_live"
                  value="{if isset($paypal_ec_secret)}{$paypal_ec_secret|escape:'htmlall':'UTF-8'}{/if}"/>
        </p>

    {/if}
</div>
