{include file="header.tpl"}
<div class="row">
    <div class="col-sm-10">

        {if !$settings.exchange.ex_enabled}
            <div class="alert alert-danger">
                {$lang.exchange_disabled}
            </div>
        {elseif !$funds}
            <div class="alert alert-danger">
                {$lang.exchange_no_funds}
            </div>
        {else}
            <form class="form" method="post">
                {include file="form_errors.tpl" form="exchange"}
                {include file="form_success.tpl" form="exchange"}

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
                                        <b>{$fund.balance|truncdec}</b>
                                    </td>

                                </tr>
                            {/foreach}

                            </tbody>
                        </table>
                    </div>
                    <div class="form-group">
                        <label>{$lang.amount_to_exchange} ({$curr_symbol})</label>
                        <input type="text" name="amount" class="form-control" value="{set_value('amount')}"
                               required/>
                    </div>
                    <div class="form-group">
                        <label>{$lang.exchange_to}</label>
                        <select name="dest_processor" class="form-control">
                            <option value="">-select destination-</option>
                            {foreach $processors as $processor}
                                <option value="{$processor.id}" {(set_value('dest_processor')==$processor.id)?"selected":''}>{$processor.name}</option>
                            {/foreach}
                        </select>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary">{$lang.submit}</button>
                    </div>
                {else}
                    <h4>{$lang.confirm_exchange}</h4>
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th colspan="2">{$lang.exchange_details}</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>{$lang.src_processor}</td>
                            <td>{$confirmation.src_proc_name}</td>
                        </tr>
                        <tr>
                            <td>{$lang.amount}</td>
                            <td>{$curr_symbol}{$confirmation.amount}</td>
                        </tr>

                        {if $confirmation.fees}
                            <tr>
                                <td>{$lang.exchange_fees}</td>
                                <td class="text-danger">{$confirmation.fees} {$confirmation.dest_curr}</td>
                            </tr>
                        {/if}
                        <tr>
                            <td>{$lang.receiving_amount}</td>
                            <td>
                                <b>{$confirmation.receiving_amount} {$confirmation.dest_curr}</b>

                            </td>
                        </tr>
                        <tr>
                            <td>{$lang.dest_processor}</td>
                            <td>{$confirmation.dest_proc_name}</td>
                        </tr>

                        </tbody>
                    </table>
                    <div class="form-group">
                        <input type="hidden" name="processor" value="{$confirmation.src_proc_id}">
                        <input type="hidden" name="dest_processor" value="{$confirmation.dest_proc_id}">
                        <input type="hidden" name="amount" value="{$confirmation.amount}">
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