{block name="page_subtitle"}
    <small>#{$crypto_payment.uid}</small>{/block}

{block name="breadcrumb"}
    <li>
        <a href="{$admin_url}/pending_crypto_payments">{$lang.breadcrumb.pending_crypto_payments}</a>
    </li>
    <li class="active">{$lang.breadcrumb.view}</li>
{/block}

{block name="page_content"}
    <div class="row">
        <div class="col-sm-12 col-md-8">
            <form class="form-horizontal" name="update_crypto_payment" id="update_crypto_payment" method="post"
                  action="{$admin_url}/pending_crypto_payments/{$crypto_payment.uid}/update">
                <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}" />
                <input type="hidden" name="uid" id="uid" value="{$crypto_payment.uid}" />
                {include file="form_status.tpl" form="update_crypto_payment"}
                <div class="table-responsive">
                    <table class="table table-striped-left">
                        <tbody>
                            <tr>
                                <td width="30%">{$lang.label.date}</td>
                                <td class="text-muted">
                                    <i>{$crypto_payment.date|dtformat:'jS M, Y H:i:s'}</i>
                                </td>
                            </tr>
                            <tr>
                                <td>{$lang.label.username}</td>
                                <td>
                                    <a href="{$admin_url}/users/{$crypto_payment.user_id}/profile" data-toggle="tooltip"
                                       title="{$lang.label.manage} {$lang.label.user}"
                                       class="color-inherit">{$crypto_payment.username}</a>
                                </td>
                            </tr>
                            <tr>
                                <td>{$lang.label.email}</td>
                                <td>{$crypto_payment.email}</td>
                            </tr>
                            <tr>
                                <td>{$lang.label.amount}</td>
                                <td class="text-bold text-success">
                                    {$crypto_payment.payment_amount|truncdec:8} {$crypto_payment.curr_nick|strtoupper}
                                </td>
                            </tr>
                            {if $crypto_payment.crypto_status=='underpaid'}
                            <tr>
                                <td>{$lang.label.paid_amount}</td>
                                <td class="text-bold text-danger">
                                    {(isset($crypto_payment.extra_2['paid_amount']))?$crypto_payment.extra_2['paid_amount']:'0'} {$crypto_payment.curr_nick|strtoupper}
                                </td>
                            </tr>
                            {/if}
                            <tr>
                                <td>{$lang.label.processor}</td>
                                <td>
                                    <img src="{$admin_assets}/assets/img/processors/{$crypto_payment.icon}"
                                         data-toggle="tooltip"
                                         title="{$crypto_payment.name}" />
                                </td>
                            </tr>
                            <tr>
                                <td>{$lang.label.description}</td>
                                <td>{$crypto_payment.transaction_data.description}</td>
                            </tr>
                            <tr>
                                <td>{$lang.label.address}</td>
                                <td>
                                    {$crypto_payment.extra}
                                </td>
                            </tr>
                            {if $crypto_payment.crypto_status!='inactive'}
                                <tr>
                                    <td>{$lang.label.confirmations}</td>
                                    <td>
                                        {$crypto_payment.confirmations}
                                    </td>
                                </tr>
                            {else}
                                {*<tr>
                                    <td>{$lang.label.address}</td>
                                    <td>
                                        <input type="text" class="form-control input-sm" name="extra" id="extra"
                                               required>
                                    </td>
                                </tr>*}
                            {/if}
                            <tr>
                                <td>{$lang.label.transaction_id}</td>
                                <td>
                                    <input type="text" class="form-control input-sm" name="txid" id="txid" required value="{$crypto_payment.txid}">
                                </td>
                            </tr>
                            <tr>
                                <td>{$lang.label.status}</td>
                                <td>
                                    <span class="label label-{$crypto_payment.crypto_status}">{$crypto_payment.crypto_status|ucfirst}</span>
                                </td>
                            </tr>
                            {if $crypto_payment.crypto_status!='completed'}
                                <tr>
                                    <td colspan="2">
                                        <button type="button" class="btn btn-sm btn-primary"
                                                onclick="confirm_payment(this.form)">{$lang.label.confirm_payment}</button>
                                    </td>
                                </tr>
                            {/if}
                        </tbody>
                    </table>
                </div>
            </form>
        </div>
    </div>
{/block}

{block name="foo" append}
    <script type="text/javascript">
        {literal}
        function confirm_payment(form) {
            if (confirm("Are you sure you want to confirm this payment?")) {
                form.submit();
            }
        }
        {/literal}
    </script>
{/block}