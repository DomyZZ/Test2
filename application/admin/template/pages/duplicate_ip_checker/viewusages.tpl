{block name="breadcrumb"}
    <li>
        <a href="{$admin_url}/duplicate_ip_checker">{$lang.breadcrumb.duplicate_ip_checker}</a>
    </li>
    <li class="active">{$lang.breadcrumb.view_usages}</li>
{/block}

{block name="page_content"}
    <form class="form-inline form-filter" name="view_usages" id="view_usages" method="get"
          action="{$admin_url}/duplicate_ip_checker/{$usage_ip}/view_usages">
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="username" class="control-label">{$lang.label.username}</label>
                        <input type="text" name="username" id="username"
                               class="form-control input-sm" value="{$dt.filter.username}">
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
                                onclick="dt_filter('view_usages')">
                            {$lang.label.filter}
                        </button>
                        <a href="javascript:void(0)" class="btn btn-link" onclick="dt_reset('view_usages')">
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
                            <th>
                                {$lang.label.username}
                            </th>
                            <th>
                                {$lang.label.last_access}
                            </th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach $dt.rows as $key=>$row}
                            <tr>
                                <td>
                                    {if $row.type=='member'}
                                        <a href="{$admin_url}/users/{$row.user_id}/profile"
                                           data-toggle="tooltip" data-placement="right"
                                           title="{$lang.label.manage} {$lang.label.user}">{$row.username}</a>
                                    {else}
                                        {$row.username}
                                    {/if}
                                </td>
                                <td>
                                    {$row.date|dtformat:'d-M-Y H:i:s'}
                                </td>
                                <td width="12%">
                                    <span class="label label-{$row.status} label-block">{$row.status|ucfirst}</span>
                                </td>
                            </tr>
                        {/foreach}
                    </tbody>
                </table>
                {include file="pagination.tpl" page_link="duplicate_ip_checker/{$usage_ip}/view_usages"}
            </div>
        </div>
    {else}
        <div class="alert alert-warning">
            <i class="fa fa-exclamation-triangle"></i> {$lang.error.no_data_found}
        </div>
    {/if}
{/block}