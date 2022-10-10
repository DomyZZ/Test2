{include file="header.tpl"}

<h4>{$lang.referral_link}</h4>
<code>{$user.reflink}</code>

<table class="table table-bordered mt-3">
    <thead>
    <tr>
        <th>
            {$lang.your_upline}
        </th>
        <th>
            {$lang.affiliate_level}
        </th>
        <th>
            Commissions
        </th>
    </tr>
    </thead>

    <tbody>
    <tr>
        <td>
            {($upline)?$upline:'--'}
        </td>
        <td>
            {if $representative}
                {$lang.representative} (Level {$representative.level})
            {else}
                Standard
            {/if}

        </td>
        <td>
            {if $representative}
                Level 1:
                <b>{$representative.ref_comm|clean}%</b>
                &nbsp;

                {if  $representative.other_ref_levels}
                    {foreach $representative.other_ref_levels as $key=>$orl}
                        Level {$key}:
                        <b>{$orl.ref_comm_deposit}%</b>
                        &nbsp;
                    {/foreach}
                {/if}
            {else}
                {foreach $ref_comm as $key=>$val}
                    &nbsp;
                    Level {$key}:
                    <b>{$val.ref_comm|clean}%</b>
                {/foreach}
            {/if}
        </td>
    </tr>
    </tbody>

</table>

<h4>{$lang.referral_information}</h4>
<table class="table table-bordered">
    <thead>
    <tr>
        <th>
            {$lang.direct_referrals} (Level 1)
        </th>
        <th>
            {$lang.other_ref_levels}
        </th>
        <th>
            {$lang.total_referral_commissions}
        </th>
        <th>{$lang.total_ref_turnover}</th>
    </tr>
    </thead>

    <tbody>
    <tr>
        <td>
            {foreach $total_referrals as $key=>$ref}

                {if $key==1}
                    Total :
                    <b>{$ref}</b>
                    &nbsp; {$lang.active}:
                    <b>{$total_active_referrals}</b>
                    <br/>
                {/if}
            {/foreach}

        </td>
        <td>
            {foreach $total_referrals as $key=>$ref}
                {if $key!=1}
                    <span>Level {$key} :
                <b>{$ref}</b>&nbsp;
            </span>
                {/if}
            {/foreach}
        </td>
        <td>
            {$curr_symbol}{$total_ref_commissions}
        </td>
        <td>{$curr_symbol}{$total_ref_turnovers}</td>
    </tr>
    </tbody>
</table>

{if $settings.referral.show_refdetails}
    <h4>{$lang.referrals_details}</h4>
    <div class="form-filter">

        <h5>{$lang.filter}</h5>
        <form class="form-inline" name="referrals" id="referrals" method="get" action="{$base_url}/referrals">
            <input type="date" name="startdate" class="form-control form-control-sm input-sm"
                   value="{$dt.filter.startdate}"/>
            <input type="date" name="enddate" class="form-control form-control-sm input-sm"
                   value="{$dt.filter.enddate}"/>
            <input name="username" id="username" class="form-control form-control-sm input-sm"
                   value="{$dt.filter.username}" placeholder="{$lang.username}"/>
            <button type="submit" class="btn btn-primary btn-sm"
                    onclick="dt_filter('referrals')">
                {$lang.filter}
            </button>
            <a href="{$base_url}/referrals" class="btn btn-link btn-sm">
                {$lang.reset}
            </a>
        </form>

    </div>
    <div class="row">
        <div class="col-sm-12">

            {if $dt.rows}
                <div class="table-responsive">
                    <table class="table table-bordered dataTable">
                        <thead>
                        <tr>

                            <th>{$lang.username}</th>
                            <th>{$lang.email}</th>
                            <th class="sorting"><a
                                        href="{$base_url}/referrals?{'sort'|bind_query:'date'}">{$lang.registered_on}</a>
                            </th>


                        </tr>
                        </thead>
                        <tbody>
                        {foreach $dt.rows as $row}
                            <tr>
                                <td>
                                    {$row.username}
                                </td>
                                <td>{$row.email}
                                </td>
                                <td width="25%">{$row.reg_date|dtformat}</td>
                            </tr>
                        {/foreach}
                        </tbody>
                    </table>
                </div>
                {include file="pagination.tpl"}
            {else}
                <div class="alert alert-danger">
                    {$lang.no_referrals}
                </div>
            {/if}

        </div>
    </div>
{/if}


{include file="footer.tpl"}
