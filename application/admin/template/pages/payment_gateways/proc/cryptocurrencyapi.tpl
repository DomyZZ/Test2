{if $settings == 'sci'}
    <div id="sci_cryptocurrencyapi_{$proc.nick}" {($proc.payment_details.payment_system=='cryptocurrencyapi')?'':'class="hide"'}>
        <div class="form-group">
            <label for="sci_cca_{$proc.nick}_api_key" class="control-label">{$lang.label.api_key}</label>
            <input type="text" class="form-control input-sm inline-block"
                   name="payment_details[cca_api_key]"
                   id="sci_cca_{$proc.nick}_api_key" {($proc.payment_details.cca_api_key)?"disabled placeholder='**hidden**'":""} />
            <a href="javascript:void(0)" class="{($proc.payment_details.cca_api_key)?'':'hide'}"
               id="cca_{$proc.nick}_set_new_sci_api_key"
               onclick="set_new_pass('cca_{$proc.nick}_set_new_sci_api_key','cca_{$proc.nick}_cancel_new_sci_api_key','sci_cca_{$proc.nick}_api_key')">{$lang.label.set_new}</a>
            <a href="javascript:void(0)" class="hide" id="cca_{$proc.nick}_cancel_new_sci_api_key"
               onclick="cancel_new_pass('cca_{$proc.nick}_set_new_sci_api_key','cca_{$proc.nick}_cancel_new_sci_api_key','sci_cca_{$proc.nick}_api_key')">{$lang.label.cancel}</a>
        </div>
    </div>

{/if}

{if $settings == 'api'}
    <div id="api_cryptocurrencyapi_{$proc.nick}" {($proc.payment_details.api.payment_system=='cryptocurrencyapi' || $proc.payment_details.api.payment_system=='')?'':'class="hide"'}>
        <div class="form-group">
            <label for="api_cca_{$proc.nick}_api_key" class="control-label">{$lang.label.api_key}</label>
            <input type="text" class="form-control input-sm inline-block"
                   name="payment_details[api][cca_api_key]"
                   id="api_cca_{$proc.nick}_api_key" {($proc.payment_details.api.cca_api_key)?"disabled placeholder='**hidden**'":""} />
            <a href="javascript:void(0)" class="{($proc.payment_details.api.cca_api_key)?'':'hide'}"
               id="cca_{$proc.nick}_set_new_api_prv_key"
               onclick="set_new_pass('cca_{$proc.nick}_set_new_api_prv_key','cca_{$proc.nick}_cancel_new_api_prv_key','api_cca_{$proc.nick}_api_key')">{$lang.label.set_new}</a>
            <a href="javascript:void(0)" class="hide" id="cca_{$proc.nick}_cancel_new_api_prv_key"
               onclick="cancel_new_pass('cca_{$proc.nick}_set_new_api_prv_key','cca_{$proc.nick}_cancel_new_api_prv_key','api_cca_{$proc.nick}_api_key')">{$lang.label.cancel}</a>
        </div>
    </div>

{/if}
