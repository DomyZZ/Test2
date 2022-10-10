{block name="page_content"}
    <form class="form-inline form-filter" name="transactions" id="transactions" method="get"
          action="{$admin_url}/transactions">
            <div class="row">
                <div class="col-md-12">
                    <h5>{$lang.label.filter}</h5>
                    <div class="form-group">
                        <label for="id" class="control-label">{$lang.label.id}</label>
                        <input type="text" name="id" id="id"
                               class="form-control input-sm" value="{$dt.filter.id}">
                    </div>
                    <div class="form-group">
                        <label for="username" class="control-label">{$lang.label.username}</label>
                        <input type="text" name="username" id="username"
                               class="form-control input-sm" value="{$dt.filter.username}">
                    </div>
                    <div class="form-group">
                        <label for="minamount" class="control-label">{$lang.label.min_amount}</label>
                        <input type="text" name="minamount" id="minamount"
                               class="form-control input-sm" placeholder="Min"
                               value="{$dt.filter.minamount}">
                    </div>
                    <div class="form-group">
                        <label for="maxamount" class="control-label">{$lang.label.max_amount}</label>
                        <input type="text" name="maxamount" id="maxamount"
                               class="form-control input-sm" placeholder="Max"
                               value="{$dt.filter.maxamount}">
                    </div>
                            <div class="form-group">
                                <label for="processor" class="control-label">{$lang.label.processor}</label>
                                <select name="processor" id="processor" class="form-control input-sm">
                                    <option value="">-- ANY --</option>
                                    {foreach $processors as $value}
                                        <option value="{$value.nick}" {($dt.filter.processor==$value.nick)?'selected':''}>{$value.name}</option>
                                    {/foreach}
                                </select>
                            </div>
                    <div class="form-group">
                        <label for="type" class="control-label">{$lang.label.type}</label>
                        <select name="type" id="type" class="form-control input-sm">
                            <option value="">-- ANY --</option>
                            {foreach $all_types as $key=>$value}
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
                                onclick="dt_filter('transactions')">
                            {$lang.label.filter}
                        </button>
                        <a href="javascript:void(0)" class="btn btn-link" onclick="dt_reset('transactions')">
                            {$lang.label.reset_default}
                        </a>
                        <button type="submit" class="btn btn-sm btn-purple pull-right"
                                onclick="dt_filter('transactions', 'csv')">
                            {$lang.label.export_csv}
                        </button>
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
                            <th onclick="location.href='{$admin_url}/transactions?{'sort'|bind_query:'date'}'"
                                class="{($dt.sort_by=='date')?{'sorting_'|cat:$dt.sort_order}:'sorting'}">{$lang.label.date}</th>
                            <th>{$lang.label.username}</th>
                            <th>{$lang.label.type}</th>
                            <th>{$lang.label.description}</th>
                            <th class="text-right">{$lang.label.amount}</th>
                            <th></th>
                            <th data-breakpoints="all">{$lang.label.id}</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach $dt.rows as $row}
                            <tr>
                                <td>{$row.date|dtformat:'d-M-Y H:i:s'}</td>
                                <td>
                                    <a href="{$admin_url}/users/{$row.user_id}/profile"
                                       data-toggle="tooltip"
                                       title="{$lang.label.manage} {$lang.label.user}" class="color-inherit">{$row.username}</a>
                                </td>
                                <td>
                                    {$all_types[$row.type]}
                                </td>
                                <td>
                                    {$row.description}
                                </td>
                                <td width="15%" align="right">
                                                    <span class="{($row.amount>0)?'text-success':'text-danger'}">{if $row.amount>0}+{else}-{/if}
                                                        <b>{$curr_symbol}{$row.amount|abs|truncdec:$curr_decp}</b></span>
                                </td>
                                <td width="5%">
                                    <a href="{$admin_url}/payment_gateways" data-toggle="tooltip"
                                       title="Manage Payment Gateways"><img
                                                src="{$admin_assets}/assets/img/processors/{$row.icon}"/>
                                    </a>
                                </td>
                                <td>
                                    <a href="{$admin_url}/transactions/{$row.uid}/view"
                                       data-toggle="tooltip"
                                       title="{$lang.label.view} {$lang.label.transaction}">{$row.uid}</a>
                                </td>
                            </tr>
                        {/foreach}
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="7" align="right">{$lang.label.page_total}:
                                <b>{$curr_symbol}{$dt.period_amount}</b> ({$lang.label.total}:
                                <b>{$curr_symbol}{$dt.total_amount}</b>)
                            </td>
                        </tr>
                    </tfoot>
                </table>
                {include file="pagination.tpl" page_link="transactions"}
            </div>
        </div>
    {else}
        <div class="alert alert-warning">
            <i class="fa fa-exclamation-triangle"></i> {$lang.error.no_data_found}
        </div>
    {/if}
{/block}