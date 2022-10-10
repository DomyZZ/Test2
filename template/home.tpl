{include file="header.tpl"}

<div class="jumbotron">
    <div class="container">
        <h1 class="display-4">Welcome to {$settings.general.site_name}</h1>
        <p class="lead text-muted">A win-win investment opportunity. Never lose with us.</p>

        <p><a class="btn btn-primary" href="register" role="button">{$lang.register_now}</a>&nbsp;<a
                    class="btn btn-secondary" href="faq" role="button">{$lang.read_our_faq}</a></p>
    </div>
</div>

<div class="container pt-4 pb-3">

    <div class="row">
        {infobox_packages assign_var="mod_packages"}
        {foreach $mod_packages as $package}
            <div class="col-sm-4 mb-4">
                <ul class="list-group package">
                    <li class="list-group-item list-group-item-secondary text-center">
                        <span>{$package.name}</span>
                    </li>
                    <li class="list-group-item text-center py-3 ">
                        <h1 class="text-primary display-4 mb-0">
                            {if $package.rate_type=="fixed"}
                                {$package.plan_rate.rate}<sup>%</sup>
                            {else}
                                {$package.plan_rate.rate}<sup>%</sup>
                                -{$package.plan_rate.max_rate}<sup>%</sup>
                            {/if}

                        </h1>
                        <span>{ucfirst($package.formatted_earning_info)}</span>

                    </li>
                    <li class="list-group-item plan px-5 text" style="font-size: 90%">{$lang.amount_range} <span
                                class="float-right pull-right">{$lang.interest_rate}</span></li>
                    {foreach $package.plans as $plan}
                        <li class="list-group-item plan px-5 text">{$curr_symbol}{$plan.min_amount}
                            -
                            {if $plan.max_amount}
                                {$curr_symbol}{$plan.max_amount}
                            {else}
                                &#8734;
                            {/if}
                            {if $plan.bonus_value > 0}
                                <sup style="font-size: 80%">
                                    +{$plan.bonus_value|truncdec:"2"}{($plan.bonus_type=="percentage")?"%":"{$curr_symbol}"}
                                    bonus
                                </sup>
                            {/if}
                            <span class="float-right pull-right">{$plan.rate|clean}%</span>
                        </li>
                    {/foreach}
                    <li class="list-group-item py-3 text-center">
                        <a class="btn btn-primary btn-sm" href="new_deposit">{$lang.invest_now}</a>
                        {if $package.rate_type!='calendar'}
                            <a class="btn btn-secondary btn-sm" href="javascript:void(0)"
                               onclick="window.open('{$base_url}/calculator/{$package.id}','Calculator','width=370,height=330,left='+(screen.width/2-370/2)+',top='+(screen.height/2-330/2))">{$lang.calculate_profit}</a>
                        {else}
                            <a class="btn btn-secondary btn-sm" href="javascript:void(0)"
                               onclick="window.open('{$base_url}/past_rates/{$package.id}','View Past Rates','width=370,height=490,left='+(screen.width/2-370/2)+',top='+(screen.height/2-490/2))">{$lang.view_past_rates}</a>
                        {/if}
                    </li>
                </ul>
            </div>
        {/foreach}
    </div>

</div>

