{extends file="users/manage.tpl"}

{block name="manage_user"}
    {if $fund_types}
        <div class="table-responsive">
            <table class="table table-striped footable">
                <thead>
                    <tr>
                        <th class="text-right"></th>
                        <th class="text-right"><a href="{$admin_url}/transactions?username={$user.username}" data-toggle="tooltip" data-placement="bottom" title="View All Transactions">{$lang.label.balance}</a> <span
                                    class="text-muted">({$curr_symbol})</span></th>
                        <th class="text-right"><a href="{$admin_url}/transactions?username={$user.username}&type=deposit" data-toggle="tooltip" data-placement="bottom" title="Total Deposits">{$lang.label.deposits}</a> <span
                                    class="text-muted">({$curr_symbol})</span></th>
                        <th class="text-right"><a href="{$admin_url}/deposits?username={$user.username}" data-toggle="tooltip" data-placement="bottom" title="Active Deposits">{$lang.label.active_deposits}</a> <span
                                    class="text-muted">({$curr_symbol})</span></th>
                        <th class="text-right"><a href="{$admin_url}/transactions?username={$user.username}&type=completed_withdrawal" data-toggle="tooltip" data-placement="bottom" title="Completed Withdrawals">{$lang.label.withdrawals}</a> <span
                                    class="text-muted">({$curr_symbol})</span></th>
                        <th class="text-right"><a href="{$admin_url}/pending_withdrawals?username={$user.username}" data-toggle="tooltip" data-placement="bottom" title="Pending Withdrawals">{$lang.label.pending_withdrawals}</a> <span
                                    class="text-muted">({$curr_symbol})</span></th>
                        <th class="text-right"><a href="{$admin_url}/transactions?username={$user.username}&type=ref_comm" data-toggle="tooltip" data-placement="bottom" title="Referral Commissions">{$lang.label.ref_comm}</a> <span
                                    class="text-muted">({$curr_symbol})</span></th>
                        <th class="text-right"><a href="{$admin_url}/transactions?username={$user.username}&type=earning" data-toggle="tooltip" data-placement="bottom" title="Total Earnings">{$lang.label.earnings}</a> <span
                                    class="text-muted">({$curr_symbol})</span></th>
                    </tr>
                </thead>
                <tbody>
                    {foreach $processors as $id=>$proc}
                        <tr>
                            <td class="text-center">
                                <a href="{$admin_url}/payment_gateways">
                                    <img src="{$admin_assets}/assets/img/processors/{$proc.icon}" data-toggle="tooltip"
                                         title="{$proc.name}"/>
                                </a>
                            </td>
                            <td class="text-right">
                                {if $fund_types[$id]['balance']!=0}
                                    {$fund_types[$id]['balance']}
                                {else}
                                   --
                                {/if}
                            </td>
                            <td class="text-right">
                                {if $fund_types[$id]['deposit']!=0}
                                    {$fund_types[$id]['deposit']}
                                {else}
                                   --
                                {/if}
                            </td>
                            <td class="text-right">
                                {if $fund_types[$id]['active_deposit']!=0}
                                    {$fund_types[$id]['active_deposit']}
                                {else}
                                    --
                                {/if}
                            </td>
                            <td class="text-right">
                                {if $fund_types[$id]['completed_withdrawal']!=0}
                                  {$fund_types[$id]['completed_withdrawal']}
                                {else}
                                  --
                                {/if}
                            </td>
                            <td class="text-right">
                                {if $fund_types[$id]['pending_withdrawal']!=0}
                                    {$fund_types[$id]['pending_withdrawal']}
                                {else}
                                    --
                                {/if}
                            </td>
                            <td class="text-right">
                                {if $fund_types[$id]['ref_comm']!=0}
                                   {$fund_types[$id]['ref_comm']}
                                {else}
                                    --
                                {/if}
                            </td>
                            <td class="text-right">
                                {if $fund_types[$id]['earning']!=0}
                                   {$fund_types[$id]['earning']}
                                {else}
                                    --
                                {/if}
                            </td>
                        </tr>
                    {/foreach}
                </tbody>
                <tfoot>
                    <tr>
                        <td class="text-center">{$lang.label.total|strtoupper}</td>
                        <td class="text-bold text-right"><a href="{$admin_url}/transactions?username={$user.username}" data-toggle="tooltip" title="View All Transactions">{$total_funds['balance']|truncdec:$curr_decp}</a></td>
                        <td class="text-bold text-right"><a href="{$admin_url}/transactions?username={$user.username}&type=deposit" data-toggle="tooltip" title="Total Deposits">{$total_funds['deposit']|truncdec:$curr_decp}</a></td>
                        <td class="text-bold text-right"><a href="{$admin_url}/deposits?username={$user.username}" data-toggle="tooltip" title="Active Deposits">{$total_funds['active_deposit']|truncdec:$curr_decp}</a></td>
                        <td class="text-bold text-right"><a href="{$admin_url}/transactions?username={$user.username}&type=completed_withdrawal" data-toggle="tooltip" title="Completed Withdrawals">{$total_funds['completed_withdrawal']|truncdec:$curr_decp}</a></td>
                        <td class="text-bold text-right"><a href="{$admin_url}/pending_withdrawals?username={$user.username}" data-toggle="tooltip" title="Pending Withdrawals">{$total_funds['pending_withdrawal']|truncdec:$curr_decp}</a></td>
                        <td class="text-bold text-right"><a href="{$admin_url}/transactions?username={$user.username}&type=ref_comm" data-toggle="tooltip" title="Referral Commissions">{$total_funds['ref_comm']|truncdec:$curr_decp}</a></td>
                        <td class="text-bold text-right"><a href="{$admin_url}/transactions?username={$user.username}&type=earning" data-toggle="tooltip" title="Total Earnings">{$total_funds['earning']|truncdec:$curr_decp}</a></td>
                    </tr>
                </tfoot>
            </table>
        </div>
    {else}
        <div class="alert alert-warning ">
            <i class="fa fa-exclamation-triangle"></i> {$lang.error.no_funds_available}
        </div>
    {/if}
{/block}