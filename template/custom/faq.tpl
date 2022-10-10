{include file="header.tpl"}

<div id="faq">

    <div class="card">
        <div class="card-header">
            <a class="card-link" data-toggle="collapse" href="#question-1">
                What is {$settings.general.site_name}?
            </a>
        </div>
        <div id="question-1" class="collapse show" data-parent="#faq">
            <div class="card-body">
                {$settings.general.site_name} is an online investment company founded few years ago. It offers all kinds of professional
                financial and investment services and support to clients throughout the world.
            </div>
        </div>
    </div>

    <div class="card">
        <div class="card-header">
            <a class="collapsed card-link" data-toggle="collapse" href="#question-2">
                Who can invest in {$settings.general.site_name}?
            </a>
        </div>
        <div id="question-2" class="collapse" data-parent="#faq">
            <div class="card-body">
                To make an investment you must first become a member of {$domain}. Once you are registered, you
                can make your first deposit. All deposits must be made through the member area. All investors must be at
                least minimum legal age in their country to be able to open an account. In most countries, the minimum
                age is 18 years.
                You may be our investor regardless of the country of residence, if this activity does not contradict
                your home legislation.
            </div>
        </div>
    </div>

    <div class="card">
        <div class="card-header">
            <a class="collapsed card-link" data-toggle="collapse" href="#question-3">
                How to register in {$settings.general.site_name} and is it free?
            </a>
        </div>
        <div id="question-3" class="collapse" data-parent="#faq">
            <div class="card-body">
                It is very easy to register in {$domain}. You can simply click on the "Register" button on the top or
                click
                <a href="register">here</a> to register. It is absolutely free. Please read our <a href="terms">Terms &
                    Conditions</a> before registering.
            </div>
        </div>
    </div>

    <div class="card">
        <div class="card-header">
            <a class="collapsed card-link" data-toggle="collapse" href="#question-4">
                What are the investment programs offered by {$settings.general.site_name}?
            </a>
        </div>
        <div id="question-4" class="collapse" data-parent="#faq">
            <div class="card-body">
                {infobox_packages assign_var="mod_packages"}
                {$settings.general.site_name} offers {count($mod_packages)} investment programs(s). They are as
                follows:- <br/> <br/>
                <ol class="list-unstyled">
                    {foreach $mod_packages as $package}
                        <li>
                            <span>{$package@iteration}) <b>{$package.name}</b> - {$package.plan_rate.rate}% {$package.formatted_earning_info}</span>
                        </li>
                    {/foreach}
                </ol>

            </div>
        </div>
    </div>

    <div class="card">
        <div class="card-header">
            <a class="collapsed card-link" data-toggle="collapse" href="#question-5">
                What is the minimum and maximum deposit allowed in each investment program?
            </a>
        </div>
        <div id="question-5" class="collapse" data-parent="#faq">
            <div class="card-body">
                Please check our <a href=".">home page</a> to get all details about our investment programs.

            </div>
        </div>
    </div>

    <div class="card">
        <div class="card-header">
            <a class="collapsed card-link" data-toggle="collapse" href="#question-6">
                What payment methods are accepted here ?
            </a>
        </div>
        <div id="question-6" class="collapse" data-parent="#faq">
            <div class="card-body">
                Currently we accept
                {infobox_active_processors assign_var="mod_active_processors"}
                {foreach $mod_active_processors as $active_processor }
                    {if $active_processor@last}
                        {$active_processor.name}.
                    {else}
                        {$active_processor.name},
                    {/if}
                {/foreach}

            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-header">
            <a class="collapsed card-link" data-toggle="collapse" href="#question-7">
                How to withdraw my funds ?
            </a>
        </div>
        <div id="question-7" class="collapse" data-parent="#faq">
            <div class="card-body">
                Click on "Withdraw" in your member panel. Follow the instructions. Make sure you have entered your
                receiving processor account in Wallet accounts in
                <a href="edit_profile">Edit profile </a> page before requesting withdrawal.
            </div>
        </div>
    </div>

    <div class="card">
        <div class="card-header">
            <a class="collapsed card-link" data-toggle="collapse" href="#question-8">
                How long it takes to process my withdrawal request ?
            </a>
        </div>
        <div id="question-8" class="collapse" data-parent="#faq">
            <div class="card-body">
                {if $settings.general.enable_auto_withdrawal}
                    All withdrawal requests are processed instantly.
                {else}
                    Withdrawal requests are processed manually and can take upto 48 hours.
                {/if}
            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-header">
            <a class="collapsed card-link" data-toggle="collapse" href="#question-9">
                I forgot my password, how do i reset it ?
            </a>
        </div>
        <div id="question-9" class="collapse" data-parent="#faq">
            <div class="card-body">
                Please go to <a href="reset_password">Reset Password</a> page to reset your password.
            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-header">
            <a class="collapsed card-link" data-toggle="collapse" href="#question-10">
                How can i make my account more secure ?
            </a>
        </div>
        <div id="question-10" class="collapse" data-parent="#faq">
            <div class="card-body">
                Please go to <a href="security">Security</a> page in member panel. You can find various security options like "Secondary Password, "TwoFa", "Security Question/Answer" etc.
            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-header">
            <a class="collapsed card-link" data-toggle="collapse" href="#question-11">
               How can i change my email ?
            </a>
        </div>
        <div id="question-11" class="collapse" data-parent="#faq">
            <div class="card-body">
                Please go to <a href="edit_profile">Edit Profile</a> page and change your email. If you cannot change email, please contact support.
            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-header">
            <a class="collapsed card-link" data-toggle="collapse" href="#question-12">
                Is there any referral program ?
            </a>
        </div>
        <div id="question-12" class="collapse" data-parent="#faq">
            <div class="card-body">
                Yes we do. Please check our <a href=".">home page</a> to know more.
            </div>
        </div>
    </div>

    <div class="card">
        <div class="card-header">
            <a class="collapsed card-link" data-toggle="collapse" href="#question-13">
                Is there any representative program ?
            </a>
        </div>
        <div id="question-13" class="collapse" data-parent="#faq">
            <div class="card-body">
                {if $settings.representative.rep_enabled}
                    Yes we do. Please check our
                    <a href=".">home page</a>
                    to know more.
                {else}
                    No, we do not have any representative program.
                {/if}
            </div>
        </div>
    </div>
    {if $settings.representative.rep_enabled}
        <div class="card">
            <div class="card-header">
                <a class="collapsed card-link" data-toggle="collapse" href="#question-14">
                    How to apply for a representative ?
                </a>
            </div>
            <div id="question-14" class="collapse" data-parent="#faq">
                <div class="card-body">
                    Please go <a href="representatives">here</a> and click on "Apply for represntative" or click
                    <a href="apply_representative">here</a> to go directly.
                </div>
            </div>
        </div>
    {/if}
    <div class="card">
        <div class="card-header">
            <a class="collapsed card-link" data-toggle="collapse" href="#question-15">
                I want to promote {$domain}. Where can i find the banners?
            </a>
        </div>
        <div id="question-15" class="collapse" data-parent="#faq">
            <div class="card-body">
                Please login to member panel and go to <a href="banners">Banners</a> page.
            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-header">
            <a class="collapsed card-link" data-toggle="collapse" href="#question-16">
                How to get my referral link?
            </a>
        </div>
        <div id="question-16" class="collapse" data-parent="#faq">
            <div class="card-body">
                Please login to member panel and go to <a href="referrals">Referrals</a> page. You can also find your
                referral link in
                <a href="dashboard">dashboard</a>.
            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-header">
            <a class="collapsed card-link" data-toggle="collapse" href="#question-17">
                How do i contact support if i face any problem?
            </a>
        </div>
        <div id="question-17" class="collapse" data-parent="#faq">
            <div class="card-body">
                If you have not registered yet, you can go to <a href="contact">Contact us</a> page and submit your query to us. If you have already registered, you can go to
                <a href="tickets">Tickets</a> page in member panel and click on "Create Ticket" to write your message. You will get a reply as soon as possible.
            </div>
        </div>
    </div>

</div>

{include file="footer.tpl"}

