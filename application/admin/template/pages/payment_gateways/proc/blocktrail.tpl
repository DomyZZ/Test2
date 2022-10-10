{if $settings == 'sci'}
    <div id="sci_blocktrail_{$proc.nick}" {($proc.payment_details.payment_system=='blocktrail')?'':'class="hide"'}>
        <div class="form-group">
            <label for="sci_blocktrail_{$proc.nick}_api_key" class="control-label">{$lang.label.api_key}</label>
                <input type="text" class="form-control input-sm"
                       name="payment_details[blocktrail_api_key]"
                       id="sci_blocktrail_{$proc.nick}_api_key"
                       value="{$proc.payment_details.blocktrail_api_key}"/>
        </div>
        <div class="form-group">
            <label for="sci_blocktrail_{$proc.nick}_api_secret" class="control-label">{$lang.label.api_secret}</label>
                <input type="text" class="form-control input-sm inline-block"
                       name="payment_details[blocktrail_api_secret]"
                       id="sci_blocktrail_{$proc.nick}_api_secret" {($proc.payment_details.blocktrail_api_secret)?"disabled placeholder='**hidden**'":""} />
                <a href="javascript:void(0)" class="{($proc.payment_details.blocktrail_api_secret)?'':'hide'}"
                   id="blocktrail_{$proc.nick}_set_new_sci_api_secret"
                   onclick="set_new_pass('blocktrail_{$proc.nick}_set_new_sci_api_secret','blocktrail_{$proc.nick}_cancel_new_sci_api_secret','sci_blocktrail_{$proc.nick}_api_secret')">{$lang.label.set_new}</a>
                <a href="javascript:void(0)" class="hide" id="blocktrail_{$proc.nick}_cancel_new_sci_api_secret"
                   onclick="cancel_new_pass('blocktrail_{$proc.nick}_set_new_sci_api_secret','blocktrail_{$proc.nick}_cancel_new_sci_api_secret','sci_blocktrail_{$proc.nick}_api_secret')">{$lang.label.cancel}</a>
        </div>
        <div class="form-group">
            <label for="sci_blocktrail_{$proc.nick}_wallet_identifier" class="control-label">{$lang.label.wallet_identifier}</label>
                <input type="text" class="form-control input-sm"
                       name="payment_details[blocktrail_wallet_identifier]"
                       id="sci_blocktrail_{$proc.nick}_wallet_identifier"
                       value="{$proc.payment_details.blocktrail_wallet_identifier}"/>
        </div>
        <div class="form-group">
            <label for="sci_blocktrail_{$proc.nick}_wallet_password" class="control-label">{$lang.label.wallet_password}</label>
                <input type="text" class="form-control input-sm inline-block"
                       name="payment_details[blocktrail_wallet_password]"
                       id="sci_blocktrail_{$proc.nick}_wallet_password" {($proc.payment_details.blocktrail_wallet_password)?"disabled placeholder='**hidden**'":""} />
                <a href="javascript:void(0)" class="{($proc.payment_details.blocktrail_wallet_password)?'':'hide'}"
                   id="blocktrail_{$proc.nick}_set_new_sci_wallet_password"
                   onclick="set_new_pass('blocktrail_{$proc.nick}_set_new_sci_wallet_password','blocktrail_{$proc.nick}_cancel_new_sci_wallet_password','sci_blocktrail_{$proc.nick}_wallet_password')">{$lang.label.set_new}</a>
                <a href="javascript:void(0)" class="hide" id="blocktrail_{$proc.nick}_cancel_new_sci_wallet_password"
                   onclick="cancel_new_pass('blocktrail_{$proc.nick}_set_new_sci_wallet_password','blocktrail_{$proc.nick}_cancel_new_sci_wallet_password','sci_blocktrail_{$proc.nick}_wallet_password')">{$lang.label.cancel}</a>
        </div>
    </div>

    <!-- Modal Help -->
    <div id="help-sci-blocktrail-{$proc.nick}" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Blocktrail(BTC) SCI Documentation</h4>
                </div>
                <div class="modal-body">
                    <ol>
                        <li>Login to your <a href="https://dev.btc.com" target="_blank">dev.btc.com</a> account.
                            <ul>
                                <li>Go to Wallets > Bitcoin. Click on "Create New Wallet". Enter all details. Copy down the wallet identifer and wallet password.
                                </li>
                                <li>Go to Api Keys. Click on "Click New Api Key". Copy down the api key and secret.
                                </li>
                            </ul>
                        </li>
                        <li>Enter Api key,Api secret , wallet identifier and password in the respective fields .
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
    <div id="api_blocktrail_{$proc.nick}" {($proc.payment_details.api.payment_system=='blocktrail')?'':'class="hide"'}>
        <div class="form-group">
            <label for="api_blocktrail_{$proc.nick}_network_fees" class="control-label">{$lang.label.network_fees}</label>
                <select class="form-control input-sm" name="payment_details[api][blocktrail_network_fees]"
                        id="api_blocktrail_{$proc.nick}_network_fees">
                    <option value="optimal" {($proc.payment_details.api.blocktrail_network_fees=='optimal')?'selected':''}>
                        Optimal
                    </option>
                    <option value="low" {($proc.payment_details.api.blocktrail_network_fees=='low')?'selected':''}>
                        Low Priority
                    </option>
                </select>
        </div>
        <div class="form-group">
            <label for="api_blocktrail_{$proc.nick}_api_key" class="control-label">{$lang.label.api_key}</label>
                <input type="text" class="form-control input-sm"
                       name="payment_details[api][blocktrail_api_key]"
                       id="api_blocktrail_{$proc.nick}_api_key"
                       value="{$proc.payment_details.api.blocktrail_api_key}"/>
        </div>
        <div class="form-group">
            <label for="api_blocktrail_{$proc.nick}_api_secret" class="control-label">{$lang.label.api_secret}</label>
                <input type="text" class="form-control input-sm inline-block"
                       name="payment_details[api][blocktrail_api_secret]"
                       id="api_blocktrail_{$proc.nick}_api_secret" {($proc.payment_details.api.blocktrail_api_secret)?"disabled placeholder='**hidden**'":""} />
                <a href="javascript:void(0)"
                   class="{($proc.payment_details.api.blocktrail_api_secret)?'':'hide'}"
                   id="blocktrail_{$proc.nick}_set_new_api_api_secret"
                   onclick="set_new_pass('blocktrail_{$proc.nick}_set_new_api_api_secret','blocktrail_{$proc.nick}_cancel_new_api_api_secret','api_blocktrail_{$proc.nick}_api_secret')">{$lang.label.set_new}</a>
                <a href="javascript:void(0)" class="hide" id="blocktrail_{$proc.nick}_cancel_new_api_api_secret"
                   onclick="cancel_new_pass('blocktrail_{$proc.nick}_set_new_api_api_secret','blocktrail_{$proc.nick}_cancel_new_api_api_secret','api_blocktrail_{$proc.nick}_api_secret')">{$lang.label.cancel}</a>
        </div>
        <div class="form-group">
            <label for="api_blocktrail_{$proc.nick}_wallet_identifier" class="control-label">{$lang.label.wallet_identifier}</label>
                <input type="text" class="form-control input-sm"
                       name="payment_details[api][blocktrail_wallet_identifier]"
                       id="api_blocktrail_{$proc.nick}_wallet_identifier"
                       value="{$proc.payment_details.api.blocktrail_wallet_identifier}"/>
        </div>
        <div class="form-group">
            <label for="api_blocktrail_{$proc.nick}_wallet_password" class="control-label">{$lang.label.wallet_password}</label>
                <input type="text" class="form-control input-sm inline-block"
                       name="payment_details[api][blocktrail_wallet_password]"
                       id="api_blocktrail_{$proc.nick}_wallet_password" {($proc.payment_details.api.blocktrail_wallet_password)?"disabled placeholder='**hidden**'":""} />
                <a href="javascript:void(0)"
                   class="{($proc.payment_details.api.blocktrail_wallet_password)?'':'hide'}"
                   id="blocktrail_{$proc.nick}_set_new_api_wallet_password"
                   onclick="set_new_pass('blocktrail_{$proc.nick}_set_new_api_wallet_password','blocktrail_{$proc.nick}_cancel_new_api_wallet_password','api_blocktrail_{$proc.nick}_wallet_password')">{$lang.label.set_new}</a>
                <a href="javascript:void(0)" class="hide" id="blocktrail_{$proc.nick}_cancel_new_api_wallet_password"
                   onclick="cancel_new_pass('blocktrail_{$proc.nick}_set_new_api_wallet_password','blocktrail_{$proc.nick}_cancel_new_api_wallet_password','api_blocktrail_{$proc.nick}_wallet_password')">{$lang.label.cancel}</a>
        </div>
    </div>

    <!-- Modal Help -->
    <div id="help-api-blocktrail-{$proc.nick}" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Blocktrail(BTC) API Documentation</h4>
                </div>
                <div class="modal-body">
                    <ol>
                        <li>Login to your <a href="https://dev.btc.com" target="_blank">dev.btc.com</a> account.
                            <ul>
                                <li>Go to Wallets > Bitcoin. Click on "Create New Wallet". Enter all details. Copy down the wallet identifer and wallet password.
                                </li>
                                <li>Go to Api Keys. Click on "Click New Api Key". Copy down the api key and secret.
                                </li>
                            </ul>
                        </li>
                        <li>Enter Api key,Api secret , wallet identifier and password in the respective fields .
                        </li>
                        <li>
                            Set Network fee to "Optimal" (for normal fees) or "Low priority" (for very low tx fees).
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