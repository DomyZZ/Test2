{if $type=='sci'}
    <div class="form-group">
        <label for="ps_account_login" class="control-label">{$lang.label.account_login}</label>
            <input type="text" class="form-control input-sm"
                   name="payment_details[account_login]"
                   id="ps_account_login"
                   value="{$proc.payment_details.account_login}"/>
    </div>
    <div class="form-group">
        <label for="ps_sci_btn_name" class="control-label">{$lang.label.sci_btn_name}</label>
            <input type="text" class="form-control input-sm"
                   name="payment_details[sci_btn_name]"
                   id="ps_sci_btn_name"
                   value="{$proc.payment_details.sci_btn_name}"/>
    </div>
    <div class="form-group">
        <label for="ps_pay_btn_pass" class="control-label">{$lang.label.pay_btn_pass}</label>
            <input type="text" class="form-control input-sm inline-block"
                   name="payment_details[pay_btn_pass]"
                   id="ps_pay_btn_pass" {($proc.payment_details.pay_btn_pass)?"disabled placeholder='**hidden**'":""} />
            <a href="javascript:void(0)" class="{($proc.payment_details.pay_btn_pass)?'':'hide'}" id="stp_set_new_sci_pass" onclick="set_new_pass('stp_set_new_sci_pass','stp_cancel_new_sci_pass','ps_pay_btn_pass')">{$lang.label.set_new}</a>
            <a href="javascript:void(0)" class="hide" id="stp_cancel_new_sci_pass" onclick="cancel_new_pass('stp_set_new_sci_pass','stp_cancel_new_sci_pass','ps_pay_btn_pass')">{$lang.label.cancel}</a>
    </div>

    <!-- Modal Help -->
    <div id="help-sci-stp" class="modal fade" role="dialog">
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
        <label for="ps_api_account_username" class="control-label">{$lang.label.account_username}</label>
            <input type="text" class="form-control input-sm"
                   name="payment_details[api][account_username]"
                   id="ps_api_account_username"
                   value="{$proc.payment_details.api.account_username}"/>
    </div>
    <div class="form-group">
        <label for="ps_api_api_name" class="control-label">{$lang.label.api_name}</label>
            <input type="text" class="form-control input-sm" name="payment_details[api][api_name]"
                   id="ps_api_api_name" value="{$proc.payment_details.api.api_name}"/>
    </div>
    <div class="form-group">
        <label for="ps_api_api_pass" class="control-label">{$lang.label.api_password}</label>
            <input type="text" class="form-control input-sm inline-block" name="payment_details[api][api_pass]"
                   id="ps_api_api_pass" {($proc.payment_details.api.api_pass)?"disabled placeholder='**hidden**'":""} />
            <a href="javascript:void(0)" class="{($proc.payment_details.api.api_pass)?'':'hide'}" id="stp_set_new_api_pass" onclick="set_new_pass('stp_set_new_api_pass','stp_cancel_new_api_pass','ps_api_api_pass')">{$lang.label.set_new}</a>
            <a href="javascript:void(0)" class="hide" id="stp_cancel_new_api_pass" onclick="cancel_new_pass('stp_set_new_api_pass','stp_cancel_new_api_pass','ps_api_api_pass')">{$lang.label.cancel}</a>
    </div>

    <!-- Modal Help -->
    <div id="help-api-stp" class="modal fade" role="dialog">
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