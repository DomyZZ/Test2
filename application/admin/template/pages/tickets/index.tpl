{block name="breadcrumb"}
    <li>
        <a href="{$admin_url}/tickets">{$lang.breadcrumb.tickets}</a>
    </li>
    <li class="active">{$lang.breadcrumb.$tic_status}</li>
{/block}

{block name="page_content"}
    <!-- Nav tabs -->
    <ul class="nav nav-tabs dq-nav">
        <li {($tic_status == "open")?'class="active"':""}>
            <a href="{$admin_url}/tickets/open">{$lang.title.open}</a>
        </li>
        <li {($tic_status == "answered")?'class="active"':""}>
            <a href="{$admin_url}/tickets/answered">{$lang.title.answered}</a>
        </li>
        <li {($tic_status == "closed")?'class="active"':""}>
            <a href="{$admin_url}/tickets/closed">{$lang.title.closed}</a>
        </li>
    </ul>
    <!-- Tab panels -->
    <div class="tab-content">
        <div class="tab-pane fade in active" id="{$tic_status}">
            <div class="panel-body">
                <form class="form-inline form-filter" name="tickets" id="tickets" method="get">
                    <div class="row">
                        <div class="col-md-12">
                            <h5>{$lang.label.filter}</h5>
                            <div class="form-group">
                                <label for="id" class="control-label">{$lang.label.id}</label>
                                <input type="text" name="id" id="id"
                                       class="form-control input-sm" value="{$dt.filter.id}">
                            </div>
                            <div class="form-group">
                                <label for="created_by"
                                       class="control-label">{$lang.label.created_by}</label>
                                <input type="text" name="created_by" id="created_by"
                                       class="form-control input-sm"
                                       value="{$dt.filter.created_by}">
                            </div>
                            <div class="form-group">
                                <label for="status"
                                       class="control-label">{$lang.label.department}</label>
                                <select name="department" id="department"
                                        class="form-control input-sm">
                                    <option value="">-- ANY --</option>
                                    {foreach $all_tic_depts as $val}
                                        <option value="{$val.name}" {($dt.filter.department==$val.name)?'selected':''}>{$val.name}</option>
                                    {/foreach}
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="startdate"
                                       class="control-label">{$lang.label.start_date}</label>
                                <input type="text" autocomplete="off" name="startdate"
                                       id="startdate"
                                       class="form-control input-sm" placeholder="Min"
                                       value="{$dt.filter.startdate}">
                            </div>
                            <div class="form-group">
                                <label for="enddate"
                                       class="control-label">{$lang.label.end_date}</label>
                                <input type="text" autocomplete="off" name="enddate" id="enddate"
                                       class="form-control input-sm" placeholder="Max"
                                       value="{$dt.filter.enddate}">
                            </div>
                            <div class="form-actions">
                                <button type="submit" class="btn btn-sm btn-default"
                                        onclick="dt_filter('tickets')">
                                    {$lang.label.filter}
                                </button>
                                <a href="javascript:void(0)" class="btn btn-link" onclick="dt_reset('tickets')">
                                    {$lang.label.reset_default}
                                </a>
                            </div>
                        </div>
                    </div>
                </form>
                <hr>
                {include file="form_status.tpl" form="tickets_action"}
                {if $dt.rows}
                    <form class="form-filter" name="tickets_action" id="tickets_action" method="post">
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
                                            {if $tic_status == "closed"}
                                                <a href="javascript:void(0)" class="text-success"
                                                   onclick="selected_action('tickets_action', 'open')">
                                                    <i
                                                            class="fa fa-check"></i> {$lang.label.reopen}
                                                </a>
                                            {else}
                                                <a href="javascript:void(0)" class="text-warning"
                                                   onclick="selected_action('tickets_action', 'close')">
                                                    <i
                                                            class="fa fa-times"></i> {$lang.label.close}
                                                </a>
                                            {/if} |
                                            <a href="javascript:void(0)" class="text-danger"
                                               onclick="selected_action('tickets_action', 'delete')">
                                                <i class="fa fa-trash"></i> {$lang.label.delete}
                                            </a>
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
                                            <th width="1%" class="text-center">
                                                <input type="checkbox" name="select_all"
                                                       id="select_all"
                                                       value="true">
                                            </th>
                                            <th>{$lang.label.id}</th>
                                            <th>{$lang.label.subject}</th>
                                            <th>{$lang.label.department}</th>
                                            <th>{$lang.label.created_by}</th>
                                            <th>{$lang.label.modified_on}</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        {foreach $dt.rows as $row}
                                            <tr id="row_{$row.tic_id}">
                                                <td width="1%" class="text-center">
                                                    <input type="checkbox" name="ids[]"
                                                           onclick="selected_row('ticket_{$row.tic_id}','row_{$row.tic_id}')"
                                                           id="ticket_{$row.tic_id}"
                                                           class="row-check"
                                                           value="{$row.tic_id}">
                                                </td>
                                                <td>
                                                    <a href="{$admin_url}/tickets/{$row.uid}/manage"
                                                       data-toggle="tooltip"
                                                       title="{$lang.label.manage} {$lang.label.ticket}">{$row.uid}</a>
                                                </td>
                                                <td>
                                                    <a href="{$admin_url}/tickets/{$row.uid}/manage"
                                                       data-toggle="tooltip"
                                                       title="{$lang.label.manage} {$lang.label.ticket}">{$row.subject}</a>
                                                </td>
                                                <td>
                                                    {$row.dept_name}
                                                </td>
                                                <td>
                                                    <a href="{$admin_url}/users/{$row.user_id}/profile"
                                                       data-toggle="tooltip"
                                                       title="{$lang.label.manage} {$lang.label.user}"
                                                       class="color-inherit">{$row.username}</a>
                                                </td>
                                                <td>
                                                    {($row.modified_date)?($row.modified_date|dtformat:'timeago'):'--'}
                                                </td>
                                            </tr>
                                        {/foreach}
                                    </tbody>
                                </table>
                                {include file="pagination.tpl" page_link="tickets/{$tic_status}"}
                            </div>
                        </div>
                    </form>
                {else}
                    <div class="alert alert-warning ">
                        <i class="fa fa-exclamation-triangle"></i> {$lang.error.no_tickets_found}
                    </div>
                {/if}
            </div>
        </div>
    </div>
{/block}