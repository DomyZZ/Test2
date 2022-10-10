{if $type=='sci'}
    <div class="form-group">
        <label for="sci_usdt_payment_system" class="control-label">{$lang.label.payment_system}</label>
        <select name="payment_details[payment_system]" id="sci_usdt_payment_system" class="form-control input-sm"
                onchange="show_ps_details('sci', 'usdt')">
            <option value="coinpayments_api" {($proc.payment_details.payment_system=='coinpayments_api')?'selected':''}>CoinPayments (via API Keys)</option>
            <option value="coinpayments" {($proc.payment_details.payment_system=='coinpayments')?'selected':''}>CoinPayments (via Website)</option>
            <option value="stripe" {($proc.payment_details.payment_system=='stripe')?'selected':''}>Stripe</option>
        </select>
    </div>
    {include file="payment_gateways/proc/coinpayments_api.tpl" settings="sci"}
    {include file="payment_gateways/proc/coinpayments.tpl" settings="sci"}
    {include file="payment_gateways/proc/stripe.tpl" settings="sci"}

{/if}

{if $type=='api'}
    <div class="form-group">
        <label for="api_usdt_payment_system" class="control-label">{$lang.label.payment_system}</label>
        <select name="payment_details[api][payment_system]" id="api_usdt_payment_system" class="form-control input-sm"
                onchange="show_ps_details('api', 'usdt')">
            <option value="coinpayments" {($proc.payment_settings.api.payment_system=='coinpayments')?'selected':''}>
                CoinPayments
            </option>
        </select>
    </div>
    {include file="payment_gateways/proc/coinpayments.tpl" settings="api"}
{/if}