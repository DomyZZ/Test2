{block name="page_content"}
    <form class="form-inline form-filter" name="duplicate_ip_checker" id="duplicate_ip_checker" method="get">
        <div class="row">
            <div class="col-md-12">
                <h5>{$lang.label.filter}</h5>
                <div class="form-group">
                    <label for="ip" class="control-label">{$lang.label.ip}</label>
                    <input type="text" name="ip" id="ip"
                           class="form-control input-sm" value="{$dt.filter.ip}">
                </div>
                <div class="form-group">
                    <label for="min_no_users"
                           class="control-label">{$lang.label.min_no_users}</label>
                    <input type="text" name="min_no_users" id="min_no_users"
                           class="form-control input-sm" value="{$dt.filter.min_no_users}">
                </div>
                <div class="form-group text-center">
                    <label for="include_admin" class="control-label">{$lang.label.include_admin}</label>
                    <input type="checkbox" name="include_admin" class="form-control input-sm"
                           id="include_admin"
                           value="true" {($dt.filter.include_admin)?'checked="checked"':''}>
                </div>
                <div class="form-actions">
                    <button type="submit" class="btn btn-sm btn-default"
                            onclick="dt_filter('duplicate_ip_checker')">
                        {$lang.label.filter}
                    </button>
                    <a href="javascript:void(0)" class="btn btn-link" onclick="dt_reset('duplicate_ip_checker')">
                        {$lang.label.reset_default}
                    </a>
                </div>
            </div>
        </div>
    </form>
    <hr>
    {include file="form_status.tpl" form="duplicate_ips_action"}
    {if $dt.rows}
        <form class="form-filter" name="duplicate_ips_action" id="duplicate_ips_action" method="post"
              action="{$admin_url}/duplicate_ip_checker/users_by_ip_action">
            <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
            <div class="row">
                <div class="col-md-12">
                    <h5>{$lang.label.actions}</h5>
                    <div class="form-inline">
                        <div class="form-group">
                            <label>{$lang.label.with_selected}: </label>
                        </div>
                        <div class="form-group">
                            <div class="form-control-static">
                                <a href="javascript:void(0)" class="text-danger"
                                   onclick="selected_action('duplicate_ips_action', 'blocked')"><i
                                            class="fa fa-ban"></i> {$lang.label.block_users}</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
            <div class="table-responsive">
                <div class="dataTables_wrapper dt-bootstrap no-footer">
                    <table class="table table-striped dataTable">
                        <thead>
                            <tr>
                                <th class="text-center">
                                </th>
                                <th>
                                    {$lang.label.ip}
                                </th>
                                <th onclick="location.href='{$admin_url}/duplicate_ip_checker?{'sort'|bind_query:'no_users'}'"
                                    class="{($dt.sort_by=='no_users')?{'sorting_'|cat:$dt.sort_order}:'sorting'}">{$lang.label.no_users}</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            {foreach $dt.rows as $key=>$row}
                                <tr>
                                    <td class="text-center" width="1%">
                                        <input type="checkbox" id="all_users_{$key}" value="true"
                                               onchange="select_all_users_by_ip({$key})">
                                    </td>
                                    <td>
                                        <a href="javascript:void(0)" onclick="show_users({$key})" data-toggle="tooltip" title="{$lang.label.show_users}">{$row.ip}</a>
                                    </td>
                                    <td>
                                        {$row.users}
                                    </td>
                                    <td>
                                        <a href="{$admin_url}/duplicate_ip_checker/{$row.ip}/view_usages"
                                           data-toggle="tooltip"
                                           title="{$lang.label.view}" class="text-underline">{$lang.label.view_usages}
                                        </a>
                                    </td>
                                </tr>
                                <tr align="center" id="users_{$key}" class="hide">
                                    <td colspan="4" style="padding: 20px 0;">
                                        <table class="table" style="width: 80%;">
                                            <thead>
                                                <tr class="thead-bg-1">
                                                    <th></th>
                                                    <th>{$lang.label.username}</th>
                                                    <th>{$lang.label.last_access}</th>
                                                    <th>{$lang.label.upline}</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                {foreach $dt.ip_users[$row.ip] as $user}
                                                    <tr>
                                                        <td class="text-center" width="1%">
                                                            <input type="checkbox"
                                                                   name="ids[{$key}][{$user.user_id}]"
                                                                   id="user_{$key}_{$user.user_id}"
                                                                   class="user_{$key}" value="true">
                                                        </td>
                                                        <td>
                                                            <a href="{$admin_url}/users/{$user.user_id}/profile"
                                                               data-toggle="tooltip"
                                                               title="{$lang.label.manage} {$lang.label.user}">
                                                                <b>{$user.username}</b></a>
                                                        </td>
                                                        <td>
                                                            {($user.last_access_date<=0)?'--':$user.last_access_date|dtformat:'jS, M Y'}
                                                        </td>
                                                        <td>
                                                            {if $user.uplineusername}
                                                                <a href="{$admin_url}/users/{$user.upline}/profile"
                                                                   data-toggle="tooltip"
                                                                   title="{$lang.label.manage_upline_user}">
                                                                    <b>{$user.uplineusername}</b>
                                                                </a>
                                                            {else}
                                                                --
                                                            {/if}
                                                        </td>
                                                    </tr>
                                                    {foreachelse}
                                                    <tr>
                                                        <td colspan="3"
                                                            align="center">{$lang.msg.no_active_suspended_users_found}</td>
                                                    </tr>
                                                {/foreach}
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            {/foreach}
                        </tbody>
                    </table>
                    {include file="pagination.tpl" page_link="duplicate_ip_checker"}
                </div>
            </div>
        </form>
    {else}
        <div class="alert alert-warning">
            <i class="fa fa-exclamation-triangle"></i> {$lang.error.no_data_found}
        </div>
    {/if}
{/block}

{block name="foo" append}
{literal}
    <script type="text/javascript">
        function show_users(id) {
            if ($('#users_' + id).hasClass('hide')) {
                $('#users_' + id).removeClass('hide');
            }
            else {
                $('#users_' + id).addClass('hide');
            }
        }
    </script>
{/literal}
{/block}