{include file="header.tpl"}

<div class="form-filter">

    <h5>{$lang.filter}</h5>

    <form class="form-inline" name="access_log" id="access_log" method="get" action="{$base_url}/access_log">

        <input type="date" name="startdate" class="form-control input-sm form-control-sm" value="{$dt.filter.startdate}"  />
        <input type="date" name="enddate" class="form-control input-sm form-control-sm" value="{$dt.filter.enddate}" />
        <select name="status" id="status" class="form-control input-sm form-control-sm">
            <option value="">- {$lang.any_status} -</option>
            <option value="successful">{$lang.successful}</option>
            <option value="failed">{$lang.failed}</option>
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
                <th class="sorting"><a href="{$base_url}/access_log?{'sort'|bind_query:'date'}">{$lang.date}</a>
                </th>
                <th>{$lang.ip}</th>
                <th>{$lang.status}</th>
            </tr>
            </thead>
            <tbody>
            {foreach $dt.rows as $row}
                <tr>
                    <td width="25%">
                        {$row.date|dtformat}
                    </td>
                    <td>
                        {$row.ip}
                    </td>
                    <td width="15%">
                        {if $row.status == "successful"}
                            <span class="text-success">{$row.status}</span>
                        {else}
                            <span class="text-danger">{$row.status}</span>
                        {/if}
                    </td>
                </tr>
            {/foreach}
            </tbody>
        </table>
   
    {include file="pagination.tpl"}

{else}
    <div class="alert alert-danger">
        {$lang.no_access_log}
    </div>
{/if}

{include file="footer.tpl"}