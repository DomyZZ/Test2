<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Please do not delete this line -->
    <base href="{$base_url}/">
    <meta charset="utf-8">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>{$settings.general.site_name} - {$title}</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link rel="icon" type="image/png" href="images/favicon.png" />
</head>

<body>

<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <div class="container">
        <a class="navbar-brand" href="#">{$settings.general.site_name}</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault"
                aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav mr-auto">
                <li {($cur_page=='home')?'class="nav-item active"':''}><a class="nav-link" href=".">{$lang.home}</a>
                </li>
                <li {($cur_page=='faq')?'class="nav-item active"':''}><a class="nav-link" href="faq">{$lang.faq}</a>
                </li>
                <li {($cur_page=='terms')?'class="nav-item active"':''}><a class="nav-link"
                                                                           href="terms">{$lang.terms}</a>
                </li>

                {if $settings.representative.rep_enabled}
                    <li {($cur_page=='representatives')?'class="active"':''}><a
                                class="nav-link" href="representatives">{$lang.representatives}</a></li>
                {/if}

                {if $logged_in}
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="{$user.tickets}" id="dropdown01"
                           data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">{$lang.support}</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown01">
                            <a class="dropdown-item" href="tickets">{$lang.tickets}</a>
                            <a class="dropdown-item" href="new_ticket">{$lang.new_ticket}</a>
                        </div>
                    </li>
                {else}
                    <li {($cur_page=='contact')?'class="nav-item active"':''}><a class="nav-link"
                                                                                 href="contact">{$lang.contact}</a></li>
                {/if}

            </ul>
            {if $logged_in}
                <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="{$user.dashboard}" id="dropdown01"
                           data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">{$user.username}</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown01">
                            <a class="dropdown-item" href="dashboard">{$lang.dashboard}</a>
                            <a class="dropdown-item" href="edit_profile">{$lang.edit_profile}</a>
                            <a class="dropdown-item" href="security">{$lang.security}</a>

                            <a class="dropdown-item" href="logout">{$lang.logout}</a>
                        </div>
                    </li>

                </ul>
            {else}
                <a href="{$base_url}/login" class="btn btn-primary btn-sm mr-md-2">{$lang.login}</a>
                <a href="{$base_url}/register" class="btn btn-sm btn-success">{$lang.register}</a>
            {/if}

        </div>
    </div>

</nav>

{if $cur_page!="home"}
    <div class="bg-white py-5 page-header">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">

                    <h1 class="display-4">{ucfirst($title)}</h1>

                    <ol class="breadcrumb bg-light">
                        <li class="breadcrumb-item"><a href="">{$lang.home}</a></li>
                        {if $is_member_page && $logged_in && $cur_page!="dashboard"}
                            <li class="active breadcrumb-item"><a href="dashboard">{$lang.dashboard}</a></li>
                        {/if}
                        {foreach $breadcrumbs as $breadcrumb}
                            {if $breadcrumb.last}
                                <li class="active breadcrumb-item">{$breadcrumb.label}</li>
                            {else}
                                <li class="breadcrumb-item"><a href="{$breadcrumb.uri}">{$breadcrumb.label}</a></li>
                            {/if}
                        {/foreach}
                    </ol>

                </div>
            </div>

        </div>
    </div>
{/if}


{if $is_member_page && $logged_in}
<div class="container py-5">
    <div class="row">
        <div class="col-sm-9">
            {elseif $cur_page!="home"}
            <div class="container py-5">
                {/if}

