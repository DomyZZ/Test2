{if $settings == 'sci'}
    <div id="sci_forwardblock_{$proc.nick}" {($proc.payment_details.payment_system=='forwardblock')?'':'class="hide"'}>
        <div class="form-group">
            <label for="sci_fb_{$proc.nick}_api_key" class="control-label">{$lang.label.api_key}</label>
            <input type="text" class="form-control input-sm"
                   name="payment_details[fb_api_key]"
                   id="sci_fb_{$proc.nick}_api_key"
                   value="{$proc.payment_details.fb_api_key}"/>
        </div>
        <div class="form-group">
            <label for="sci_fb_{$proc.nick}_api_secret" class="control-label">{$lang.label.api_secret}</label>
            <input type="text" class="form-control input-sm inline-block"
                   name="payment_details[fb_api_secret]"
                   id="sci_fb_{$proc.nick}_api_secret" {($proc.payment_details.fb_api_secret)?"disabled placeholder='**hidden**'":""} />
            <a href="javascript:void(0)" class="{($proc.payment_details.fb_api_secret)?'':'hide'}"
               id="fb_{$proc.nick}_set_new_sci_api_secret"
               onclick="set_new_pass('fb_{$proc.nick}_set_new_sci_api_secret','fb_{$proc.nick}_cancel_new_sci_api_secret','sci_fb_{$proc.nick}_api_secret')">{$lang.label.set_new}</a>
            <a href="javascript:void(0)" class="hide" id="fb_{$proc.nick}_cancel_new_sci_api_secret"
               onclick="cancel_new_pass('fb_{$proc.nick}_set_new_sci_api_secret','fb_{$proc.nick}_cancel_new_sci_api_secret','sci_fb_{$proc.nick}_api_secret')">{$lang.label.cancel}</a>
        </div>
        <div class="form-group">
            <label for="sci_fb_{$proc.nick}_forwarding_address" class="control-label">{$lang.label.forwarding_address}</label>
            <input type="text" class="form-control input-sm"
                   name="payment_details[fb_forwarding_address]"
                   id="sci_fb_{$proc.nick}_forwarding_address"
                   value="{$proc.payment_details.fb_forwarding_address}"/>
        </div>
    </div>

    <!-- Modal Help -->
    <div id="help-sci-forwardblock-{$proc.nick}" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">forwardblock (BTC) SCI Documentation</h4>
                </div>
                <div class="modal-body">
                    <ol>
                        <li>Login to your Block.io account. Go to Settings.
                            <ul>
                                <li>Generate Secret PIN if not generated yet. Copy it.
                                </li>
                                <li>Go to "Show API Keys". Copy Bitcoin API key.
                                </li>
                            </ul>
                        </li>
                        <li>Enter API Key and Secret PIN in the respective fields.
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
    <div id="api_forwardblock_{$proc.nick}" {($proc.payment_details.api.payment_system=='forwardblock')?'':'class="hide"'}>
        <div class="form-group">
            <label for="api_fb_{$proc.nick}_api_key" class="control-label">{$lang.label.api_key}</label>
            <input type="text" class="form-control input-sm"
                   name="payment_details[api][fb_api_key]"
                   id="api_fb_{$proc.nick}_api_key"
                   value="{$proc.payment_details.api.fb_api_key}"/>
        </div>
        <div class="form-group">
            <label for="api_fb_{$proc.nick}_hot_wallet_id" class="control-label">{$lang.label.hot_wallet_id}</label>
            <input type="text" class="form-control input-sm"
                   name="payment_details[api][fb_hot_wallet_id]"
                   id="api_fb_{$proc.nick}_hot_wallet_id"
                   value="{$proc.payment_details.api.fb_hot_wallet_id}"/>
        </div>
        <div class="form-group">
            <label for="api_fb_{$proc.nick}_hot_wallet_master_pass" class="control-label">{$lang.label.hot_wallet_master_pass}</label>
            <input type="text" class="form-control input-sm inline-block"
                   name="payment_details[api][fb_hot_wallet_master_pass]"
                   id="api_fb_{$proc.nick}_hot_wallet_master_pass" {($proc.payment_details.api.fb_hot_wallet_master_pass)?"disabled placeholder='**hidden**'":""} />
            <a href="javascript:void(0)"
               class="{($proc.payment_details.api.fb_hot_wallet_master_pass)?'':'hide'}"
               id="fb_{$proc.nick}_set_new_api_hot_wallet_master_pass"
               onclick="set_new_pass('fb_{$proc.nick}_set_new_api_hot_wallet_master_pass','fb_{$proc.nick}_cancel_new_api_hot_wallet_master_pass','api_fb_{$proc.nick}_hot_wallet_master_pass')">{$lang.label.set_new}</a>
            <a href="javascript:void(0)" class="hide" id="fb_{$proc.nick}_cancel_new_api_hot_wallet_master_pass"
               onclick="cancel_new_pass('fb_{$proc.nick}_set_new_api_hot_wallet_master_pass','fb_{$proc.nick}_cancel_new_api_hot_wallet_master_pass','api_fb_{$proc.nick}_hot_wallet_master_pass')">{$lang.label.cancel}</a>
        </div>
    </div>

    <!-- Modal Help -->
    <div id="help-sci-forwardblock-{$proc.nick}" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">forwardblock (BTC) API Documentation</h4>
                </div>
                <div class="modal-body">
                    <ol>
                        <li>Login to your Block.io account. Go to Settings.
                            <ul>
                                <li>Generate Secret PIN if not generated yet. Copy it.
                                </li>
                                <li>Go to "Show API Keys". Copy Bitcoin API key.
                                </li>
                            </ul>
                        </li>
                        <li>Enter API Key and Secret PIN in the respective fields.
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