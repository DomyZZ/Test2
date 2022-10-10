{if $type=='sci'}
    <div class="form-group">
        <label for="pr_shop_id" class="control-label">{$lang.label.shop_id}</label>
        <input type="text" class="form-control input-sm"
               name="payment_details[shop_id]"
               id="pr_shop_id"
               value="{$proc.payment_details.shop_id}"/>
    </div>
    <div class="form-group">
        <label for="pr_secret_key" class="control-label">{$lang.label.secret_key}</label>
        <input type="text" class="form-control input-sm inline-block"
               name="payment_details[secret_key]"
               id="pr_secret_key" {($proc.payment_details.secret_key)?"disabled placeholder='**hidden**'":""}/>
        <a href="javascript:void(0)" class="{($proc.payment_details.secret_key)?'':'hide'}" id="pr_set_new_sci_pass"
           onclick="set_new_pass('pr_set_new_sci_pass','pr_cancel_new_sci_pass','pr_secret_key')">{$lang.label.set_new}</a>
        <a href="javascript:void(0)" class="hide" id="pr_cancel_new_sci_pass"
           onclick="cancel_new_pass('pr_set_new_sci_pass','pr_cancel_new_sci_pass','pr_secret_key')">{$lang.label.cancel}</a>
    </div>

    <!-- Modal Help -->
    <div id="help-sci-pr" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">{$proc.name} SCI Documentation</h4>
                </div>
                <div class="modal-body">
                    <ol>
                        <li>Login to your {$proc.name} account. Go to 'Merchant Settings'. Click "Add Merchant".
                            <ul>
                                <li>Set Domain as <b>{$domain}</b>. Copy and store the secret key. Proceed to next settings.
                                </li>
                                <li>Set 'Success URL' as <b>{$base_url}/payment/successful</b>
                                </li>
                                <li>Set 'Fail URL' as <b>{$base_url}/payment/failed</b>
                                </li>
                                <li>Set 'Status URL' as <b>{$base_url}/payment/status/{$proc.nick}</b>
                                </li>
                                <li>Leave other settings as it is.Click 'Confirm Changes'.</li>
                            </ul>
                        </li>
                        <li>Copy the "ID" and enter in "Shop ID" field. For e.g. 601117264
                        </li>
                        <li>Enter the previously stored secret key in step 2 in "Secret Key" field.</li>
                    </ol>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
{/if}

{if $type=='api'}
    <div class="form-group">
        <label for="pr_api_account_id" class="control-label">{$lang.label.account_id}</label>
        <input type="text" class="form-control input-sm"
               name="payment_details[api][account_id]"
               id="pr_api_account_id"
               value="{$proc.payment_details.api.account_id}"/>
    </div>
    <div class="form-group">
        <label for="pr_api_api_id" class="control-label">{$lang.label.api_id}</label>
        <input type="text" class="form-control input-sm" name="payment_details[api][api_id]"
               id="pr_api_api_id" value="{$proc.payment_details.api.api_id}"/>
    </div>
    <div class="form-group">
        <label for="pr_api_api_key" class="control-label">{$lang.label.api_key}</label>
        <input type="text" class="form-control input-sm inline-block" name="payment_details[api][api_key]"
               id="pr_api_api_key" {($proc.payment_details.api.api_key)?"disabled placeholder='**hidden**'":""}/>
        <a href="javascript:void(0)" class="{($proc.payment_details.api.api_key)?'':'hide'}" id="pr_set_new_api_pass"
           onclick="set_new_pass('pr_set_new_api_pass','pr_cancel_new_api_pass','pr_api_api_key')">{$lang.label.set_new}</a>
        <a href="javascript:void(0)" class="hide" id="pr_cancel_new_api_pass"
           onclick="cancel_new_pass('pr_set_new_api_pass','pr_cancel_new_api_pass','pr_api_api_key')">{$lang.label.cancel}</a>
    </div>

    <!-- Modal Help -->
    <div id="help-api-pr" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">{$proc.name} API Documentation</h4>
                </div>
                <div class="modal-body">
                    <ol>
                        <li>Enter your {$proc.name} login id in "Account Id" field. For e.g. P18421095.
                        <li>Login to your {$proc.name} account. Go to 'Mass Payouts'. Click "Add Api-User".
                            <ul>
                                <li>Enter any API Name. For e.g {$settings.general.site_name} API. Copy and store the generated secret key.
                                </li>
                                <li>Enter Server IP in the IP field for security. Contact your hosting provider to get it.</b>
                                </li>
                                <li>Save the API settings.</li>
                            </ul>
                        </li>
                        <li>Copy the "ID" and enter in "API ID" field. For e.g. 601117264
                        </li>
                        <li>Enter the previously stored secret key in step 3 in "API Key" field.</li>
                    </ol>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
{/if}