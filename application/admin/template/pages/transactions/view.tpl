{block name="breadcrumb"}
    <li>
        <a href="{$admin_url}/transactions">{$lang.breadcrumb.transactions}</a>
    </li>
    <li class="active">{$lang.breadcrumb.view}</li>
{/block}

{block name="page_content"}
    <div class="row">
        <div class="col-sm-12 col-md-8">
            <div class="table-responsive">
                <table class="table table-striped-left">
                    <tbody>
                        <tr>
                            <td width="30%">{$lang.label.date}</td>
                            <td class="text-muted">
                                <i>{$transaction.date|dtformat:'jS M, Y H:i:s'}</i>
                            </td>
                        </tr>
                        <tr>
                            <td>{$lang.label.username}</td>
                            <td>
                                <a href="{$admin_url}/users/{$transaction.user_id}/profile" data-toggle="tooltip"
                                   title="{$lang.label.manage} {$lang.label.user}" class="color-inherit">{$transaction.username}</a>
                            </td>
                        </tr>
                        <tr>
                            <td>{$lang.label.email}</td>
                            <td>{$transaction.email}</td>
                        </tr>
                        <tr>
                            <td>{$lang.label.type}</td>
                            <td>{$all_types[$transaction.trans_type]}</td>
                        </tr>
                        {if $transaction.deposit_id>0}
                            <tr>
                                <td>{$lang.label.package}</td>
                                <td>{$transaction.package_name}</td>
                            </tr>
                            <tr>
                                <td>{$lang.label.deposit_id}</td>
                                <td>{$transaction.dep_uid}</td>
                            </tr>
                        {/if}
                        {if $transaction['trans_type']=='pending_withdrawal' || $transaction['trans_type']=='completed_withdrawal'}
                            <tr>
                                <td>{$lang.label.ip}</td>
                                <td>
                                    {$transaction.description_2.ip}
                                </td>
                            </tr>
                        {/if}
                        <tr>
                            <td>{$lang.label.amount}</td>
                            {if $transaction.amount > 0}
                                <td class="text-bold text-success">
                                    {$curr_symbol}{$transaction.amount|truncdec:$curr_decp}
                                </td>
                            {else}
                                <td class="text-bold text-danger">
                                    {$curr_symbol}{abs($transaction.amount)|truncdec:$curr_decp}
                                </td>
                            {/if}
                        </tr>
                        {if $transaction.trans_type=='pending_withdrawal' || $transaction.trans_type=='completed_withdrawal'}
                            <tr>
                                <td>{$lang.label.fee}</td>
                                <td>
                                    {if $transaction.description_2.fee_val > 0}
                                        {$transaction.description_2.fee_val|truncdec:$curr_decp} {$curr_nick|strtoupper}
                                    {else}
                                        --
                                    {/if}
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    {if $transaction.trans_type=='pending_withdrawal'}
                                        {$lang.label.receiving_amount}
                                    {else}
                                        {$lang.label.received_amount}
                                    {/if}
                                </td>
                                <td style="font-weight: 600">
                                    <span style="color:#0082af">{$transaction.description_2.pay_amount}</span> {$transaction.curr_nick|strtoupper}
                                </td>
                            </tr>
                        {/if}
                        <tr>
                            <td>{$lang.label.processor}</td>
                            <td>
                                <img src="{$admin_assets}/assets/img/processors/{$transaction.proc_icon}"
                                     data-toggle="tooltip"
                                     title="{$transaction.proc_name}"/> {$transaction.proc_name}
                            </td>
                        </tr>
                        <tr>
                            <td>{$lang.label.description}</td>
                            <td>{$transaction.description}</td>
                        </tr>
                        {if $transaction.trans_type=='completed_withdrawal'}
                            <tr>
                                <td>{$lang.label.recipient}</td>
                                <td style="word-break: break-all;">
                                    {if $processor.p_type == 'custom'}
                                        {foreach $transaction.description_2.account as $key=>$value}
                                            {$key}:
                                            <span style="font-weight: 600; color: #a0a0a0">{$value}</span>
                                            <br>
                                        {/foreach}
                                    {else}
                                        <span style="font-weight: 600; color: #a0a0a0">{$transaction.description_2.account}</span>
                                    {/if}
                                </td>
                            </tr>
                        {/if}
                        {if $transaction['trans_type']=='add_funds' || $transaction['trans_type']=='completed_withdrawal'}
                            <tr>
                                <td>{$lang.label.batch}</td>
                                <td style="word-break: break-all;font-weight: 600;color: #009e05">
                                    {$transaction.description_2.batch}
                                </td>
                            </tr>
                        {/if}
                    </tbody>
                </table>
            </div>
        </div>
    </div>
{/block}