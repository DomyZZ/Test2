{if $type=='sci'}
    <div class="form-group">
        <label for="ps_account_name" class="control-label">{$lang.label.account_name}</label>
        <input type="text" class="form-control input-sm"
               name="payment_details[account_name]"
               id="ps_account_name"
               value="{$proc.payment_details.account_name}"/>
    </div>
    <div class="form-group">
        <label for="ps_usd_account" class="control-label">{$lang.label.usd_account}</label>
        <input type="text" class="form-control input-sm"
               name="payment_details[usd_account]"
               id="ps_usd_account"
               value="{$proc.payment_details.usd_account}"/>
    </div>
    <div class="form-group">
        <label for="ps_password" class="control-label">{$lang.label.account_password}</label>
        <input type="text" class="form-control input-sm inline-block"
               name="payment_details[password]"
               id="ps_password" {($proc.payment_details.password)?"disabled placeholder='**hidden**'":""} />
        <a href="javascript:void(0)" class="{($proc.payment_details.password)?'':'hide'}" id="nxm_set_new_sci_pass"
           onclick="set_new_pass('nxm_set_new_sci_pass','nxm_cancel_new_sci_pass','ps_password')">{$lang.label.set_new}</a>
        <a href="javascript:void(0)" class="hide" id="nxm_cancel_new_sci_pass"
           onclick="cancel_new_pass('nxm_set_new_sci_pass','nxm_cancel_new_sci_pass','ps_password')">{$lang.label.cancel}</a>
    </div>

    <!-- Modal Help -->
    <div id="help-sci-nxm" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Modal Header</h4>
                </div>
                <div class="modal-body">
                    <p>Some text in the modal.</p>
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
        <label for="ps_api_account_id" class="control-label">{$lang.label.account_email}</label>
        <input type="text" class="form-control input-sm"
               name="payment_details[api][account_id]"
               id="ps_api_account_id"
               value="{$proc.payment_details.api.account_id}"/>
    </div>
    <div class="form-group">
        <label for="ps_api_payer_account_usd" class="control-label">{$lang.label.usd_account}</label>
        <input type="text" class="form-control input-sm" name="payment_details[api][payer_account_usd]"
               id="ps_api_payer_account_usd" value="{$proc.payment_details.api.payer_account_usd}"/>
    </div>
    <div class="form-group">
        <label for="ps_api_login_pass" class="control-label">{$lang.label.account_password}</label>
        <input type="text" class="form-control input-sm inline-block" name="payment_details[api][login_pass]"
               id="ps_api_login_pass" {($proc.payment_details.api.login_pass)?"disabled placeholder='**hidden**'":""} />
        <a href="javascript:void(0)" class="{($proc.payment_details.api.login_pass)?'':'hide'}"
           id="nxm_set_new_api_pass"
           onclick="set_new_pass('nxm_set_new_api_pass','nxm_cancel_new_api_pass','ps_api_login_pass')">{$lang.label.set_new}</a>
        <a href="javascript:void(0)" class="hide" id="nxm_cancel_new_api_pass"
           onclick="cancel_new_pass('nxm_set_new_api_pass','nxm_cancel_new_api_pass','ps_api_login_pass')">{$lang.label.cancel}</a>
    </div>

    <!-- Modal Help -->
    <div id="help-api-nxm" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Modal Header</h4>
                </div>
                <div class="modal-body">
                    <p>Some text in the modal.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
{/if}