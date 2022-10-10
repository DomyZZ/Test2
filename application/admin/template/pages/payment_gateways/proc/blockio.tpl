{if $settings == 'sci'}
    <div id="sci_blockio_{$proc.nick}" {($proc.payment_details.payment_system=='blockio')?'':'class="hide"'}>
        <div class="form-group">
            <label for="sci_blio_{$proc.nick}_api_key" class="control-label">{$lang.label.api_key}</label>
            <input type="text" class="form-control input-sm"
                   name="payment_details[blio_api_key]"
                   id="sci_blio_{$proc.nick}_api_key"
                   value="{$proc.payment_details.blio_api_key}"/>
        </div>
        <div class="form-group">
            <label for="sci_blio_{$proc.nick}_secret_pin" class="control-label">{$lang.label.secret_pin}</label>
            <input type="text" class="form-control input-sm inline-block"
                   name="payment_details[blio_secret_pin]"
                   id="sci_blio_{$proc.nick}_secret_pin" {($proc.payment_details.blio_secret_pin)?"disabled placeholder='**hidden**'":""} />
            <a href="javascript:void(0)" class="{($proc.payment_details.blio_secret_pin)?'':'hide'}"
               id="blio_{$proc.nick}_set_new_sci_secret_pin"
               onclick="set_new_pass('blio_{$proc.nick}_set_new_sci_secret_pin','blio_{$proc.nick}_cancel_new_sci_secret_pin','sci_blio_{$proc.nick}_secret_pin')">{$lang.label.set_new}</a>
            <a href="javascript:void(0)" class="hide" id="blio_{$proc.nick}_cancel_new_sci_secret_pin"
               onclick="cancel_new_pass('blio_{$proc.nick}_set_new_sci_secret_pin','blio_{$proc.nick}_cancel_new_sci_secret_pin','sci_blio_{$proc.nick}_secret_pin')">{$lang.label.cancel}</a>
        </div>
    </div>

    <!-- Modal Help -->
    <div id="help-sci-blockio-{$proc.nick}" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">BlockIo (BTC) SCI Documentation</h4>
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
    <div id="api_blockio_{$proc.nick}" {($proc.payment_details.api.payment_system=='blockio')?'':'class="hide"'}>
        <div class="form-group">
            <label for="api_blio_{$proc.nick}_network_fees" class="control-label">{$lang.label.network_fees}</label>
            <select class="form-control input-sm" name="payment_details[api][blio_network_fees]"
                    id="api_blio_{$proc.nick}_network_fees">
                <option value="low" {($proc.payment_details.api.blio_network_fees=='low')?'selected':''}>
                    Low
                </option>
                <option value="medium" {($proc.payment_details.api.blio_network_fees=='medium')?'selected':''}>
                    Medium
                </option>
                <option value="high" {($proc.payment_details.api.blio_network_fees=='high')?'selected':''}>
                    High
                </option>
            </select>
        </div>
        <div class="form-group">
            <label for="api_blio_{$proc.nick}_api_key" class="control-label">{$lang.label.api_key}</label>
            <input type="text" class="form-control input-sm"
                   name="payment_details[api][blio_api_key]"
                   id="api_blio_{$proc.nick}_api_key"
                   value="{$proc.payment_details.api.blio_api_key}"/>
        </div>
        <div class="form-group">
            <label for="api_blio_{$proc.nick}_secret_pin" class="control-label">{$lang.label.secret_pin}</label>
            <input type="text" class="form-control input-sm inline-block"
                   name="payment_details[api][blio_secret_pin]"
                   id="api_blio_{$proc.nick}_secret_pin" {($proc.payment_details.api.blio_secret_pin)?"disabled placeholder='**hidden**'":""} />
            <a href="javascript:void(0)"
               class="{($proc.payment_details.api.blio_secret_pin)?'':'hide'}"
               id="blio_{$proc.nick}_set_new_api_secret_pin"
               onclick="set_new_pass('blio_{$proc.nick}_set_new_api_secret_pin','blio_{$proc.nick}_cancel_new_api_secret_pin','api_blio_{$proc.nick}_secret_pin')">{$lang.label.set_new}</a>
            <a href="javascript:void(0)" class="hide" id="blio_{$proc.nick}_cancel_new_api_secret_pin"
               onclick="cancel_new_pass('blio_{$proc.nick}_set_new_api_secret_pin','blio_{$proc.nick}_cancel_new_api_secret_pin','api_blio_{$proc.nick}_secret_pin')">{$lang.label.cancel}</a>
        </div>
    </div>

    <!-- Modal Help -->
    <div id="help-sci-blockio-{$proc.nick}" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">BlockIo (BTC) API Documentation</h4>
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