{include file="header.tpl"}
<div class="row">
    <div class="col-sm-10">

        {if !$settings.general.allow_itransfers}
            <div class="alert alert-danger">
                {$lang.internal_transfer_disabled}
            </div>
        {elseif !$funds}
            <div class="alert alert-danger">
                {$lang.itrans_no_funds}
            </div>
        {else}
            <form class="form" method="post">
                {include file="form_errors.tpl" form="internal_transfer"}
                {include file="form_success.tpl" form="internal_transfer"}
                <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>

                {if !$confirmation}
                    <div class="form-group">
                        <label>{$lang.select_processor}</label>
                        <table class="table table-bordered table-striped">
                            <thead>
                            <th></th>
                            <th colspan="2">{$lang.processor}</th>
                            <th>{$lang.account_balance} ({$curr_symbol})</th>

                            </thead>

                            </thead>
                            <tbody>
                            {foreach $funds as $fund}
                                <tr>
                                    <td width="1%"><input type="radio" name="processor" required
                                                          value="{$fund.proc_id}"
                                                          onchange="set_curr('{$fund.curr}')" {(set_value('processor') && set_value('processor')==$fund.proc_id)?"checked":''} />
                                    </td>
                                    <td width="1%"><img src="images/processors/{$fund.proc_icon}"/></td>
                                    <td width="20%">{$fund.proc_name} <br/>

                                    </td>
                                    <td>
                                        <b>{$fund.balance|truncdec}</b>
                                    </td>

                                </tr>
                            {/foreach}

                            </tbody>
                        </table>
                    </div>
                    <div class="form-group">
                        <label>{$lang.transfer_amount} ({$curr_symbol})</label>
                        <input type="text" name="amount" class="form-control" value="{set_value('amount')}"
                               required/>
                    </div>
                    <div class="form-group">
                        <label>{$lang.transfer_to}</label>
                        <input type="text" name="username" placeholder="{$lang.username}" class="form-control"
                               value="{set_value('username')}"
                               required/>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary">{$lang.submit}</button>
                    </div>
                {else}
                    <h4>{$lang.confirm_itransfer}</h4>
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th colspan="2">{$lang.itransfer_details}</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>{$lang.processor}</td>
                            <td>{$confirmation.proc_name}</td>
                        </tr>
                        <tr>
                            <td>{$lang.transfer_to}</td>
                            <td>{$confirmation.username}</td>
                        </tr>
                        <tr>
                            <td>{$lang.transfer_amount} <span class="curr_nick"></span></td>
                            <td>{$confirmation.itransfer_amount} {$confirmation.currency}</td>
                        </tr>

                        {if $confirmation.fees}
                            <tr>
                                <td>{$lang.withdrawal_fees}</td>
                                <td>{$confirmation.fees} {$confirmation.currency}</td>
                            </tr>
                        {/if}
                        <tr>
                            <td>{$lang.receiving_amount}</td>
                            <td><b>{$confirmation.receiving_amount} {$confirmation.currency}</b></td>
                        </tr>

                        </tbody>
                    </table>
                    <div class="form-group">
                        <input type="hidden" name="processor" value="{$confirmation.proc_id}">
                        <input type="hidden" name="amount" value="{$confirmation.itransfer_amount}">
                        <input type="hidden" name="username" value="{$confirmation.username}">
                        <input type="hidden" name="confirmation" value="true">
                        <button type="submit" class="btn btn-primary">{$lang.submit}</button>
                    </div>
                {/if}

            </form>
        {/if}

    </div>
</div>
<script type="text/javascript">
    function set_curr(curr) {
        document.querySelector('.curr_nick').innerHTML = '(' + curr + ')';
    }
</script>

{include file="footer.tpl"}