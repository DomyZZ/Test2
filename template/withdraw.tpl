{include file="header.tpl"}
<div class="row">
    <div class="col-sm-10">

        {if $settings.general.disable_withdrawals}
            <div class="alert alert-danger">
                {$lang.withdrawal_disabled}
            </div>
        {elseif !$funds}
            <div class="alert alert-danger">
                {$lang.withdrawal_no_funds}
            </div>
        {else}

            {if $pending_withdrawals}
                <div class="alert alert-warning">
                    You have pending withdrawals of <a
                            href="pending_withdrawals"><b>{$curr_symbol}{$pending_withdrawals}</b></a>
                </div>
            {/if}
            <form action="{$base_url}/withdraw" method="post">
                {include file="form_errors.tpl" form="withdraw"}
                {include file="form_success.tpl" form="withdraw"}
                <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>

                {if !$confirmation}
                    <div class="form-group">
                        <label>{$lang.select_processor}</label>
                        <table class="table table-bordered">
                            <thead>
                            <tr>
                                <th></th>
                                <th colspan="2">Processor</th>
                                <th>Balance</th>
                                <th>Receiving Account</th>
                            </tr>
                            </thead>
                            <tbody>
                            {foreach $funds as $fund}
                                <tr>
                                    <td width="1%"><input type="radio" name="processor" required
                                                          value="{$fund.proc_id}"
                                                {(set_value('processor') && set_value('processor')==$fund.proc_id)?"checked":''} />
                                    </td>
                                    <td width="1%"><img src="images/processors/{$fund.proc_icon}"/></td>
                                    <td width="20%">{$fund.proc_name} <br/>

                                    </td>
                                    <td>
                                        <b>{$curr_symbol}{$fund.balance|truncdec}</b>
                                    </td>
                                    <td>
                                        {if $fund.account}
                                            {$fund.account}
                                        {else}
                                            <a href="edit_profile/wallet_accounts"><em
                                                        class="text-danger">-- {$lang.not_set}
                                                    --</em></a>
                                        {/if}
                                    </td>

                                </tr>
                            {/foreach}

                            </tbody>
                        </table>
                    </div>
                    <div class="form-group">
                        <label>{$lang.amount} ({$curr_symbol})</label>
                        <input type="text" name="amount" class="form-control" value="{set_value('amount')}"
                               required/>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary">{$lang.submit}</button>
                    </div>
                {else}
                    <h4>{$lang.confirm_withdrawal}</h4>
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th colspan="2">{$lang.withdrawal_details}</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>{$lang.withdrawal_amount}</td>
                            <td>{$curr_symbol}{$confirmation.withdrawal_amount}</td>
                        </tr>
                        {if $confirmation.fees}
                            <tr>
                                <td>{$lang.withdrawal_fees}</td>
                                <td>{$curr_symbol}{$confirmation.fees}</td>
                            </tr>
                        {/if}
                        <tr>
                            <td>{$lang.receiving_amount}</td>
                            <td><b>{$confirmation.receiving_amount} {$confirmation.currency}</b></td>
                        </tr>
                        <tr>
                            <td>{$lang.processor}</td>
                            <td>{$confirmation.proc_name}</td>
                        </tr>
                        <tr>
                            <td>{$lang.receiving_account}</td>
                            <td><b>{$confirmation.receiving_account}</b></td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="form-group">
                        <input type="hidden" name="processor" value="{$confirmation.proc_id}">
                        <input type="hidden" name="amount" value="{$confirmation.withdrawal_amount}">
                        <input type="hidden" name="confirmation" value="true">
                        <button type="submit" class="btn btn-primary">{$lang.submit}</button>
                    </div>
                {/if}

            </form>
        {/if}

    </div>
</div>

{include file="footer.tpl"}