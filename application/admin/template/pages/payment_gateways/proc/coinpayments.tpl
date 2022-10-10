{if $settings == 'sci'}
    <div id="sci_coinpayments_{$proc.nick}" {($proc.payment_details.payment_system=='coinpayments')?'':'class="hide"'}>
        <div class="form-group">
            <label for="sci_cp_{$proc.nick}_merchant_id" class="control-label">{$lang.label.merchant_id}</label>
            <input type="text" class="form-control input-sm"
                   name="payment_details[cp_merchant_id]"
                   id="sci_cp_{$proc.nick}_merchant_id"
                   value="{$proc.payment_details.cp_merchant_id}"/>
        </div>
        <div class="form-group">
            <label for="sci_cp_{$proc.nick}_ipn_secret" class="control-label">{$lang.label.ipn_secret}</label>
            <input type="text" class="form-control input-sm inline-block"
                   name="payment_details[cp_ipn_secret]"
                   id="sci_cp_{$proc.nick}_ipn_secret" {($proc.payment_details.cp_ipn_secret)?"disabled placeholder='**hidden**'":""} />
            <a href="javascript:void(0)" class="{($proc.payment_details.cp_ipn_secret)?'':'hide'}"
               id="cp_{$proc.nick}_set_new_sci_ipn_secret"
               onclick="set_new_pass('cp_{$proc.nick}_set_new_sci_ipn_secret','cp_{$proc.nick}_cancel_new_sci_ipn_secret','sci_cp_{$proc.nick}_ipn_secret')">{$lang.label.set_new}</a>
            <a href="javascript:void(0)" class="hide" id="cp_{$proc.nick}_cancel_new_sci_ipn_secret"
               onclick="cancel_new_pass('cp_{$proc.nick}_set_new_sci_ipn_secret','cp_{$proc.nick}_cancel_new_sci_ipn_secret','sci_cp_{$proc.nick}_ipn_secret')">{$lang.label.cancel}</a>
        </div>
    </div>

    <!-- Modal Help -->
    <div id="help-sci-coinpayments-{$proc.nick}" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Coinpayments : via Website ({strtoupper($proc.curr_nick)}) SCI Documentation</h4>
                </div>
                <div class="modal-body">
                    <ol>
                        <li>Login to your Coinpayments account. Go to Account >
                            Coin Acceptance Settings.
                            <ul>
                                <li>Enable "Bitcoin".
                                </li>
                                <li>Go to Account > Account Settings. Copy your Merchant Id.</b>
                                </li>
                                <li>Go to "Merchant Settings". Enter your IPN Secret and update your account settings. </li>
                            </ul>
                        </li>
                        <li>Enter your Merchant ID & IPN Secret in "Merchant ID" and "IPN Secret" fields respectively.</b>
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

{if $settings == 'api'}
    <div id="api_coinpayments_{$proc.nick}" {($proc.payment_details.api.payment_system=='coinpayments' || $proc.payment_details.api.payment_system=='')?'':'class="hide"'}>
        <div class="form-group">
            <label for="api_cp_{$proc.nick}_transaction_fee" class="control-label">{$lang.label.transaction_fee}</label>
            <input type="text" class="form-control input-sm"
                   name="payment_details[api][cp_transaction_fee]"
                   id="api_cp_{$proc.nick}_transaction_fee"
                   value="{$proc.payment_details.api.cp_transaction_fee}"/>
        </div>
        <div class="form-group">
            <label for="api_cp_{$proc.nick}_public_key" class="control-label">{$lang.label.public_key}</label>
            <input type="text" class="form-control input-sm"
                   name="payment_details[api][cp_public_key]"
                   id="api_cp_{$proc.nick}_public_key"
                   value="{$proc.payment_details.api.cp_public_key}"/>
        </div>
        <div class="form-group">
            <label for="api_cp_{$proc.nick}_private_key" class="control-label">{$lang.label.private_key}</label>
            <input type="text" class="form-control input-sm inline-block"
                   name="payment_details[api][cp_private_key]"
                   id="api_cp_{$proc.nick}_private_key" {($proc.payment_details.api.cp_private_key)?"disabled placeholder='**hidden**'":""} />
            <a href="javascript:void(0)" class="{($proc.payment_details.api.cp_private_key)?'':'hide'}"
               id="cp_{$proc.nick}_set_new_api_prv_key"
               onclick="set_new_pass('cp_{$proc.nick}_set_new_api_prv_key','cp_{$proc.nick}_cancel_new_api_prv_key','api_cp_{$proc.nick}_private_key')">{$lang.label.set_new}</a>
            <a href="javascript:void(0)" class="hide" id="cp_{$proc.nick}_cancel_new_api_prv_key"
               onclick="cancel_new_pass('cp_{$proc.nick}_set_new_api_prv_key','cp_{$proc.nick}_cancel_new_api_prv_key','api_cp_{$proc.nick}_private_key')">{$lang.label.cancel}</a>
        </div>
    </div>

    <!-- Modal Help -->
    <div id="help-api-coinpayments-{$proc.nick}" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Coinpayments ({strtoupper($proc.curr_nick)}) API Documentation</h4>
                </div>
                <div class="modal-body">
                    <ol>
                        <li>Login to your Coinpayments account. Go to Account >
                            API Keys.
                            <ul>
                                <li>Click "Generate New Key".
                                </li>
                                <li>Copy the Public and Private Key.</b>
                                </li>
                                <li>Click "Edit Permissions" and check "create_transaction", "create_withdrawal", "auto_confirm" (below create_withdrawal), create_mass_withdrawal, balances.</li>
                            </ul>
                        </li>
                        <li>(Optional) If you want to pay the additional coinpayments fee when paying the members, then enter the transaction fee here which you can find
                            <a href="https://www.coinpayments.net/help-fees" target="_blank"><b>here</b></a></li>
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
