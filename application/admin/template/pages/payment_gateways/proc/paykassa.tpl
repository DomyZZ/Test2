{if $settings == 'sci'}
    <div id="sci_paykassa_{$proc.nick}" {($proc.payment_details.payment_system=='paykassa')?'':'class="hide"'}>
        <div class="form-group">
            <label for="sci_pk_{$proc.nick}_merchant_id" class="control-label">{$lang.label.merchant_id}</label>
            <input type="text" class="form-control input-sm"
                   name="payment_details[pk_merchant_id]"
                   id="sci_pk_{$proc.nick}_merchant_id"
                   value="{$proc.payment_details.pk_merchant_id}"/>
        </div>
        <div class="form-group">
            <label for="sci_pk_{$proc.nick}_merchant_password" class="control-label">{$lang.label.merchant_password}</label>
            <input type="text" class="form-control input-sm inline-block"
                   name="payment_details[pk_merchant_password]"
                   id="sci_pk_{$proc.nick}_merchant_password" {($proc.payment_details.pk_merchant_password)?"disabled placeholder='**hidden**'":""} />
            <a href="javascript:void(0)" class="{($proc.payment_details.pk_merchant_password)?'':'hide'}"
               id="pk_{$proc.nick}_set_new_sci_merchant_password"
               onclick="set_new_pass('pk_{$proc.nick}_set_new_sci_merchant_password','pk_{$proc.nick}_cancel_new_sci_merchant_password','sci_pk_{$proc.nick}_merchant_password')">{$lang.label.set_new}</a>
            <a href="javascript:void(0)" class="hide" id="pk_{$proc.nick}_cancel_new_sci_merchant_password"
               onclick="cancel_new_pass('pk_{$proc.nick}_set_new_sci_merchant_password','pk_{$proc.nick}_cancel_new_sci_merchant_password','sci_pk_{$proc.nick}_merchant_password')">{$lang.label.cancel}</a>
        </div>
    </div>

    <!-- Modal Help -->
    <div id="help-sci-paykassa-{$proc.nick}" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Paykassa ({$proc.nick|strtoupper}) SCI Documentation</h4>
                </div>
                <div class="modal-body">
                    <ol>
                        <li>Login to your Paykassa.pro account. Go to Merchants.
                            <ul>
                                <li>Click on "Create Merchant".
                                </li>
                                <li>Enter any Title, set Domain Store as <b>{$domain}</b>
                                </li>
                                <li>Enter/Set Secret Key. This will be your merchant password.
                                </li>
                                <li>Set IPN handler as <b>{$base_url}/payment/status/paykassa</b></li>
                                <li>Set URL successful payment as <b>{$base_url}/payment/successful</b></li>
                                <li>Set URL failed payment as <b>{$base_url}/payment/failed</b></li>
                                <li>Enter a shop description.</li>
                                <li>Click "Create Merchant" to create your merchant.</li>
                                <li>Copy your Merchant ID generated. For e.g 1234</li>
                            </ul>
                        </li>
                        <li>Enter Merchant ID obtained above in "Merchant ID" field.</li>
                        <li>Enter Secret Key set above in "Merchant Password" field.</li>
                    </ol>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
{/if}

{if $settings == 'api'}
    <div id="api_paykassa_{$proc.nick}" {($proc.payment_details.api.payment_system=='paykassa')?'':'class="hide"'}>
        <div class="form-group">
            <label for="api_pk_{$proc.nick}_merchant_id" class="control-label">{$lang.label.merchant_id}</label>
            <input type="text" class="form-control input-sm"
                   name="payment_details[api][pk_merchant_id]"
                   id="api_pk_{$proc.nick}_merchant_id"
                   value="{$proc.payment_details.api.pk_merchant_id}"/>
        </div>
        <div class="form-group">
            <label for="api_pk_{$proc.nick}_api_id" class="control-label">{$lang.label.api_id}</label>
            <input type="text" class="form-control input-sm"
                   name="payment_details[api][pk_api_id]"
                   id="api_pk_{$proc.nick}_api_id"
                   value="{$proc.payment_details.api.pk_api_id}"/>
        </div>
        <div class="form-group">
            <label for="api_pk_{$proc.nick}_api_password" class="control-label">{$lang.label.api_password}</label>
            <input type="text" class="form-control input-sm inline-block"
                   name="payment_details[api][pk_api_password]"
                   id="api_pk_{$proc.nick}_api_password" {($proc.payment_details.api.pk_api_password)?"disabled placeholder='**hidden**'":""} />
            <a href="javascript:void(0)" class="{($proc.payment_details.api.pk_api_password)?'':'hide'}"
               id="pk_{$proc.nick}_set_new_api_prv_key"
               onclick="set_new_pass('pk_{$proc.nick}_set_new_api_prv_key','pk_{$proc.nick}_cancel_new_api_prv_key','api_pk_{$proc.nick}_api_password')">{$lang.label.set_new}</a>
            <a href="javascript:void(0)" class="hide" id="pk_{$proc.nick}_cancel_new_api_prv_key"
               onclick="cancel_new_pass('pk_{$proc.nick}_set_new_api_prv_key','pk_{$proc.nick}_cancel_new_api_prv_key','api_pk_{$proc.nick}_api_password')">{$lang.label.cancel}</a>
        </div>
    </div>

    <!-- Modal Help -->
    <div id="help-api-paykassa-{$proc.nick}" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Paykassa (BTC) API Documentation</h4>
                </div>
                <div class="modal-body">
                    <ol>
                        <li>Enter your Merchant ID . Check the SCI documentation if you do not know how to get it. </li>
                        <li>Login to your Paykassa.pro account. Go to API.
                            <ul>
                                <li>Click on "Create API".
                                </li>
                                <li>Enter any name.
                                </li>
                                <li>Enter/Set Secret Key. This will be your API Password.
                                </li>
                                <li>Enter any description and enter your server API (contact your hosting provider to get it).</li>
                                <li>Copy your API ID generated. For e.g 1234</li>
                            </ul>
                        </li>
                        <li>Enter API ID obtained above in "API ID" field.</li>
                        <li>Enter Secret Key set above in "API Password" field.</li>
                    </ol>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
{/if}