{include file="header.tpl"}

<div class="form-filter">

    <h5>{$lang.filter}</h5>

    <form class="form-inline" name="transactions" id="transactions" method="get" action="{$base_url}/transactions">

        <input type="date" name="startdate" class="form-control form-control-sm input-sm" value="{$dt.filter.startdate}"  />
        <input type="date" name="enddate" class="form-control form-control-sm input-sm" value="{$dt.filter.enddate}" />
        <select name="type" id="type" class="form-control  form-control-sm input-sm">
            <option value="">- all types -</option>
            {foreach $types as $key=>$value}
                <option value="{$key}" {($dt.filter.type==$key)?'selected':''}>{$value}</option>
            {/foreach}
        </select>
        <button type="submit" class="btn btn-primary btn-sm">
            {$lang.filter}
        </button>
        <a href="{$base_url}/transactions" class="btn btn-link btn-sm">
            {$lang.reset}
        </a>

    </form>
</div>

{if $dt.rows}
        <table class="table table-bordered">
            <thead>
            <tr>
                <th class="sorting"><a href="{$base_url}/transactions?{'sort'|bind_query:'date'}">Date</a>
                </th>
                <th>Type</th>
                <th class="text-right">Amount ({$curr_symbol})</th>
                <th></th>

            </tr>
            </thead>
            <tbody>
            {foreach $dt.rows as $row}
                <tr>
                    <td width="20%">
                        {$row.date|dtformat}
                    </td>
                    <td><b>{$types[$row.type]} </b><br/>
                        <small>{$row.description}</small>
                    </td>
                    <td width="15%" align="right" style="font-weight: bold">
                        {if $row.amount > 0}
                            <span class="text-success">+{$row.amount|truncdec}</span>
                        {else}
                            <span class="text-danger">{$row.amount|truncdec}</span>
                        {/if}
                    </td>
                    <td width="1%"><img src="images/processors/{$row.icon}"/></td>
                </tr>
            {/foreach}
            </tbody>
        </table>
    {include file="pagination.tpl"}

{else}
    <div class="alert alert-danger">
        {$lang.no_transactions}
    </div>
{/if}

{include file="footer.tpl"}