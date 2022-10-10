{block name="page_subtitle"}<small>(#{$p_withdrawal.uid})</small>{/block}

{block name="breadcrumb"}
    <li>
        <a href="{$admin_url}/pending_withdrawals">{$lang.breadcrumb.pending_withdrawals}</a>
    </li>
    <li class="active">{$lang.breadcrumb.manual_pay}</li>
{/block}

{block name="page_content"}
            {if $p_withdrawal.nick == "pm"}
            <form class="form-horizontal" name="payment_form" id="payment_form" method="post"
                  action="{$p_withdrawal.form_action}">
                <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
                <input type="hidden" class="f_hidden_el" name="PAYEE_ACCOUNT" value="{$p_withdrawal.account}"/>
                <input type="hidden" class="f_hidden_el" name="PAYEE_NAME" value="{$p_withdrawal.username}"/>
                <input type="hidden" class="f_hidden_el" name="PAYMENT_ID" value="{$p_withdrawal.uid}"/>
                <input type="hidden" class="f_hidden_el" name="PAYMENT_AMOUNT"
                       value="{$p_withdrawal.p_details.pay_amount}"/>
                <input type="hidden" class="f_hidden_el" name="PAYMENT_UNITS"
                       value="{$p_withdrawal.curr_nick|strtoupper}"/>
                <input type="hidden" class="f_hidden_el" name="SUGGESTED_MEMO" value="{$p_withdrawal.memo}"/>
                <input type="hidden" class="f_hidden_el" name="PAYMENT_URL"
                       value="{$admin_url}/pending_withdrawals/{$p_withdrawal.uid}/manual_pay/success"/>
                <input type="hidden" class="f_hidden_el" name="PAYMENT_URL_METHOD" value="GET"/>
                <input type="hidden" class="f_hidden_el" name="NOPAYMENT_URL"
                       value="{$admin_url}/pending_withdrawals/{$p_withdrawal.uid}/manual_pay/failed"/>
                <input type="hidden" class="f_hidden_el" name="NOPAYMENT_URL_METHOD" value="GET"/>
                <input type="hidden" class="f_hidden_el" name="BAGGAGE_FIELDS" value="PAYMENT_DATA"/>
                <input type="hidden" class="f_hidden_el" name="PAYMENT_DATA" value="{$p_withdrawal.wdr_id}"/>
                {elseif $p_withdrawal.nick == "pz"}
                <form class="form-horizontal" name="payment_form" id="payment_form" method="post"
                      action="{$p_withdrawal.form_action}">
                    <input type="hidden" class="f_hidden_el" name="ap_merchant" value="{$p_withdrawal.account}"/>
                    <input type="hidden" class="f_hidden_el" name="ap_purchasetype" value="item-goods"/>
                    <input type="hidden" class="f_hidden_el" name="ap_itemname" value="{$p_withdrawal.uid}"/>
                    <input type="hidden" class="f_hidden_el" name="ap_amount"
                           value="{$p_withdrawal.p_details.pay_amount}"/>
                    <input type="hidden" class="f_hidden_el" name="ap_currency"
                           value="{$p_withdrawal.curr_nick|strtoupper}"/>
                    <input type="hidden" class="f_hidden_el" name="ap_description" value="{$p_withdrawal.memo}"/>
                    <input type="hidden" class="f_hidden_el" name="ap_returnurl"
                           value="{$admin_url}/pending_withdrawals/{$p_withdrawal.uid}/manual_pay/success"/>
                    <input type="hidden" class="f_hidden_el" name="ap_cancelurl"
                           value="{$admin_url}/pending_withdrawals/{$p_withdrawal.uid}/manual_pay/failed"/>
                    <input type="hidden" class="f_hidden_el" name="apc_1" value="{$p_withdrawal.wdr_id}"/>
                    {elseif $p_withdrawal.nick=="stp"}
                    <form class="form-horizontal" name="payment_form" id="payment_form" method="post"
                          action="{$p_withdrawal.form_action}">
                        <input type="hidden" class="f_hidden_el" name="merchantAccount"
                               value="{$p_withdrawal.account}"/>
                        <input type="hidden" class="f_hidden_el" name="sci_name" value="{$p_withdrawal.username}"/>
                        <input type="hidden" class="f_hidden_el" name="amount"
                               value="{$p_withdrawal.p_details.pay_amount}"/>
                        <input type="hidden" class="f_hidden_el" name="currency"
                               value="{$p_withdrawal.curr_nick|strtoupper}"/>
                        <input type="hidden" class="f_hidden_el" name="testmode" value="0"/>
                        <input type="hidden" class="f_hidden_el" name="item_id" value="{$p_withdrawal.uid}"/>
                        <input type="hidden" class="f_hidden_el" name="memo" value="{$p_withdrawal.memo}"/>
                        <input type="hidden" class="f_hidden_el" name="return_url"
                               value="{$admin_url}/pending_withdrawals/{$p_withdrawal.uid}/manual_pay/success"/>
                        <input type="hidden" class="f_hidden_el" name="return_method" value="GET"/>
                        <input type="hidden" class="f_hidden_el" name="cancel_url"
                               value="{$admin_url}/pending_withdrawals/{$p_withdrawal.uid}/manual_pay/failed"/>
                        <input type="hidden" class="f_hidden_el" name="user1" value="{$p_withdrawal.wdr_id}"/>
                        {elseif $p_withdrawal.nick != 'pm' && $p_withdrawal.nick != 'pz' && $p_withdrawal.nick != 'stp'}
                        <form class="form-horizontal" name="payment_form" id="payment_form" method="post">
                            <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
                            {/if}

                            {include file="form_status.tpl" form="payment_form"}

                            <div class="table-responsive">
                                <table class="table table-bordered table-striped-left">
                                    <tbody>
                                        <tr>
                                            <td>{$lang.label.date}</td>
                                            <td class="text-muted"><i>{$p_withdrawal.date|dtformat:'jS M, Y H:i:s'}</i>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>{$lang.label.username}</td>
                                            <td>
                                                <a href="{$admin_url}/users/{$p_withdrawal.user_id}/profile"
                                                   data-toggle="tooltip"
                                                   title="{$lang.label.manage} {$lang.label.user}">{$p_withdrawal.username}</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>{$lang.label.ip}</td>
                                            <td>{$p_withdrawal.p_details.ip}</td>
                                        </tr>
                                        <tr>
                                            <td>{$lang.label.amount}</td>
                                            <td>
                                                {$p_withdrawal.amount}{$curr_nick|strtoupper}
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>{$lang.label.payment_amount}</td>
                                            <td>
                                                <span class="text-success text-bold">{$p_withdrawal.p_details.pay_amount}</span>
                                               {$p_withdrawal.curr_nick|strtoupper}
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>{$lang.label.description}</td>
                                            <td>{$p_withdrawal.description}</td>
                                        </tr>
                                        {if $p_withdrawal.nick != "pm" && $p_withdrawal.nick != "pz" && $p_withdrawal.nick != "stp"}
                                            <tr>
                                                <td>{$lang.label.recipient}</td>
                                                <td>
                                                    {if $p_withdrawal.p_type == 'custom'}
                                                        {foreach $p_withdrawal.account as $key=>$val}
                                                            <span style="float: left; margin-left: 5px; display: block;">{$val.name}
                                                                : <span style="font-weight: 600">{$val.value}</span></span>
                                                            <br/>
                                                        {/foreach}
                                                    {else}
                                                        <input type="text" required class="form-control input-sm"
                                                               name="recipient" id="recipient"
                                                               value="{$p_withdrawal.account}">
                                                    {/if}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>{$lang.label.payment_batch}</td>
                                                <td>
                                                    <input type="text" required class="form-control input-sm"
                                                           name="batch" id="batch">
                                                </td>
                                            </tr>
                                        {else}
                                            <tr>
                                                <td>{$lang.label.recipient}</td>
                                                <td class="text-bold text-warning">{$p_withdrawal.account}</td>
                                            </tr>
                                            <tr>
                                                <td>{$lang.label.have_payment_batch}</td>
                                                <td>
                                                        <input type="checkbox" name="check_payment_batch"
                                                               id="check_payment_batch"
                                                               value="true">
                                                </td>
                                            </tr>
                                            <tr id="p_batch" class="hide">
                                                <td>{$lang.label.payment_batch}</td>
                                                <td>
                                                    <input type="text" class="form-control input-sm" name="batch"
                                                           id="batch" required disabled>
                                                </td>
                                            </tr>
                                        {/if}
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td colspan="2" style="background-color: transparent;border: 0;">
                                                {if $p_withdrawal.nick != "pm" && $p_withdrawal.nick != "pz" && $p_withdrawal.nick != "stp"}
                                                    <button type="submit"
                                                            class="btn btn-primary">{$lang.label.update_payment}</button>
                                                {else}
                                                    <input type="hidden" required class="form-control input-sm"
                                                           name="recipient"
                                                           id="recipient" value="{$p_withdrawal.account}" disabled>
                                                    {if $p_withdrawal.account}
                                                        <button type="submit" class="btn btn-success" id="go_to">{$lang.label.go_to} {$p_withdrawal.proc_name}</button>
                                                    {/if}
                                                    <button type="submit" class="btn btn-primary hide"
                                                            id="upd_pay">{$lang.label.update_payment}</button>
                                                {/if}
                                            </td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </form>
{/block}

{block name="foo" append}
    {if $p_withdrawal.nick == "pm" || $p_withdrawal.nick == "pz" || $p_withdrawal.nick == "stp"}
        <script type="text/javascript">
            var action = "{$p_withdrawal.form_action}";
            {literal}
            jQuery(function ($) {
                "use strict"; // Start of use strict
                $('#check_payment_batch').change(function () {
                    if ($('#check_payment_batch:checked').val()) {
                        $('.f_hidden_el').attr({'disabled': 'true'});
                        $('#recipient').removeAttr('disabled');
                        $('#p_batch').removeClass('hide');
                        $('#batch').removeAttr('disabled');
                        $('#upd_pay').removeClass('hide');
                        $('#go_to').addClass('hide');
                        $('#payment_form').attr('action', "")
                    }
                    else {
                        $('.f_hidden_el').removeAttr('disabled');
                        $('#recipient').attr({'disabled': 'true'});
                        $('#p_batch').addClass('hide');
                        $('#batch').attr({'disabled': 'true'});
                        $('#upd_pay').addClass('hide');
                        $('#go_to').removeClass('hide');
                        $('#payment_form').attr('action', action);
                    }
                });
            });
            {/literal}
        </script>
    {/if}
{/block}