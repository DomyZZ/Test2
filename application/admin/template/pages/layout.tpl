<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>{$lang.admin_title|strtoupper}{block name="title"} | {$lang.title.$cur_page|strtoupper}{/block}</title>

    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="{$admin_assets}/assets/img/ico/favicon.png" type="image/x-icon">

    {block name="head"}
        <!-- Global Style -->
        <link href="{$admin_assets}/assets/css/base.css" rel="stylesheet" type="text/css" />
    {/block}

    <!-- Custom css -->
    <link href="{$admin_assets}/assets/css/style.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript">
        var dqs_admin_assets = "{$admin_assets}";
        var dqs_admin_url = "{$admin_url}";
        var dqs_curr_symbol = "{$curr_symbol}";
        var dqs_curr_decp = "{$curr_decp}";
    </script>
</head>
<body>
    {block name="body"}
        <div class="wrapper">
            <nav class="navbar navbar-inverse navbar-fixed-top">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                data-target="#navbar"
                                aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="{$admin_url}/">DQScript Admin</a>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li {($nav_group=='dashboard')?'class="active"':''}>
                                <a href="{$admin_url}/dashboard">{$lang.nav.dashboard}</a>
                            </li>
                            {if $logged_id == 1 || isset($permissions['users_list']) || isset($permissions['users_add']) || isset($permissions['bonus_penalty_list']) || isset($permissions['mass_mail_list']) || isset($permissions['testimonials_list']) || isset($permissions['representatives_list']) || isset($permissions['pending_crypto_payments_list']) || isset($permissions['pending_withdrawals_list'])}
                                <li class="dropdown{($nav_group=='users')?' active':''}">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">{$lang.nav.users} <span
                                                class="caret"></span></a>
                                    <ul class="dropdown-menu multi-level">
                                        {if $logged_id == 1 || isset($permissions['users_list'])}
                                            <li {($cur_page=='users')?'class="active"':''}>
                                                <a href="{$admin_url}/users">{$lang.nav.list_users}</a>
                                            </li>
                                        {/if}
                                        {if $logged_id == 1 || isset($permissions['users_add'])}
                                            <li {($cur_page=='add_user')?'class="active"':''}>
                                                <a href="{$admin_url}/users/add">{$lang.nav.add_user}</a>
                                            </li>
                                        {/if}
                                        <li role="separator" class="divider"></li>
                                        {if $logged_id == 1}
                                            <li class="dropdown-submenu {($cur_page=='staffs' || $cur_page=='add_staff')?'active':''}">
                                                <a href="{$admin_url}/staffs" {($cur_page=='staffs')?'class="active"':''}>{$lang.nav.staffs}</a>
                                                <ul class="dropdown-menu">
                                                    <li {($cur_page=='add_staff')?'class="active"':''}>
                                                        <a href="{$admin_url}/staffs/add">{$lang.nav.add_staff}</a>
                                                    </li>
                                                </ul>
                                            </li>
                                        {/if}
                                        {if $logged_id == 1 || isset($permissions['testimonials_list'])}
                                            <li {($cur_page=='testimonials')?'class="active"':''}>
                                                <a href="{$admin_url}/testimonials">{$lang.nav.testimonials}</a>
                                            </li>
                                        {/if}
                                        {if $logged_id == 1 || isset($permissions['representatives_list'])}
                                            <li class="dropdown-submenu {($cur_page=='representatives' || $cur_page=='add_representative')?'active':''}">
                                                <a href="{$admin_url}/representatives">{$lang.nav.representatives}</a>
                                                <ul class="dropdown-menu">
                                                    <li>
                                                        <a href="{$admin_url}/representatives/pending">{$lang.nav.pending_representatives}</a>
                                                    </li>
                                                    {if $logged_id == 1 || isset($permissions['representatives_add'])}
                                                        <li {($cur_page=='add_representative')?'class="active"':''}>
                                                            <a href="{$admin_url}/representatives/add">{$lang.nav.add_representative}</a>
                                                        </li>
                                                    {/if}
                                                </ul>
                                            </li>
                                        {/if}
                                        <li role="separator" class="divider"></li>
                                        {if $logged_id == 1 || isset($permissions['pending_crypto_payments_list'])}
                                            <li {($cur_page=='pending_crypto_payments')?'class="active"':''}>
                                                <a href="{$admin_url}/pending_crypto_payments">{$lang.nav.pending_crypto_payments}</a>
                                            </li>
                                        {/if}
                                        {if $logged_id == 1 || isset($permissions['pending_withdrawals_list'])}
                                            <li {($cur_page=='pending_withdrawals')?'class="active"':''}>
                                                <a href="{$admin_url}/pending_withdrawals">{$lang.nav.pending_withdrawals}</a>
                                            </li>
                                        {/if}
                                        <li role="separator" class="divider"></li>
                                        {if $logged_id == 1 || isset($permissions['bonus_penalty_list'])}
                                            <li {($cur_page=='send_bonus_penalty')?'class="active"':''}>
                                                <a href="{$admin_url}/send_bonus_penalty">{$lang.nav.send_bonus_penalty}</a>
                                            </li>
                                        {/if}
                                        {if $logged_id == 1 || isset($permissions['mass_mail_list'])}
                                            <li {($cur_page=='mass_mail')?'class="active"':''}>
                                                <a href="{$admin_url}/mass_mail">{$lang.nav.mass_mail}</a>
                                            </li>
                                        {/if}
                                    </ul>
                                </li>
                            {/if}
                            {if $logged_id == 1 || isset($permissions['deposits_list'])}
                                <li {($nav_group=='deposits')?'class="active"':''}>
                                    <a href="{$admin_url}/deposits">{$lang.nav.deposits}</a>
                                </li>
                            {/if}
                            {if $logged_id == 1 || isset($permissions['transactions_list'])}
                                <li {($nav_group=='transactions')?'class="active"':''}>
                                    <a href="{$admin_url}/transactions">{$lang.nav.transactions}</a>
                                </li>
                            {/if}
                            {if $logged_id == 1 || isset($permissions['tickets_list'])}
                                <li class="dropdown{($nav_group=='tickets')?' active':''}">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">{$lang.nav.support} <span
                                                class="caret"></span></a>
                                    <ul class="dropdown-menu multi-level">
                                        {if $logged_id == 1 || isset($permissions['tickets_list'])}
                                            <li {($cur_page=='tickets')?'class="active"':''}>
                                                <a href="{$admin_url}/tickets">{$lang.nav.tickets}</a>
                                            </li>
                                        {/if}
                                    </ul>
                                </li>
                            {/if}
                            {if $logged_id == 1 || isset($permissions['news_list']) || isset($permissions['news_add'])}
                                <li class="dropdown{($nav_group=='news')?' active':''}">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">{$lang.nav.news} <span
                                                class="caret"></span></a>
                                    <ul class="dropdown-menu multi-level">
                                        {if $logged_id == 1 || isset($permissions['news_list'])}
                                            <li {($cur_page=='news')?'class="active"':''}>
                                                <a href="{$admin_url}/news">{$lang.nav.list_news}</a>
                                            </li>
                                        {/if}
                                        {if $logged_id == 1 || isset($permissions['news_add'])}
                                            <li {($cur_page=='add_news')?'class="active"':''}>
                                                <a href="{$admin_url}/news/add">{$lang.nav.add_news}</a>
                                            </li>
                                        {/if}
                                    </ul>
                                </li>
                            {/if}
                            {if $logged_id == 1 || isset($permissions['general_settings_list']) || isset($permissions['payment_gateways_list']) || isset($permissions['packages_list']) || isset($permissions['representative_system_list']) || isset($permissions['ticket_departments_list']) || isset($permissions['ticket_help_topics_list']) || isset($permissions['email_templates_list'])}
                                <li class="dropdown{($nav_group=='setup')?' active':''}">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">{$lang.nav.setup} <span
                                                class="caret"></span></a>
                                    <ul class="dropdown-menu multi-level">
                                        {if $logged_id == 1 || isset($permissions['general_settings_list'])}
                                            <li class="dropdown-submenu{($cur_page=='general_settings')?' active':''}">
                                                <a href="{$admin_url}/general_settings">{$lang.nav.general_settings}</a>
                                                <ul class="dropdown-menu">
                                                    <li>
                                                        <a href="{$admin_url}/general_settings#site"
                                                           onclick="location.reload()">{$lang.nav.site}</a>
                                                    </li>
                                                    <li>
                                                        <a href="{$admin_url}/general_settings#site_functions"
                                                           onclick="location.reload()">{$lang.nav.site_functions}</a>
                                                    </li>
                                                    <li>
                                                        <a href="{$admin_url}/general_settings#site_security"
                                                           onclick="location.reload()">{$lang.nav.site_security}</a>
                                                    </li>
                                                    <li>
                                                        <a href="{$admin_url}/general_settings#admin_security"
                                                           onclick="location.reload()">{$lang.nav.admin_security}</a>
                                                    </li>
                                                    <li>
                                                        <a href="{$admin_url}/general_settings#mail"
                                                           onclick="location.reload()">{$lang.nav.mail}</a>
                                                    </li>
                                                    <li>
                                                        <a href="{$admin_url}/general_settings#crate"
                                                           onclick="location.reload()">{$lang.nav.currency_rates}</a>
                                                    </li>
                                                    <li>
                                                        <a href="{$admin_url}/general_settings#cron"
                                                           onclick="location.reload()">{$lang.nav.cron}</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li role="separator" class="divider"></li>
                                        {/if}
                                        {if $logged_id == 1 || isset($permissions['payment_gateways_list']) || isset($permissions['payment_gateways_fees_limits'])}
                                            <li class="dropdown-submenu{($cur_page=='payment_gateways' || $cur_page=='fees_limits')?' active':''}">
                                                <a href="{$admin_url}/payment_gateways">{$lang.nav.payment_gateways}</a>
                                                <ul class="dropdown-menu">
                                                    {if $logged_id == 1 || isset($permissions['payment_gateways_fees_limits'])}
                                                        <li {($cur_page=='fees_limits')?'class="active"':''}>
                                                            <a href="{$admin_url}/payment_gateways/fees_limits">{$lang.nav.fees_limits}</a>
                                                        </li>
                                                    {/if}
                                                </ul>
                                            </li>
                                        {/if}
                                        {if $logged_id == 1 || isset($permissions['packages_list'])}
                                            <li class="dropdown-submenu{($cur_page=='packages' || $cur_page=='add_package' || $cur_page=='holidays')?' active':''}">
                                                <a href="{$admin_url}/packages">{$lang.nav.packages}</a>
                                                <ul class="dropdown-menu">
                                                    {if $logged_id == 1 || isset($permissions['packages_add'])}
                                                        <li {($cur_page=='add_package')?'class="active"':''}>
                                                            <a href="{$admin_url}/packages/add">{$lang.nav.add_package}</a>
                                                        </li>
                                                    {/if}
                                                    {if $logged_id == 1 || isset($permissions['holidays_list'])}
                                                        <li {($cur_page=='holidays')?'class="active"':''}>
                                                            <a href="{$admin_url}/holidays">{$lang.nav.list_holidays}</a>
                                                        </li>
                                                    {/if}
                                                </ul>
                                            </li>
                                        {/if}
                                        <li role="separator" class="divider"></li>
                                        {if $logged_id == 1 || isset($permissions['referral_system_list'])}
                                            <li {($cur_page=='referral_system')?'class="active"':''}>
                                                <a href="{$admin_url}/referral_system">{$lang.nav.referral_system}</a>
                                            </li>
                                        {/if}
                                        {if $logged_id == 1 || isset($permissions['representative_system_list'])}
                                            <li {($cur_page=='representative_system')?'class="active"':''}>
                                                <a href="{$admin_url}/representative_system">{$lang.nav.representative_system}
                                                </a>
                                            </li>
                                        {/if}
                                        <li role="separator" class="divider"></li>
                                        {if $logged_id == 1 || isset($permissions['ticket_departments_list']) || isset($permissions['ticket_help_topics_list'])}
                                            <li class="dropdown-submenu{($cur_page=='ticket_departments' || $cur_page=='ticket_help_topics')?' active':''}">
                                                <a href="#" class="dropdown-toggle"
                                                   data-toggle="dropdown">{$lang.nav.support}</a>
                                                <ul class="dropdown-menu">
                                                    {if $logged_id == 1 || isset($permissions['ticket_departments_list'])}
                                                        <li {($cur_page=='ticket_departments')?'class="active"':''}>
                                                            <a href="{$admin_url}/ticket_departments">{$lang.nav.ticket_depts}</a>
                                                        </li>
                                                    {/if}
                                                    {if $logged_id == 1 || isset($permissions['ticket_help_topics_list'])}
                                                        <li {($cur_page=='ticket_help_topics')?'class="active"':''}>
                                                            <a href="{$admin_url}/ticket_help_topics">{$lang.nav.ticket_help_topics}</a>
                                                        </li>
                                                    {/if}
                                                </ul>
                                            </li>
                                        {/if}
                                        {if $logged_id == 1}
                                            <li {($cur_page=='staff_roles')?'class="active"':''}>
                                                <a href="{$admin_url}/staff_roles">{$lang.nav.staff_roles}</a>
                                            </li>
                                        {/if}
                                        <li role="separator" class="divider"></li>
                                        {if $logged_id == 1 || isset($permissions['info_boxes_list'])}
                                            <li {($cur_page=='info_boxes')?'class="active"':''}>
                                                <a href="{$admin_url}/info_boxes">{$lang.nav.info_boxes}</a>
                                            </li>
                                        {/if}
                                        {if $logged_id == 1 || isset($permissions['email_templates_list'])}
                                            <li {($cur_page=='email_templates')?'class="active"':''}>
                                                <a href="{$admin_url}/email_templates">{$lang.nav.email_templates}</a>
                                            </li>
                                        {/if}
                                        {if $logged_id == 1 || isset($permissions['exchange_system_list'])}
                                            <li class="dropdown-submenu{($cur_page=='exchange_system')?' active':''}">
                                                <a href="javascript:void(0)">{$lang.nav.other}</a>
                                                <ul class="dropdown-menu">
                                                    {if $logged_id == 1 || isset($permissions['exchange_system_list'])}
                                                        <li {($cur_page=='exchange_system')?'class="active"':''}>
                                                            <a href="{$admin_url}/exchange_system">{$lang.nav.exchange_system}</a>
                                                        </li>
                                                    {/if}
                                                </ul>
                                            </li>
                                        {/if}
                                    </ul>
                                </li>
                            {/if}
                            {if $logged_id == 1 || isset($permissions['access_log_list']) || isset($permissions['duplicate_ip_checker_list']) || isset($permissions['file_manager_list'])}
                                <li class="dropdown{($nav_group=='utilities')?' active':''}">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">{$lang.nav.utilities}
                                        <span
                                                class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu multi-level">
                                        {if $logged_id == 1 || isset($permissions['duplicate_ip_checker_list'])}
                                            <li {($cur_page=='duplicate_ip_checker')?'class="active"':''}>
                                                <a href="{$admin_url}/duplicate_ip_checker">{$lang.nav.duplicate_ip_checker}</a>
                                            </li>
                                        {/if}
                                        {if $logged_id == 1 || isset($permissions['file_manager_list'])}
                                            <li {($cur_page=='file_manager')?'class="active"':''}>
                                                <a href="{$admin_url}/file_manager">{$lang.nav.file_manager}</a>
                                            </li>
                                        {/if}
                                        {if $logged_id == 1 || isset($permissions['access_log_list'])}
                                            <li class="dropdown-submenu{($cur_page=='access_log_user' || $cur_page=='access_log_staff')?' active':''}">
                                                <a href="javascript:void(0)">{$lang.nav.logs}</a>
                                                <ul class="dropdown-menu">
                                                    {if $logged_id == 1 || isset($permissions['access_log_list'])}
                                                        <li {($cur_page=='access_log_user')?'class="active"':''}>
                                                            <a href="{$admin_url}/access_log/user">{$lang.nav.access_log_user}</a>
                                                        </li>
                                                        <li {($cur_page=='access_log_staff')?'class="active"':''}>
                                                            <a href="{$admin_url}/access_log/staff">{$lang.nav.access_log_staff}</a>
                                                        </li>
                                                    {/if}
                                                </ul>
                                            </li>
                                        {/if}
                                    </ul>
                                </li>
                            {/if}
                        </ul>
                        <ul class="nav navbar-nav navbar-right nav-notifications">
                            {if $logged_id == 1 || isset($permissions['tickets_list'])}
                                <li>
                                    <a href="{$admin_url}/tickets/open" data-toggle="tooltip" data-placement="bottom"
                                       title="{$lang.title.open} {$lang.title.tickets}">
                                        <i class="fa fa-envelope"></i>
                                        <sup class="notify-sup">{$notify_otic}</sup>
                                    </a>
                                </li>
                            {/if}
                            {if $logged_id == 1 || isset($permissions['pending_crypto_payments_list'])}
                                <li>
                                    <a href="{$admin_url}/pending_crypto_payments" data-toggle="tooltip"
                                       data-placement="bottom"
                                       title="{$lang.title.pending_crypto_payments}">
                                        <i class="fa fa-arrow-down"></i>
                                        <sup class="notify-sup">{$notify_wp}</sup>
                                    </a>
                                </li>
                            {/if}
                            {if $logged_id == 1 || isset($permissions['pending_withdrawals_list'])}
                                <li>
                                    <a href="{$admin_url}/pending_withdrawals" data-toggle="tooltip"
                                       data-placement="bottom" title="{$lang.title.pending_withdrawals}">
                                        <i class="fa fa-arrow-up"></i>
                                        <sup class="notify-sup">{$notify_pw}</sup>
                                    </a>
                                </li>
                            {/if}
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span
                                            class="glyphicon glyphicon-user"></span> {$admin_username}<span
                                            class="caret"></span></a>
                                <ul class="dropdown-menu multi-level">
                                    <li {($cur_page=='manage_admin_profile')?'class="active"':''}>
                                        <a href="{$admin_url}/profile">{$lang.nav.profile}</a>
                                    </li>
                                    <li>
                                        <a href="{$admin_url}/logout">{$lang.nav.logout}</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div><!--/.nav-collapse -->
                </div>
            </nav>
            <div class="container">
                <div class="page-header">
                    <h1>
                        {block name="page_title"}{$lang.title.$cur_page}{/block}
                        {block name="page_subtitle"}{/block}
                    </h1>
                    <ol class="breadcrumb">
                        <li>
                            <i class="fa fa-home"></i>
                            <a href="{$admin_url}/dashboard"><i class="pe-7s-home"></i> {$lang.breadcrumb.dashboard}</a>
                        </li>
                        {block name="breadcrumb"}
                            <li class="active">{$lang.breadcrumb.$cur_page}</li>{/block}
                    </ol>
                </div>
                <div class="content-wrapper">
                    <div class="row">
                        <div class="col-md-12">
                            {if $demo_restriction}
                                {include file="form_status.tpl" form="demo_restrict_msg"}
                            {/if}
                            {if !$has_privilege}
                                {include file="form_status.tpl" form="privilege_restrict_msg"}
                            {/if}
                            {block name="page_content"}{/block}
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <footer class="footer">
            <div class="container">
                <p class="text-muted">Copyright &copy; 2019-2020 DQScript Admin. All rights reserved.</p>
            </div>
        </footer>
    {/block}

    <!-- jQuery -->
    <script src="{$admin_assets}/assets/plugins/jquery/jquery.min.js" type="text/javascript"></script>

    {block name="foo"}
        <!-- bootstrap js -->
        <script src="{$admin_assets}/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- datepicker js -->
        <script src="{$admin_assets}/assets/plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>
        <!-- footable js -->
        <script src="{$admin_assets}/assets/plugins/footable-bootstrap/js/footable.min.js"
                type="text/javascript"></script>
    {/block}

    <!-- Application js -->
    <script src="{$admin_assets}/assets/js/application.js" type="text/javascript"></script>
</body>
</html>