<div class="container py-3">
    <div class="row">

        <div class="col-sm-8">
            <h3>{$lang.about_us}</h3>

            <p>{$settings.general.site_name}'s main business is trading on forex market and cryptocurrencies. Systematic
                market analysis, observation of foreign
                exchanges, margin trading, effective use of fundamental and technical analysis, everything is performed
                in order to reduce risks and get a profit.{$settings.general.site_name} performs its activity 24 hours a
                day with a
                group of professional traders. {$settings.general.site_name} is also a participant in international
                exhibitions, seminars, and trading competitions. We are always expanding our services globally and also
                trying our best to provide the most efficient and secure service to our clients.</p>

            <p>Our relationship with clients, which are based on confident communication and mutual respect, are the
                most
                valuable asset for us. We are aware that the efficiency of solving tasks that face the corporation
                directly depends on professionalism and motivation of our colleagues. Our team consists of highly
                skilled specialists in finances , particularly in forex market and cryptos with years of experience.</p>

            <a href="about" class="btn btn-primary">{$lang.know_more} <span
                        class="glyphicon glyphicon-circle-arrow-right"></span></a>

        </div>

        <div class="col-sm-4">

            <h3>{$lang.our_statistics}</h3>

            <ul class="list-group">
                {if $settings.infobox.show_running_days=="yes"}
                    <li class="list-group-item d-flex justify-content-between align-items-center">{$lang.running_days}
                        <span>{infobox_site_info type="running_days"}</span>
                    </li>
                {/if}
                {if $settings.infobox.show_total_users=="yes"}
                    <li class="list-group-item d-flex justify-content-between align-items-center">{$lang.total_users}
                        <span>{infobox_site_info type="total_users"}</span></li>
                {/if}
                {if $settings.infobox.show_active_users=="yes"}
                    <li class="list-group-item d-flex justify-content-between align-items-center">{$lang.active_users}
                        <span>{infobox_site_info type="active_users"}</span>
                    </li>
                {/if}
                {if $settings.infobox.show_total_deposits=="yes"}
                    <li class="list-group-item d-flex justify-content-between align-items-center">{$lang.total_deposits}
                        <span>{$curr_symbol}{infobox_site_info type="total_deposits"}</span>
                    </li>
                {/if}
                {if $settings.infobox.show_deposits_today=="yes"}
                    <li class="list-group-item d-flex justify-content-between align-items-center">{$lang.deposits_today}
                        <span>{$curr_symbol}{infobox_site_info type="deposits_today"}</span>
                    </li>
                {/if}
                {if $settings.infobox.show_total_withdrawals=="yes"}
                    <li class="list-group-item d-flex justify-content-between align-items-center">{$lang.total_withdrawals}
                        <span>{$curr_symbol}{infobox_site_info type="total_withdrawals"}</span>
                    </li>
                {/if}
                {if $settings.infobox.show_withdrawals_today=="yes"}
                    <li class="list-group-item d-flex justify-content-between align-items-center">{$lang.withdrawals_today}
                        <span>{$curr_symbol}{infobox_site_info type="withdrawals_today"}</span>
                    </li>
                {/if}
                {if $settings.infobox.show_online_guests=="yes"}
                    <li class="list-group-item d-flex justify-content-between align-items-center">{$lang.online_guests}
                        <span>{infobox_site_info type="online_guests"}</span>
                    </li>
                {/if}

                {if $settings.infobox.show_online_users=="yes"}
                    <li class="list-group-item d-flex justify-content-between align-items-center">{$lang.online_users}
                        <span>{infobox_site_info type="online_users"}</span>
                    </li>
                {/if}
                {if $settings.infobox.show_newest_user=="yes"}
                    <li class="list-group-item d-flex justify-content-between align-items-center">{$lang.newest_user}
                        <span>{infobox_site_info type="newest_user"}</span></li>
                {/if}
                {if $settings.infobox.show_last_deposit=="yes"}
                    <li class="list-group-item d-flex justify-content-between align-items-center">{$lang.last_deposit}
                        <span>{infobox_site_info type="last_deposit" assign_var="si_last_deposit"}
                            {if !$si_last_deposit}
                                --
                            {else}
                                {$curr_symbol}{$si_last_deposit.value}
                            {/if}</span></li>
                {/if}
                {if $settings.infobox.show_last_withdrawal=="yes"}
                    <li class="list-group-item d-flex justify-content-between align-items-center">{$lang.last_withdrawal}
                        <span>{infobox_site_info type="last_withdrawal" assign_var="si_last_withdrawal"}
                            {if !$si_last_withdrawal}
                                --
                                {else}
                            {$curr_symbol}{$si_last_withdrawal.value}
                        {/if}</li>
                {/if}
            </ul>

        </div>
    </div>
</div>

