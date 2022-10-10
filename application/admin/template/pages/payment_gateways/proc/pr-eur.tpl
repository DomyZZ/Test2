{if $type=='sci'}
    <div class="form-group">
        <label for="ps_shop_id" class="control-label">{$lang.label.shop_id}</label>
        <input type="text" class="form-control input-sm"
               name="payment_details[shop_id]"
               id="ps_shop_id"
               value="{$proc.payment_details.shop_id}"/>
    </div>
    <div class="form-group">
        <label for="ps_secret_key" class="control-label">{$lang.label.secret_key}</label>
        <input type="text" class="form-control input-sm inline-block"
               name="payment_details[secret_key]"
               id="ps_secret_key" {($proc.payment_details.secret_key)?"disabled placeholder='**hidden**'":""}/>
        <a href="javascript:void(0)" class="{($proc.payment_details.secret_key)?'':'hide'}" id="pr_eur_set_new_sci_pass"
           onclick="set_new_pass('pr_eur_set_new_sci_pass','pr_eur_cancel_new_sci_pass','ps_secret_key')">{$lang.label.set_new}</a>
        <a href="javascript:void(0)" class="hide" id="pr_eur_cancel_new_sci_pass"
           onclick="cancel_new_pass('pr_eur_set_new_sci_pass','pr_eur_cancel_new_sci_pass','ps_secret_key')">{$lang.label.cancel}</a>
    </div>

    <!-- Modal Help -->
    <div id="help-sci-pr-eur" class="modal fade" role="dialog">
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
        <label for="ps_api_account_id" class="control-label">{$lang.label.account_id}</label>
        <input type="text" class="form-control input-sm"
               name="payment_details[api][account_id]"
               id="ps_api_account_id"
               value="{$proc.payment_details.api.account_id}"/>
    </div>
    <div class="form-group">
        <label for="ps_api_api_id" class="control-label">{$lang.label.api_id}</label>
        <input type="text" class="form-control input-sm" name="payment_details[api][api_id]"
               id="ps_api_api_id" value="{$proc.payment_details.api.api_id}"/>
    </div>
    <div class="form-group">
        <label for="ps_api_api_key" class="control-label">{$lang.label.api_key}</label>
        <input type="text" class="form-control input-sm inline-block" name="payment_details[api][api_key]"
               id="ps_api_api_key" {($proc.payment_details.api.api_key)?"disabled placeholder='**hidden**'":""}/>
        <a href="javascript:void(0)" class="{($proc.payment_details.api.api_key)?'':'hide'}"
           id="pr_eur_set_new_api_pass"
           onclick="set_new_pass('pr_eur_set_new_api_pass','pr_eur_cancel_new_api_pass','ps_api_api_key')">{$lang.label.set_new}</a>
        <a href="javascript:void(0)" class="hide" id="pr_eur_cancel_new_api_pass"
           onclick="cancel_new_pass('pr_eur_set_new_api_pass','pr_eur_cancel_new_api_pass','ps_api_api_key')">{$lang.label.cancel}</a>
    </div>

    <!-- Modal Help -->
    <div id="help-api-pr-eur" class="modal fade" role="dialog">
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