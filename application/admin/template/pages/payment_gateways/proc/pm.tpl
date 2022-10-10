{if $type=='sci'}
    <div class="form-group">
        <label for="pm_account_name" class="control-label">{$lang.label.account_name}</label>
        <input type="text" class="form-control input-sm"
               name="payment_details[account_name]"
               id="pm_account_name"
               value="{$proc.payment_details.account_name}"/>
    </div>
    <div class="form-group">
        <label for="pm_usd_account" class="control-label">{$lang.label.usd_account}</label>
        <input type="text" class="form-control input-sm"
               name="payment_details[usd_account]"
               id="pm_usd_account"
               value="{$proc.payment_details.usd_account}"/>
    </div>
    <div class="form-group">
        <label for="pm_alternate_pass" class="control-label">{$lang.label.alt_passphrase}</label>
        <input type="text" class="form-control input-sm inline-block"
               name="payment_details[alternate_pass]"
               id="pm_alternate_pass" {($proc.payment_details.alternate_pass)?"disabled placeholder='**hidden**'":""} />
        <a href="javascript:void(0)" class="{($proc.payment_details.alternate_pass)?'':'hide'}" id="pm_set_new_sci_pass"
           onclick="set_new_pass('pm_set_new_sci_pass','pm_cancel_new_sci_pass','pm_alternate_pass')">{$lang.label.set_new}</a>
        <a href="javascript:void(0)" class="hide" id="pm_cancel_new_sci_pass"
           onclick="cancel_new_pass('pm_set_new_sci_pass','pm_cancel_new_sci_pass','pm_alternate_pass')">{$lang.label.cancel}</a>
    </div>
    <!-- Modal Help -->
    <div id="help-sci-pm" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">{$proc.name} SCI Documentation</h4>
                </div>
                <div class="modal-body">
                    <ol>
                        <li>Enter any name as your "Account Name". For e.g. {$settings.general.site_name}</li>
                        <li>Enter your {$proc.name} USD Account. For e.g. U2121231.</li>
                        <li>Login to your {$proc.name} account. Go to "Settings" and set/generate an Alternate Passphrase. Copy
                            and paste the passphrase here.
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

{if $type=='api'}
    <div class="form-group">
        <label for="pm_api_account_id" class="control-label">{$lang.label.account_id}</label>
        <input type="text" class="form-control input-sm"
               name="payment_details[api][account_id]"
               id="pm_api_account_id"
               value="{$proc.payment_details.api.account_id}"/>
    </div>
    <div class="form-group">
        <label for="pm_api_payer_account_usd" class="control-label">{$lang.label.usd_account}</label>
        <input type="text" class="form-control input-sm" name="payment_details[api][payer_account_usd]"
               id="pm_api_payer_account_usd" value="{$proc.payment_details.api.payer_account_usd}"/>
    </div>
    <div class="form-group">
        <label for="pm_api_login_pass" class="control-label">{$lang.label.login_password}</label>
        <input type="text" class="form-control input-sm inline-block" name="payment_details[api][login_pass]"
               id="pm_api_login_pass" {($proc.payment_details.api.login_pass)?"disabled placeholder='**hidden**'":""} />
        <a href="javascript:void(0)" class="{($proc.payment_details.api.login_pass)?'':'hide'}" id="pm_set_new_api_pass"
           onclick="set_new_pass('pm_set_new_api_pass','pm_cancel_new_api_pass','pm_api_login_pass')">{$lang.label.set_new}</a>
        <a href="javascript:void(0)" class="hide" id="pm_cancel_new_api_pass"
           onclick="cancel_new_pass('pm_set_new_api_pass','pm_cancel_new_api_pass','pm_api_login_pass')">{$lang.label.cancel}</a>
    </div>
    <!-- Modal Help -->
    <div id="help-api-pm" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">{$proc.name} API Documentation</h4>
                </div>
                <div class="modal-body">
                    <ol>
                        <li>Login to your {$proc.name} account. Go to 'Settings' -->
                            'Change Security Settings'.
                            <ul>
                                <li>Scroll down to 'API (Automated Program Interface)' and
                                    click 'Enable' to enable the API system. Set IP Mask as your server IP. Contact your hosting provider to get it.
                                </li>
                            </ul>
                        </li>
                        <li>Enter your {$proc.name} login id in "Account Id" field. For e.g. 7261662</li>
                        <li>Enter your {$proc.name} USD Account. For e.g. U2121231.</li>
                        <li>Enter your {$proc.name} login password in "Account Password" field.</li>
                    </ol>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
{/if}