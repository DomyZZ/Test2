{if $is_member_page && $logged_in}

    </div>
    <div class="col-sm-3">

        <ul class="list-group mb-3">
            <li class="list-group-item py-3">
                <h5 class="mb-0 text-info"><b>{$user.username}</b></h5>
                <small>{$lang.last_accessed} : {if $user.last_access}
                        <a href="access_log">{$user.last_access|dtformat:"d-M-Y H:i:s"}</a>
                    {else}
                        --
                    {/if}
                </small>
            </li>
            <li class="list-group-item">
                <span class="float-right pull-right"><a
                            href="transactions">{$curr_symbol}{$user.funds.balance}</a></span>
                <span>{$lang.account_balance}</span>
            </li>
            <li class="list-group-item">
                <span>{$lang.active_deposits}</span>
                <span class="float-right pull-right"><a
                            href="deposits">{$curr_symbol}{$user.funds.active_deposit}</a></span>
            </li>

            <li class="list-group-item">
                <a href="new_deposit" class="btn btn-success btn-block ">{$lang.new_deposit}</a>
            </li>
        </ul>

        <ul class="list-group">
            <li class="list-group-item list-group-item-secondary">{$lang.account_section}</li>
            <li class="list-group-item {($cur_page=='dashboard')?'active':''}"><a
                        href="dashboard">{$lang.dashboard}</a></li>
            <li class="list-group-item {($cur_page=='new_deposit')?'active':''}"><a
                        href="new_deposit">{$lang.new_deposit}</a></li>
            <li class="list-group-item {($cur_page=='deposits')?'active':''}"><a
                        href="deposits">{$lang.my_deposits}</a></li>
            {if $settings.general.allow_dep_acc_balance}
                <li class="list-group-item {($cur_page=='add_funds')?'active':''}"><a
                            href="add_funds">{$lang.add_funds}</a></li>
            {/if}
            <li class="list-group-item {($cur_page=='withdraw')?'active':''}"><a
                        href="withdraw">{$lang.withdraw}</a></li>
            <li class="list-group-item {($cur_page=='pending_withdrawals')?'active':''}"><a
                        href="pending_withdrawals">{$lang.pending_withdrawals}</a></li>
            {if $settings.exchange.ex_enabled}
                <li class="list-group-item {($cur_page=='exchange')?'active':''}"><a
                            href="exchange">{$lang.exchange}</a></li>
            {/if}
            {if $settings.general.allow_itransfers}
                <li class="list-group-item {($cur_page=='internal_transfer')?'active':''}"><a
                            href="internal_transfer">{$lang.internal_transfer}</a></li>
            {/if}
            <li class="list-group-item {($cur_page=='transactions')?'active':''}"><a
                        href="transactions">{$lang.transactions}</a></li>

            <li class="list-group-item {($cur_page=='write_testimonial')?'active':''}"><a
                        href="write_testimonial">{$lang.write_testimonial}</a></li>
        </ul>

        <ul class="list-group mt-3">
            <li class="list-group-item list-group-item-secondary">{$lang.referral_section}</li>
            <li class="list-group-item {($cur_page=='referrals')?'active':''}"><a href="referrals">{$lang.referrals}</a>
            </li>
            <li class="list-group-item {($cur_page=='banners')?'active':''}"><a href="banners">{$lang.banners}</a></li>
            <li class="list-group-item {($cur_page=='invite_friend')?'active':''}"><a
                        href="invite_friend">{$lang.invite_friend}</a></li>
        </ul>
        <ul class="list-group mt-3">
            <li class="list-group-item list-group-item-secondary">{$lang.support_section}</li>
            <li class="list-group-item {($cur_page=='new_ticket')?'active':''}"><a
                        href="new_ticket">{$lang.new_ticket}</a></li>
            <li class="list-group-item {($cur_page=='tickets')?'active':''}"><a href="tickets">{$lang.tickets}</a></li>
        </ul>
    </div>
    </div>
    </div>
{/if}

{if !$is_member_page}
    {if $cur_page!="home"}

        </div>
    {/if}
{/if}

<div class="partners py-4">
    <div class="container text-center">
        {infobox_active_processors assign_var="mod_active_processors"}
        {foreach $mod_active_processors as $active_processor }
            <img src="images/processors/{$active_processor.nick}-big.jpg">
            {foreachelse}
            <span class="text-danger">~ {$lang.no_processors} ~</span>
        {/foreach}
    </div>
</div>

<footer class="footer bg-white py-5">
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <h4>{$lang.contact_details}</h4>

                <dl>
                    <dt>{$lang.address}</dt>
                    <dd>14 Munster Road Fulham, London, United Kingdom, SW6 6BD</dd>
                </dl>
                <dl>
                    <dt>Support Email</dt>
                    <dd>{$settings.general.support_email}</dd>
                </dl>

                <a href="contact">{$lang.contact}</a>
            </div>

            <div class="col-sm-3">
                <h4>{$lang.site_links}</h4>
                <ul class="list list-unstyled footer-links">
                    <li><a href=".">{$lang.home}</a></li>
                    {if $settings.representative.rep_enabled}
                        <li><a href="representatives">{$lang.representatives}</a></li>
                    {/if}
                    <li><a href="faq">{$lang.faq}</a></li>
                    <li><a href="terms">{$lang.terms}</a></li>
                    <li><a href="contact">{$lang.contact}</a></li>
                </ul>
            </div>
            {if $settings.infobox.no_testimonials > 0}
                <div class="col-sm-3">
                    <h4>{$lang.user_testimonials}</h4>
                    {infobox_testimonials assign_var="mod_testimonials" limit="{$settings.infobox.no_testimonials}"}

                    {foreach $mod_testimonials as $mt}
                        <dl>
                            <dt>{$mt.title}</dt>
                            <dd>{substr({$mt.description},0,100)}..</dd>
                            <dd><em>{$mt.username}</em></dd>
                        </dl>
                        {foreachelse}
                        <span class="text-danger">none</span>
                    {/foreach}
                    {if $mod_testimonials}
                        <a href="testimonials">{$lang.all_testimonials} <span
                                    class="glyphicon glyphicon-circle-arrow-right"></span></a>
                    {/if}

                </div>
            {/if}
            {if $settings.infobox.no_news > 0}
                <div class="col-sm-3">
                    <h4>{$lang.news_updates}</h4>
                    {infobox_news assign_var="mod_news" limit="{$settings.infobox.no_news}"}

                    {foreach $mod_news as $mn}
                        <dl>
                            <em>{$mn.date|dtformat:"d-m-Y"}</em>
                            <dt><a href="news/view/{$mn.uid}">{$mn.title}</a></dt>
                            <dd>{substr($mn.sm_description,0,60)}..</dd>
                        </dl>
                        {foreachelse}
                        <span class="text-danger">{$lang.no_news}</span>
                    {/foreach}
                    {if $mod_news}
                        <a href="news">{$lang.all_news} <span class="glyphicon glyphicon-circle-arrow-right"></span></a>
                    {/if}

                </div>
            {/if}

        </div>
        <hr/>
        <div class="row">
            <div class="col-sm-4">
                <p>&copy; 2020 {$settings.general.site_name}. All rights reserved</p>
            </div>
        </div>
    </div>
</footer>

<!-- /container -->

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</body>
</html>
