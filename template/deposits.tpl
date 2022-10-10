{include file="header.tpl"}

<ul class="nav nav-pills">
    <li class="nav-item {($dep_status=="active")?'active':''}">
        <a class="nav-link {($dep_status=="active")?'active':''}" href="deposits">{$lang.active_deposits}</a>
    </li>
    <li class="nav-item {($dep_status=="expired")?'active':''}">
        <a class="nav-link {($dep_status=="expired")?'active':''}"
           href="deposits/expired">{$lang.expired_deposits}</a>
    </li>
</ul>

<hr/>

<div class="form-filter">

    <h5>{$lang.filter}</h5>

    <form class="form-inline" name="deposits" id="deposits" method="get">

        <input type="date" name="startdate" class="form-control form-control-sm input-sm"
               value="{$dt.filter.startdate}"/>
        <input type="date" name="enddate" class="form-control form-control-sm input-sm" value="{$dt.filter.enddate}"/>

        <select name="package" id="package" class="form-control form-control-sm input-sm">
            <option value="">- all packages -</option>
            {foreach $packages as $package}
                <option value="{$package.id}" {($dt.filter.package==$package.id)?'selected':''}>{$package.name}</option>
            {/foreach}
        </select>

        <button type="submit" class="btn btn-primary btn-sm"
                onclick="dt_filter('deposits')">
            {$lang.filter}
        </button>
        <a href="{$base_url}/deposits" class="btn btn-link btn-sm">
            {$lang.reset}
        </a>

    </form>

</div>

{form_errors form="deposits"}
{form_success form="deposits"}

{if $dt.rows}
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>{$lang.package}</th>

            <th class="text-right">{$lang.principal} ({$curr_symbol})</th>

            <th width="22%" class="text-right">{$lang.earnings} ({$curr_symbol})</th>

            <th width="1%"></th>

        </tr>
        </thead>
        <tbody>
        {foreach $dt.rows as $row}
            <tr>
                <td>
                    {$row.package_name}
                    <small class="d-block">{$lang.deposit_id} : <b>#{$row.uid}</b></small>
                    <small class="d-block">{$lang.started_on} : <b>{$row.start_date|dtformat:'d-M-Y H:i:s'}</b>
                    </small>
                    {if $row.status=="expired"}
                        <small class="d-block">{$lang.expired_on} :
                            <b>{$row.lastpay_date|dtformat:'d-M-Y H:i:s'}</b></small>
                    {else}
                        <small class="d-block">{$lang.last_paid} :
                            <b>{($row.lastpay_date!=0)?($row.lastpay_date|dtformat:'d-M-Y H:i:s'):'--'}</b></small>
                    {/if}
                    {if $row.principal_withdrawal}
                        <a class="mt-2 mr-2"
                           onclick="return confirm('Are you sure you want to withdraw principal from deposit #{$row.uid}?')"
                           href="{$base_url}/withdraw_principal/{$row.uid}"><small>{$lang.withdraw_principal}</small></a>
                    {/if}
                    {if $row.allow_compounding}
                        <a class="mt-2"
                           href="{$base_url}/change_compound/{$row.uid}"><small>{$lang.change_compound}</small></a>
                    {/if}

                </td>

                <td class="text-right"><b>{$row.amount|truncdec}</b>

                    {if $row.allow_compounding}
                        <small class="d-block">
                            {$lang.compound}:
                            {$row.compound}%
                        </small>
                    {/if}

                </td>
                <td class="text-right">
                    {if $row.earnings > 0}
                        <b>{$row.earnings|truncdec}</b>
                        <br/>
                    {else}
                        --
                        <br/>
                    {/if}
                    {if $row.status=='active'}
                        {if $dep_status=='active'}
                            <small class="d-block">{$lang.next_in}: {$row.next_payment_ts|dtformat:'timeleft'}</small>
                        {/if}
                    {/if}

                </td>
                <td><img src="images/processors/{$row.icon}"/></td>

            </tr>
        {/foreach}
        </tbody>
    </table>
    {include file="pagination.tpl"}
{else}
    <div class="alert alert-danger">
        {$lang.no_deposits}
    </div>
{/if}

{include file="footer.tpl"}