{if $type=='sci'}
    <div class="form-group">
        <label for="ps_account_sci_email" class="control-label">{$lang.label.account_email}</label>
            <input type="text" class="form-control input-sm"
                   name="payment_details[account_sci_email]"
                   id="ps_account_sci_email"
                   value="{$proc.payment_details.account_sci_email}"/>
    </div>

    <!-- Modal Help -->
    <div id="help-sci-pz" class="modal fade" role="dialog">
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
        <label for="ps_api_account_api_email" class="control-label">{$lang.label.account_email}</label>
            <input type="text" class="form-control input-sm"
                   name="payment_details[api][account_api_email]"
                   id="ps_api_account_api_email"
                   value="{$proc.payment_details.api.account_api_email}"/>
    </div>
    <div class="form-group">
        <label for="ps_api_api_pass" class="control-label">{$lang.label.api_password}</label>
            <input type="text" class="form-control input-sm inline-block" name="payment_details[api][api_pass]"
                   id="ps_api_api_pass" {($proc.payment_details.api.api_pass)?"disabled placeholder='**hidden**'":""}/>
            <a href="javascript:void(0)" class="{($proc.payment_details.api.api_pass)?'':'hide'}" id="pz_eur_set_new_api_pass" onclick="set_new_pass('pz_eur_set_new_api_pass','pz_eur_cancel_new_api_pass','ps_api_api_pass')">{$lang.label.set_new}</a>
            <a href="javascript:void(0)" class="hide" id="pz_eur_cancel_new_api_pass" onclick="cancel_new_pass('pz_eur_set_new_api_pass','pz_eur_cancel_new_api_pass','ps_api_api_pass')">{$lang.label.cancel}</a>
    </div>

    <!-- Modal Help -->
    <div id="help-api-pz-eur" class="modal fade" role="dialog">
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