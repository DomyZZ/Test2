{if $settings == 'sci'}
    <div id="sci_coinpayments_api_{$proc.nick}" {($proc.payment_details.payment_system=='coinpayments_api' || $proc.payment_details.payment_system=='')?'':'class="hide"'}>
        <div class="form-group">
            <label for="sci_cp_{$proc.nick}_merchant_id_api" class="control-label">{$lang.label.merchant_id}</label>
            <input type="text" class="form-control input-sm"
                   name="payment_details[cp_merchant_id_api]"
                   id="sci_cp_{$proc.nick}_merchant_id_api"
                   value="{$proc.payment_details.cp_merchant_id_api}"/>
        </div>
        <div class="form-group">
            <label for="sci_cp_{$proc.nick}_ipn_secret_api" class="control-label">{$lang.label.ipn_secret}</label>
            <input type="text" class="form-control input-sm inline-block"
                   name="payment_details[cp_ipn_secret_api]"
                   id="sci_cp_{$proc.nick}_ipn_secret_api" {($proc.payment_details.cp_ipn_secret_api)?"disabled placeholder='**hidden**'":""} />
            <a href="javascript:void(0)" class="{($proc.payment_details.cp_ipn_secret_api)?'':'hide'}"
               id="cp_{$proc.nick}_set_new_sci_ipn_secret_api"
               onclick="set_new_pass('cp_{$proc.nick}_set_new_sci_ipn_secret_api','cp_{$proc.nick}_cancel_new_sci_ipn_secret_api','sci_cp_{$proc.nick}_ipn_secret_api')">{$lang.label.set_new}</a>
            <a href="javascript:void(0)" class="hide" id="cp_{$proc.nick}_cancel_new_sci_ipn_secret_api"
               onclick="cancel_new_pass('cp_{$proc.nick}_set_new_sci_ipn_secret_api','cp_{$proc.nick}_cancel_new_sci_ipn_secret_api','sci_cp_{$proc.nick}_ipn_secret_api')">{$lang.label.cancel}</a>
        </div>
        <div class="form-group">
            <label for="sci_cp_{$proc.nick}_public_key" class="control-label">{$lang.label.public_key}</label>
            <input type="text" class="form-control input-sm"
                   name="payment_details[cp_public_key]"
                   id="sci_cp_{$proc.nick}_public_key"
                   value="{$proc.payment_details.cp_public_key}"/>
        </div>
        <div class="form-group">
            <label for="sci_cp_{$proc.nick}_private_key" class="control-label">{$lang.label.private_key}</label>
            <input type="text" class="form-control input-sm inline-block"
                   name="payment_details[cp_private_key]"
                   id="sci_cp_{$proc.nick}_private_key" {($proc.payment_details.cp_private_key)?"disabled placeholder='**hidden**'":""} />
            <a href="javascript:void(0)" class="{($proc.payment_details.cp_private_key)?'':'hide'}"
               id="cp_{$proc.nick}_set_new_sci_private_key"
               onclick="set_new_pass('cp_{$proc.nick}_set_new_sci_private_key','cp_{$proc.nick}_cancel_new_sci_private_key','sci_cp_{$proc.nick}_private_key')">{$lang.label.set_new}</a>
            <a href="javascript:void(0)" class="hide" id="cp_{$proc.nick}_cancel_new_sci_private_key"
               onclick="cancel_new_pass('cp_{$proc.nick}_set_new_sci_private_key','cp_{$proc.nick}_cancel_new_sci_private_key','sci_cp_{$proc.nick}_private_key')">{$lang.label.cancel}</a>
        </div>
    </div>

    <!-- Modal Help -->
    <div id="help-sci-coinpayments_api-{$proc.nick}" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Coinpayments : via API Keys ({strtoupper($proc.curr_nick)}) SCI Documentation</h4>
                </div>
                <div class="modal-body">
                    <ol>
                        <li>Login to your Coinpayments account. Go to Account >
                            Coin Acceptance Settings.
                            <ul>
                                <li>Enable "{$proc.name}".
                                </li>
                                <li>Go to Account > Account Settings. Copy your Merchant Id.</b>
                                </li>
                                <li>Go to "Merchant Settings". Enter your IPN Secret and update your account settings. </li>
                            </ul>
                        </li>
                        <li>Enter your Merchant ID & IPN Secret in "Merchant ID" and "IPN Secret" fields respectively.</b>
                        </li>
                        <li> Go to Account > API Keys.
                            <ul>
                                <li>Click "Generate New Key".
                                </li>
                                <li>Copy the Public and Private Key.</b>
                                </li>
                                <li>Click "Edit Permissions" and check "create_transaction", "get_callback_address".</li>
                                <li>Go back to your admin panel.</li>
                            </ul>
                        </li>
                        <li>Enter Public and Private Key in the respective fields.
                        </li>
                    </ol>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
{/if}
