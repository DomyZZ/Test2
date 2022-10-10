{include file="header.tpl"}

{if $pending_payments}
    <div class="alert alert-warning">You have pending payments. <a href="{$base_url}/pending_payments">View them
            here</a>.
    </div>
{/if}

<div class="row text-center mb-4">
    <div class="col-sm-4">
        <ul class="list-group">
            <li class="list-group-item text-center py-4">
                <a href="withdraw"><h2>{$curr_symbol}{$user.funds.balance}</h2></a>
                <span>{$lang.account_balance}</span>
            </li>
        </ul>
    </div>
    <div class="col-sm-4">
        <ul class="list-group">
            <li class="list-group-item text-center py-4">
                <a href="deposits"><h2>{$curr_symbol}{$user.funds.active_deposit}</h2></a>
                <span>{$lang.active_deposits}</span>
            </li>
        </ul>
    </div>
    <div class="col-sm-4">
        <ul class="list-group">
            <li class="list-group-item text-center py-4">
                <a href="deposits"><h2>{$curr_symbol}{$user.funds.earning}</h2></a>
                <span>{$lang.total_earnings}</span>
            </li>

        </ul>
    </div>
</div>

<h4 class="mb-4 text-center">~ {$lang.account_information} ~</h4>

<div class="row mb-3">
    <div class="col-sm-6">
        <ul class="list-group">
            <li class="list-group-item list-group-item-secondary">
                {$lang.profile_details} - <a href="edit_profile">{$lang.edit_profile}</a>
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center">{$lang.username}
                <span>{$user.username}</span></li>
            <li class="list-group-item d-flex justify-content-between align-items-center">{$lang.email}
                <span>{$user.email}</span></li>
            <li class="list-group-item d-flex justify-content-between align-items-center">{$lang.registered_on}
                <span>{$user.reg_date|dtformat:"d-M-Y H:i:s"}</span></li>

            <li class="list-group-item d-flex justify-content-between align-items-center">{$lang.registered_ip}
                <span>{$user.reg_ip}</span></li>
            <li class="list-group-item d-flex justify-content-between align-items-center">{$lang.last_accessed}
                {if $user.last_access}
                    <a href="access_log">{$user.last_access|dtformat:"d-M-Y H:i:s"}</a>
                {else}
                    <span>--</span>
                {/if}
            </li>

        </ul>
    </div>
    <div class="col-sm-6">

        <ul class="list-group">
            <li class="list-group-item list-group-item-secondary">
                {$lang.security_settings} - <a href="security">{$lang.edit_security}</a>
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center">{$lang.secondary_password}
                {if $user.secondary_password}
                    <span class="text-success">{$lang.active}</span>
                {else}
                    <span class="text-danger">{$lang.inactive}</span>
                {/if}
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center">{$lang.login_twofa}
                {if $user.twofa}
                    <span class="text-success">{$lang.active}</span>
                {else}
                    <span class="text-danger">{$lang.inactive}</span>
                {/if}
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center">{$lang.security_ques_ans}
                {if $user.secques}
                    <span class="text-success">{$lang.active}</span>
                {else}
                    <span class="text-danger">{$lang.inactive}</span>
                {/if}
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center">{$lang.ip_change_detection_level}
                {if $user.detect_ip_change!="disabled"}
                    <span class="text-success">{$lang.enabled} ({$user.detect_ip_change})</span>
                {else}
                    <span class="text-danger">{$lang.disabled}</span>
                {/if}
            </li>
            <li class="list-group-item d-flex justify-content-between align-items-center">{$lang.browser_change_detection}
                {if $user.detect_browser_change=="enabled"}
                    <span class="text-success">{$lang.enabled}</span>
                {else}
                    <span class="text-danger">{$lang.disabled}</span>
                {/if}
            </li>

        </ul>

    </div>
</div>
<div class="row">
    <div class="col-sm-12">
        <ul class="list-group">
            <li class="list-group-item list-group-item-secondary">
                {$lang.referral_information} - <a href="referrals">{$lang.referrals}</a> | <a
                        href="banners">{$lang.banners}</a>
            </li>
            <li class="list-group-item text-center">
                <ul class="list-inline">
                    <li class="list-inline-item">{$lang.commissions}: <b>{$curr_symbol}{$user.funds.ref_comm}</b></li>
                    <li class="list-inline-item">{$lang.your_upline}: {if $user.upline}
                            {$user.upline_name}
                        {else}
                            --
                        {/if}</li>
                </ul>
            </li>
            <li class="list-group-item text-center py-2">
                <h5 class="mb-2"><code>{$user.reflink}</code> </h5>
                <span class="d-block text-muted">Share the link above with your friends to earn referral commission.</span>

            </li>
        </ul>
    </div>
</div>

<h4 class="mt-4 mb-4 text-center">~ {$lang.financial_information} ~</h4>
<div class="row">
    <div class="col-sm-4">
            <ul class="list-group">
                <li class="list-group-item list-group-item-secondary">{$lang.account_balances}</li>
                {foreach $user.proc_balances as $pb}
                    {if $pb.amount > 0}
                        <li class="list-group-item">
                            <img src="images/processors/{$pb.proc_icon}" class="proc-icon"/> {$pb.name}
                            <span class="float-right pull-right">{$curr_symbol}{$pb.amount}</span>
                        </li>
                    {/if}
                    {foreachelse}
                    <li class="list-group-item text-center text-danger">
                        --
                    </li>
                {/foreach}
            </ul>
    </div>
    <div class="col-sm-4">
        <ul class="list-group">
            <li class="list-group-item list-group-item-secondary">
                {$lang.deposit_information}
            </li>
            <li class="list-group-item">{$lang.total_deposits} <span
                        class="float-right pull-right">{$curr_symbol}{$user.funds.deposit}</span>
            </li>
            <li class="list-group-item">{$lang.active_deposits} <span
                        class="float-right pull-right">{$curr_symbol}{$user.funds.active_deposit}</span>
            </li>
            <li class="list-group-item">{$lang.last_deposit} <span
                        class="float-right pull-right text-right">
                    {if $last_deposit}
                        {$curr_symbol}{$last_deposit.amount}
                        <small class="d-block">{$last_deposit.date|dtformat:"timeago"}</small>

                    {else}
                        --
                    {/if}</span>
            </li>
        </ul>
    </div>
    <div class="col-sm-4">
        <ul class="list-group">
            <li class="list-group-item list-group-item-secondary">
                {$lang.withdrawal_information}
            </li>
            <li class="list-group-item">{$lang.total_withdrawals} <span
                        class="float-right pull-right">{$curr_symbol}{$user.funds.completed_withdrawal}</span>
            </li>
            <li class="list-group-item">{$lang.pending_withdrawals} <span
                        class="float-right pull-right">{$curr_symbol}{$user.funds.pending_withdrawal}</span>
            </li>
            <li class="list-group-item">{$lang.last_withdrawal} <span
                        class="float-right pull-right text-right"> {if $last_withdrawal}
                        {$curr_symbol}{$last_withdrawal.amount}
                        <small class="d-block">{$last_withdrawal.date|dtformat:"timeago"}</small>
                       
                    {else}
                        --
                    {/if}
                </span>
            </li>
        </ul>
    </div>
</div>


{include file="footer.tpl"}
