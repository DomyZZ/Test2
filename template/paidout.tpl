{include file="header.tpl"}
<div class="form-filter">

    <h5>{$lang.filter}</h5>

    <form class="form-inline" name="paidout" id="paidout" method="get" action="{$base_url}/paidout">

        <input type="date" name="startdate" class="form-control form-control-sm input-sm" value="{$dt.filter.startdate}"  />
        <input type="date" name="enddate" class="form-control form-control-sm input-sm" value="{$dt.filter.enddate}" />
        <button type="submit" class="btn btn-primary btn-sm">
            {$lang.filter}
        </button>
        <a href="{$base_url}/paidout" class="btn btn-link btn-sm">
            {$lang.reset}
        </a>

    </form>
</div>
{if $dt.rows}

        <table class="table table-bordered">
            <thead>
            <tr>
                <th>{$lang.date}</th>
                <th>{$lang.username}
                </th>
                <th width="10%" class="text-right">{$lang.amount}</th>
                <th width="1%"></th>
                <th>{$lang.transaction_batch}</th>

            </tr>
            </thead>
            <tbody>
            {foreach $dt.rows as $row}
                <tr>
                    <td>{$row.date|dtformat} <br />
                        <small>({$row.date|dtformat:"timeago"})</small>
                    </td>
                    <td width="20%">
                        {$row.username}
                    </td>
                    <td class="text-right">{$row.amount|clean} {$row.currency}
                    </td>
                    <td>
                       <img src="images/processors/{$row.proc_icon}" />
                    </td>
                    <td width="45%"style="font-weight: bold">
                        {$row.batch}
                    </td>
                </tr>
            {/foreach}
            </tbody>
        </table>
    {include file="pagination.tpl"}

{else}
    <div class="alert alert-danger">
       {$lang.no_paidouts}
    </div>
{/if}

{include file="footer.tpl"}