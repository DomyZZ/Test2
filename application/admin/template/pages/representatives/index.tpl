{block name="breadcrumb"}
    <li>
        <a href="{$admin_url}/representatives">{$lang.breadcrumb.representatives}</a>
    </li>
    <li class="active">{$lang.breadcrumb.$rep_status}</li>
{/block}

{block name="page_content"}

    {if $enable_representative_system && !empty($representative_levels)}

    {if ($logged_id == 1 || isset($permissions['representatives_add']))}
        <a href="{$admin_url}/representatives/add"><i
                    class="fa fa-plus"></i> {$lang.label.add_representative}
        </a>
        <hr>
    {/if}

    <!-- Nav tabs -->
    <ul class="nav nav-tabs">
        <li {($rep_status == "active")?'class="active"':""}>
            <a href="{$admin_url}/representatives" class="text-success">{$lang.label.active}</a>
        </li>
        <li {($rep_status == "pending")?'class="active"':""}>
            <a href="{$admin_url}/representatives/pending" class="text-danger">{$lang.label.pending}</a>
        </li>
    </ul>
    <!-- Tab panels -->
    <div class="tab-content">
        <div class="tab-pane fade in active" id="{$rep_status}">
            <div class="panel-body">
                <form class="form-inline form-filter" name="representatives" id="representatives" method="get">
                    <div class="row">
                        <div class="col-md-12">
                            <h5>{$lang.label.filter}</h5>
                            <div class="form-group">
                                <label for="username" class="control-label">{$lang.label.username}</label>
                                <input type="text" name="username" id="username"
                                       class="form-control input-sm" value="{$dt.filter.username}">
                            </div>
                            <div class="form-group">
                                <label for="country" class="control-label">{$lang.label.country}</label>
                                <select name="country" id="country" class="form-control input-sm">
                                    <option value="">-- ANY --</option>
                                    {foreach $countries as $value}
                                        <option value="{$value.name}" {($dt.filter.country==$value.name)?'selected':''}>{$value.name}</option>
                                    {/foreach}
                                </select>
                            </div>
                            <div class="form-actions">
                                <button type="submit" class="btn btn-sm btn-default"
                                        onclick="dt_filter('representatives')">
                                    {$lang.label.filter}
                                </button>
                                <a href="javascript:void(0)" class="btn btn-link" onclick="dt_reset('representatives')">
                                    {$lang.label.reset_default}
                                </a>
                            </div>
                        </div>
                    </div>
                </form>
                <hr>
                {include file="form_status.tpl" form="representatives_action"}
                {if $dt.rows}
                    <form class="form-filter" name="representatives_action" id="representatives_action"
                          method="post"
                          action="{$admin_url}/representatives/action">
                        <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
                        <input type="hidden" name="status" value="{$rep_status}"/>
                        <div class="row">
                            <div class="col-md-12">
                                <h5>{$lang.label.actions}</h5>
                                <div class="form-inline">
                                    <div class="form-group">
                                        <label>{$lang.label.with_selected}: </label>
                                    </div>
                                    <div class="form-group">
                                        <div class="form-control-static">

                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown"
                                                        class="btn dropdown-toggle btn-success btn-xs">{$lang.label.set_level}
                                                    <span class="caret"></span>
                                                </button>
                                                <ul role="menu" class="dropdown-menu">
                                                    {foreach $representative_levels as $rep_level}
                                                    <li>
                                                        <a href="javascript:void(0)"
                                                           onclick="selected_action('representatives_action', 'level_{$rep_level.id}')">
                                                            Level {$rep_level.id}
                                                        </a>
                                                    </li>
                                                    {/foreach}
                                                </ul>
                                            </div>
                                            |
                                            {if $rep_status != 'pending'}
                                                <a href="javascript:void(0)" class="text-warning"
                                                   onclick="selected_action('representatives_action', 'pending')"><i
                                                            class="fa fa-clock-o"></i> {$lang.label.set_pending}</a>
                                                |
                                            {/if}
                                            <a href="javascript:void(0)" class="text-danger"
                                               onclick="selected_action('representatives_action', 'delete')"><i
                                                        class="fa fa-times-circle"></i> {$lang.label.delete}</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <div class="table-responsive">
                            <div class="dataTables_wrapper dt-bootstrap no-footer">
                                <table class="table table-striped dataTable footable">
                                    <thead>
                                        <tr>
                                            <th class="text-center" width="1%">
                                                <input type="checkbox" name="select_all" id="select_all"
                                                       value="true">
                                            </th>
                                            <th onclick="location.href='{$admin_url}/representatives?{'sort'|bind_query:'username'}'"
                                                class="{($dt.sort_by=='username')?{'sorting_'|cat:$dt.sort_order}:'sorting'}">
                                                {$lang.label.username}
                                            </th>
                                            <th>{$lang.label.country}</th>
                                            {if $rep_status != 'pending'}
                                                <th>Level</th>
                                            {/if}
                                            <th onclick="location.href='{$admin_url}/representatives?{'sort'|bind_query:'date'}'"
                                                class="{($dt.sort_by=='date')?{'sorting_'|cat:$dt.sort_order}:'sorting'}">{$lang.label.applied_at}
                                            </th>
                                            <th width="8%"></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        {foreach $dt.rows as $row}
                                            <tr id="row_{$row.r_id}">
                                                <td class="text-center" width="1%">
                                                    <input type="checkbox" name="ids[]"
                                                           onclick="selected_row('representative_{$row.r_id}','row_{$row.r_id}')"
                                                           id="representative_{$row.r_id}" class="row-check"
                                                           value="{$row.r_id}">
                                                </td>
                                                <td>
                                                    <a href="{$admin_url}/users/{$row.userid}/profile"
                                                       data-toggle="tooltip"
                                                       title="{$lang.label.manage} {$lang.label.user}"
                                                       class="color-inherit">{$row.username}</a>
                                                </td>
                                                <td>{$row.country_name}</td>
                                                {if $rep_status != 'pending'}
                                                    <td>Level {$row.level}</td>
                                                {/if}
                                                <td width="20%">
                                                    {$row.date|dtformat:'d-M-Y H:i:s'}
                                                </td>
                                                <td class="text-center">
                                                    <a href="{$admin_url}/representatives/{$row.r_id}/edit"
                                                       data-toggle="tooltip" data-placement="left"
                                                       title="{$lang.label.edit}" class="btn btn-sm btn-info"><i
                                                                class="fa fa-pencil"></i>
                                                    </a>
                                                    {if $logged_id == 1 || isset($permissions['representatives_delete'])}
                                                        <a href="{$admin_url}/representatives/{$row.r_id}/delete"
                                                           data-toggle="tooltip" data-placement="left"
                                                           onclick="return confirm('{$lang.msg.confirm_representative_delete}');"
                                                           title="{$lang.label.delete}"
                                                           class="btn btn-sm btn-danger"><i
                                                                    class="fa fa-trash-o"></i>
                                                        </a>
                                                    {/if}
                                                </td>
                                            </tr>
                                        {/foreach}
                                    </tbody>
                                </table>
                                {include file="pagination.tpl" page_link="representatives"}
                            </div>
                        </div>
                    </form>
                {else}
                    <div class="alert alert-warning">
                        <i class="fa fa-exclamation-triangle"></i> {$lang.error.no_data_found}
                    </div>
                {/if}
            </div>
        </div>
    </div>
        {else}
        <div class="alert alert-warning">
            <i class="fa fa-exclamation-triangle"></i> Enable representative system and also enable one or more levels. <a href="{$admin_url}/representative_system" style="text-decoration: underline">Click here</a>.
        </div>
    {/if}
{/block}