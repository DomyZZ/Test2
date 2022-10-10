{include file="header.tpl"}
<div class="form-filter">
    <h5>{$lang.filter}</h5>
    <form class="form-inline" name="payments" id="payments" method="get">

        <input type="date" name="startdate" class="form-control form-control-sm input-sm" value="{$dt.filter.startdate}"  />
        <input type="date" name="enddate" class="form-control form-control-sm input-sm" value="{$dt.filter.enddate}" />

        <button type="submit" class="btn btn-sm btn-primary">
            {$lang.filter}
        </button>
        <a href="{$base_url}/pending_payments" class="btn btn-sm btn-default">
            {$lang.reset}
        </a>
    </form>
</div>

{if $dt.rows}
    <div class="table-responsive">
        <table class="table table-bordered dataTable">
            <thead>
            <tr>
                <th>Id</th>
                <th class="sorting" width="13%"><a href="{$base_url}/payments?{'sort'|bind_query:'date'}">Date</a>
                </th>
                <th>Amount</th>
                <th></th>
                <th>Txid</th>

            </tr>
            </thead>
            <tbody>
            {foreach $dt.rows as $row}
                <tr>
                    <td><small><a href="{$base_url}/payment/crypto/{$row.uid}">{$row.uid}</a></small></td>
                    <td>
                        {$row.date|dtformat}
                    </td>
                    <td>
                        {$row.payment_amount|clean} {$row.curr_nick}
                    </td>
                    <td width="1%"><img src="images/processors/{$row.icon}"/></td>
                    <td>
                        <small>Address: {$row.address} <br/>
                            Txid: {$row.txid} <br/>
                            Confirmations: {$row.confirmations}
                        </small>
                    </td>

                </tr>
            {/foreach}
            </tbody>
        </table>
    </div>
    {include file="pagination.tpl"}

{else}
    <div class="alert alert-danger">
        {$lang.no_pending_payments}
    </div>
{/if}

{include file="footer.tpl"}