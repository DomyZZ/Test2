{block name="page_content"}
    <form class="form-inline form-filter" name="access_log" id="access_log" method="get">
        <div class="row">
            <div class="col-md-12">
                <h5>{$lang.label.filter}</h5>
                <div class="form-group">
                    <label class="control-label">{$lang.label.username}</label>
                    <input type="text" name="username" id="username"
                           class="form-control input-sm" value="{$dt.filter.username}">
                </div>
                <div class="form-group">
                    <label class="control-label">{$lang.label.ip}</label>
                    <input type="text" name="ip" id="ip"
                           class="form-control input-sm" value="{$dt.filter.ip}">
                </div>
                <div class="form-group">
                    <label class="control-label">{$lang.label.status}</label>
                    <select name="type" id="type" class="form-control input-sm">
                        <option value="">-- ANY --</option>
                        {foreach $all_status as $key=>$value}
                            <option value="{$key}" {($dt.filter.type==$key)?'selected':''}>{$value}</option>
                        {/foreach}
                    </select>
                </div>
                <div class="form-group">
                    <label for="startdate" class="control-label">{$lang.label.start_date}</label>
                    <input type="text" autocomplete="off" name="startdate" id="startdate"
                           class="form-control input-sm" placeholder="Min"
                           value="{$dt.filter.startdate}">
                </div>
                <div class="form-group">
                    <label for="enddate" class="control-label">{$lang.label.end_date}</label>
                    <input type="text" autocomplete="off" name="enddate" id="enddate"
                           class="form-control input-sm" placeholder="Max"
                           value="{$dt.filter.enddate}">
                </div>
                <div class="form-actions">
                    <button type="submit" class="btn btn-sm btn-default"
                            onclick="dt_filter('access_log')">
                        Filter
                    </button>
                    <a href="javascript:void(0)" class="btn btn-link" onclick="dt_reset('access_log')">
                        {$lang.label.reset_default}
                    </a>
                </div>
            </div>
        </div>
    </form>
    <hr>
    {if $dt.rows}
        <div class="table-responsive">
            <div class="dataTables_wrapper dt-bootstrap no-footer">
                <table class="table table-striped dataTable footable">
                    <thead>
                        <tr>
                            <th onclick="location.href='{$admin_url}/access_log/?{'sort'|bind_query:'date'}'"
                                class="{($dt.sort_by=='date')?{'sorting_'|cat:$dt.sort_order}:'sorting'}">
                                Date
                            </th>
                            <th>{$lang.label.username}</th>
                            <th>{$lang.label.ip}</th>
                            {if $access_type == 'staff'}
                                <th>{$lang.label.type}</th>
                            {/if}
                            <th>{$lang.label.status}</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach $dt.rows as $row}
                            <tr>
                                <td width="25%">{$row.date|dtformat:'d-M-Y H:i:s'}</td>
                                <td>
                                    {if $row.type == 'member'}
                                        <a href="{$admin_url}/users/{$row.user_id}/profile"
                                           data-toggle="tooltip"
                                           title="{$lang.label.manage} {$lang.label.user}">{$row.username}</a>
                                    {else}
                                        {$row.username}
                                    {/if}
                                </td>
                                <td width="22%">
                                    {$row.ip}
                                </td>
                                {if $access_type == 'staff'}
                                    <td>
                                        {$row.type|strtoupper}
                                    </td>
                                {/if}
                                <td width="10%" class="text-center">
                                    <span class="text-{$row.status}">{$row.status|ucfirst}</span>
                                </td>
                            </tr>
                        {/foreach}
                    </tbody>
                </table>
                {include file="pagination.tpl" page_link="access_log"}
            </div>
        </div>
    {else}
        <div class="alert alert-warning">
            <i class="fa fa-exclamation-triangle"></i> {$lang.error.no_data_found}
        </div>
    {/if}
{/block}