<div class="container py-4">
    <div class="row">

        <div class="col-sm-6">
            <h3>{$lang.direct_ref_programs}</h3>
            {infobox_ref_programs assign_var="ref_programs"}
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th class="text-center">{$lang.program_name}</th>
                    <th class="text-center">
                        {$settings.referral.ref_deposit_type|ref_type_format}
                    </th>
                    <th class="text-center">{$lang.commission}
                    </th>

                </tr>
                </thead>
                <tbody>

                {foreach $ref_programs as  $rp}
                    <tr class="text-center">
                        <td>{$rp.name}</td>
                        <td>{$rp.min|truncdec} - {$rp.max|truncdec}</td>
                        <td>{$rp.ref_comm|clean}%</td>

                    </tr>
                {/foreach}
                </tbody>

            </table>
        </div>
        {infobox_other_ref_levels assign_var="other_ref_levels"}
        {if $other_ref_levels}
            <div class="col-sm-6">
                <h3>{$lang.other_ref_levels}</h3>

                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th class="text-center">Referral Level
                        </th>
                        <th class="text-center">Ref Comm.
                        </th>

                    </tr>
                    </thead>
                    <tbody>
                    {foreach $other_ref_levels as  $level => $orl}
                        <tr class="text-center">
                            <td>{$level}</td>
                            <td>{$orl.ref_comm|clean}%</td>

                        </tr>
                    {/foreach}
                    </tbody>
                </table>
            </div>
        {/if}
    </div>
    {if $settings.representative.rep_enabled}
        <div class="row mt-3">
            <div class="col-sm-12 text-center">
                <h3>{$lang.representative_program}</h3>
            </div>
        </div>
        <div class="row ">
            <div class="col-sm-12 text-center">

                {infobox_repr_programs assign_var="repr_programs"}
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th class="text-center">{$lang.representative_level}
                        </th>

                        <th class="text-center">Level 1</th>
                        {foreach $repr_programs as  $rp}
                            {foreach $rp.other_ref_levels as $orl}
                                <th class="text-center">Level {$orl@iteration+1}</th>
                            {/foreach}
                        {/foreach}

                    </tr>
                    </thead>
                    <tbody>
                    {foreach $repr_programs as  $rp}
                        <tr class="text-center">
                            <td>{$rp.id}</td>

                            <td>{$rp.ref_comm_deposit|truncdec}%</td>
                            {foreach $rp.other_ref_levels as $orl}
                                <td>{$orl.ref_comm_deposit}%</td>
                            {/foreach}

                        </tr>
                    {/foreach}
                    </tbody>

                </table>
                <a href="apply_representative" class="btn btn-primary">{$lang.apply_for_representative} </a>
                <a
                        href="representatives" class="btn btn-secondary">{$lang.our_representatives} </a>

            </div>

        </div>
    {/if}
</div>

