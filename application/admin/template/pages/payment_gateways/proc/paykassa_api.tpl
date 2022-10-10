{if $settings == 'sci'}
    <div id="sci_paykassa_api_{$proc.nick}" {($proc.payment_details.payment_system=='paykassa_api')?'':'class="hide"'}>
        <div class="form-group">
            <label for="sci_pk_{$proc.nick}_merchant_id_api" class="control-label">{$lang.label.merchant_id}</label>
            <input type="text" class="form-control input-sm"
                   name="payment_details[pk_merchant_id_api]"
                   id="sci_pk_{$proc.nick}_merchant_id_api"
                   value="{$proc.payment_details.pk_merchant_id_api}"/>
        </div>
        <div class="form-group">
            <label for="sci_pk_{$proc.nick}_merchant_password_api" class="control-label">{$lang.label.merchant_password}</label>
            <input type="text" class="form-control input-sm inline-block"
                   name="payment_details[pk_merchant_password_api]"
                   id="sci_pk_{$proc.nick}_merchant_password_api" {($proc.payment_details.pk_merchant_password_api)?"disabled placeholder='**hidden**'":""} />
            <a href="javascript:void(0)" class="{($proc.payment_details.pk_merchant_password_api)?'':'hide'}"
               id="pk_{$proc.nick}_set_new_sci_merchant_password_api"
               onclick="set_new_pass('pk_{$proc.nick}_set_new_sci_merchant_password_api','pk_{$proc.nick}_cancel_new_sci_merchant_password_api','sci_pk_{$proc.nick}_merchant_password_api')">{$lang.label.set_new}</a>
            <a href="javascript:void(0)" class="hide" id="pk_{$proc.nick}_cancel_new_sci_merchant_password_api"
               onclick="cancel_new_pass('pk_{$proc.nick}_set_new_merchant_password_api','pk_{$proc.nick}_cancel_new_sci_merchant_password_api','sci_pk_{$proc.nick}_merchant_password_api')">{$lang.label.cancel}</a>
        </div>
    </div>

    <!-- Modal Help -->
    <div id="help-sci-paykassa_api-{$proc.nick}" class="modal fade" role="dialog">
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