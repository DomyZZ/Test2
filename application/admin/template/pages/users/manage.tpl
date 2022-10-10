{block name="title"} | {$lang.title.manage_user|strtoupper} - {$lang.title.$cur_page|strtoupper}{/block}

{block name="page_subtitle"}<small>{$user.username}</small>{/block}

{block name="breadcrumb"}
    <li>
        <a href="{$admin_url}/users">{$lang.breadcrumb.users}</a>
    </li>
    <li class="active">{$lang.breadcrumb.manage}</li>
{/block}

{block name="page_content"}
    <ul class="nav nav-tabs">
        <li {($cur_page == "profile")?'class="active"':""}>
            <a href="{$admin_url}/users/{$user.id}/profile">{$lang.title.profile}</a>
        </li>
        <li {($cur_page == "wallet_accounts")?'class="active"':""}>
            <a href="{$admin_url}/users/{$user.id}/wallet_accounts">{$lang.title.wallet_accounts}</a>
        </li>
        <li {($cur_page == "funds")?'class="active"':""}>
            <a href="{$admin_url}/users/{$user.id}/funds">{$lang.title.funds}</a>
        </li>
        <li {($cur_page == "referrals")?'class="active"':""}>
            <a href="{$admin_url}/users/{$user.id}/referrals">{$lang.title.referrals}</a>
        </li>
        <li {($cur_page == "access_log")?'class="active"':""}>
            <a href="{$admin_url}/users/{$user.id}/access_log">{$lang.title.access_log}</a>
        </li>
       {* {if $logged_id == 1 || isset($permissions['users_delete'])}
            <li class="pull-right">
                <a href="javascript:void(0)"
                   data-toggle="tooltip"
                   title="{$lang.label.delete}"
                   onclick="confirm_delete('{$lang.msg.confirm_user_delete}', '{$admin_url}/users/{$user.id}/delete');"
                   class="text-danger">
                    <i class="fa fa-trash-o"></i> {$lang.label.delete_user}
                </a>
            </li>
        {/if}*}
        <li class="pull-right">
            <a href="{$admin_url}/users/{$user.id}/mass_mail"><i
                        class="fa fa-envelope"></i> {$lang.title.send_mail}</a>
        </li>
        <li class="pull-right">
            <a href="{$admin_url}/users/{$user.id}/send_bonus_penalty"><i
                        class="fa fa-money"></i> {$lang.title.send_bonus_penalty}</a>
        </li>
    </ul>
    <!-- Tab panels -->
    <div class="tab-content">
        <div class="tab-pane fade in active" id="{$cur_page}">
            <div class="panel-body">
                {block name="manage_user"}{/block}
            </div>
        </div>
    </div>
{/block}