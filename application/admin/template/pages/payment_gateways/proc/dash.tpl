{if $type=='sci'}
    <div class="form-group">
        <label for="sci_dash_payment_system" class="control-label">{$lang.label.payment_system}</label>
        <select name="payment_details[payment_system]" id="sci_dash_payment_system" class="form-control input-sm"
                onchange="show_ps_details('sci', 'dash')">
            <option value="coinpayments_api" {($proc.payment_details.payment_system=='coinpayments_api')?'selected':''}>CoinPayments (via API Keys)</option>
            <option value="coinpayments" {($proc.payment_details.payment_system=='coinpayments')?'selected':''}>CoinPayments (via Website)</option>
            <option value="cryptocurrencyapi" {($proc.payment_details.payment_system=='cryptocurrencyapi')?'selected':''}>Cryptocurrencyapi.net</option>
            <option value="paykassa_api" {($proc.payment_details.payment_system=='paykassa_api')?'selected':''}>Paykassa (via API Keys)</option>
            <option value="paykassa" {($proc.payment_details.payment_system=='paykassa')?'selected':''}>Paykassa (via Website)</option>
        </select>
    </div>
    {include file="payment_gateways/proc/coinpayments_api.tpl" settings="sci"}
    {include file="payment_gateways/proc/coinpayments.tpl" settings="sci"}
    {include file="payment_gateways/proc/cryptocurrencyapi.tpl" settings="sci"}
    {include file="payment_gateways/proc/paykassa_api.tpl" settings="sci"}
    {include file="payment_gateways/proc/paykassa.tpl" settings="sci"}

{/if}

{if $type=='api'}
    <div class="form-group">
        <label for="api_dash_payment_system" class="control-label">{$lang.label.payment_system}</label>
        <select name="payment_details[api][payment_system]" id="api_dash_payment_system" class="form-control input-sm"
                onchange="show_ps_details('api', 'dash')">
            <option value="coinpayments" {($proc.payment_settings.api.payment_system=='coinpayments')?'selected':''}>
                CoinPayments
            </option>
            <option value="cryptocurrencyapi" {($proc.payment_details.api.payment_system=='cryptocurrencyapi')?'selected':''}>Cryptocurrencyapi.net</option>
            <option value="paykassa" {($proc.payment_details.api.payment_system=='paykassa')?'selected':''}>Paykassa</option>
        </select>
    </div>
    {include file="payment_gateways/proc/coinpayments.tpl" settings="api"}
    {include file="payment_gateways/proc/cryptocurrencyapi.tpl" settings="api"}
    {include file="payment_gateways/proc/paykassa.tpl" settings="api"}

{/if}