<div class="container py-3">
    <div class="row">
        {if $settings.infobox.no_last_deposits > 0 }
            <div class="col-sm-6">
                {infobox_site_stats type="last_deposits" limit="{$settings.infobox.no_last_deposits}" assign_var="mod_last_deposits"}

                <table width="100%" class="table table-bordered">
                    <thead>
                    <th colspan="4">Last {$settings.infobox.no_last_deposits} Deposits</th>
                    </thead>
                    <tbody>
                    {foreach $mod_last_deposits as $deposit}
                        <tr>
                            <td>
                                {$deposit.date|dtformat:"timeago"}
                            </td>
                            <td>
                                {$deposit.username}
                            </td>
                            <td class="text-right">
                                {$curr_symbol}{$deposit.amount|truncdec}
                            </td>
                            <td width="1%">
                                <img src="images/processors/{$deposit.procicon}" class="proc-icon"
                                     title="{$deposit.name}"/>
                            </td>
                        </tr>
                        {foreachelse}
                        <tr>
                            <td colspan="3"><span class="text-danger">{$lang.none}</span></td>
                        </tr>
                    {/foreach}
                    </tbody>
                </table>

            </div>
        {/if}
        {if $settings.infobox.no_last_withdrawals > 0}
            <div class="col-sm-6">
                {infobox_site_stats type="last_withdrawals" limit="{$settings.infobox.no_last_withdrawals}" assign_var="mod_last_withdrawals"}
                <table width="100%" class="table table-bordered">
                    <thead>
                    <tr>
                        <th colspan="4">Last {$settings.infobox.no_last_withdrawals} Withdrawals</th>
                    </tr>
                    </thead>
                    <tbody>
                    {foreach $mod_last_withdrawals as $withdrawal}
                        <tr>
                            <td>
                                {$withdrawal.date|dtformat:"timeago"}
                            </td>
                            <td>
                                {$withdrawal.username}
                            </td>
                            <td>
                                {$curr_symbol}{$withdrawal.amount|truncdec}
                            </td>
                            <td>
                                <img src="images/processors/{$withdrawal.procicon}" class="proc-icon"
                                     title="{$withdrawal.name}"/>
                            </td>
                        </tr>
                        {foreachelse}
                        <tr>
                            <td colspan="3">
                                <span class="text-danger">{$lang.none}</span>
                            </td>
                        </tr>
                    {/foreach}
                    </tbody>
                </table>
            </div>
        {/if}
    </div>
    <div class="row">

        {if $settings.infobox.no_top_depositors > 0}
            <div class="col-sm-4">
                {infobox_site_stats type="top_depositors" limit="{$settings.infobox.no_top_depositors}" assign_var="mod_top_depositors"}
                <table width="100%" class="table table-bordered">
                    <thead>
                    <tr>
                        <th colspan="4">Top {$settings.infobox.no_top_depositors} Depositors</th>
                    </tr>
                    </thead>
                    <tbody>
                    {foreach $mod_top_depositors as $depositor}
                        <tr>
                            <td>
                                {$depositor.username}
                            </td>
                            <td>
                                {$curr_symbol}{$depositor.amount|truncdec}
                            </td>
                        </tr>
                        {foreachelse}
                        <tr>
                            <td colspan="3"><span class="text-danger">None</span></td>
                        </tr>
                    {/foreach}
                    </tbody>
                </table>
            </div>
        {/if}
        {if $settings.infobox.no_top_referrers > 0}
            <div class="col-sm-4">
                {infobox_site_stats type="top_referrers" limit="{$settings.infobox.no_top_referrers}" assign_var="mod_top_referrers"}
                <table width="100%" class="table table-bordered">
                    <thead>
                    <tr>
                        <th colspan="4">Top {$settings.infobox.no_top_referrers} Referrers</th>
                    </tr>
                    </thead>
                    <tbody>
                    {foreach $mod_top_referrers as $referrer}
                        <tr>
                            <td>
                                {$referrer.username}
                            </td>
                            <td>
                                {$referrer.tot_referrals}
                            </td>
                        </tr>
                        {foreachelse}
                        <tr>
                            <td colspan="2"><span class="text-danger">None</span></td>
                        </tr>
                    {/foreach}
                    </tbody>
                </table>
            </div>
        {/if}
        {if $settings.infobox.no_top_refcomm}
            <div class="col-sm-4">
                {infobox_site_stats type="top_refcomm_earners" limit="{$settings.infobox.no_top_refcomm}" assign_var="mod_top_refcomm_earners"}

                <table width="100%" class="table table-bordered">
                    <thead>
                    <tr>
                        <th colspan="4">Top {$settings.infobox.no_top_refcomm} RefComm Earners</th>
                    </tr>
                    </thead>
                    <tbody>
                    {foreach $mod_top_refcomm_earners as $tre}
                        <tr>
                            <td>
                                {$tre.username}
                            </td>
                            <td>
                                {$curr_symbol}{$tre.tot_refcomm|truncdec}
                            </td>

                        </tr>
                        {foreachelse}
                        <tr>
                            <td colspan="3">
                                <span class="text-danger">None</span>
                            </td>
                        </tr>
                    {/foreach}
                    </tbody>
                </table>
            </div>
        {/if}

    </div>
</div>

{include file="footer.tpl"}