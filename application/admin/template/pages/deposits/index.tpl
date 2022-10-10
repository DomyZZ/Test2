{block name="page_content"}
    <form class="form-inline form-filter" name="deposits" id="deposits" method="get">
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
                    <label for="package_id" class="control-label">{$lang.label.packages}</label>
                    <select name="package_id" id="package_id" class="form-control input-sm"
                            style="width: 130px">
                        <option value="">-- ANY --</option>
                        {foreach $packages as $value}
                            <option value="{$value.id}" {($dt.filter.package_id==$value.id)?'selected':''}>{$value.name}</option>
                        {/foreach}
                    </select>
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
                    <label for="startdate"
                           class="control-label">{$lang.label.start_date}</label>
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
                            onclick="dt_filter('deposits')">
                        {$lang.label.filter}
                    </button>
                    <a href="javascript:void(0)" class="btn btn-link" onclick="dt_reset('deposits')">
                        {$lang.label.reset_default}
                    </a>
                </div>
            </div>
        </div>
    </form>
    <hr>
    <br/>
    <br/>
    <!-- Nav tabs -->
    <ul class="nav nav-tabs">
        <li {($dep_status == "active")?'class="active"':""}>
            <a href="{$admin_url}/deposits?{'attach-query'|bind_query:''}" class="label-success">{$lang.label.active}</a>
        </li>
        <li {($dep_status == "expired")?'class="active"':""}>
            <a href="{$admin_url}/deposits/expired?{'attach-query'|bind_query:''}" class="label-danger">{$lang.label.expired}</a>
        </li>
    </ul>
    <!-- Tab panels -->
    <div class="tab-content">
        <div class="tab-pane fade in active" id="{$dep_status}">
            <div class="panel-body">
                {if $dt.rows}
                    <div class="table-responsive">
                        <div class="dataTables_wrapper dt-bootstrap no-footer">
                            <table class="table table-striped dataTable footable">
                                <thead>
                                    <tr>
                                        <th>{$lang.label.id}</th>
                                        <th>{$lang.label.username}</th>
                                        <th>{$lang.label.package}</th>
                                        <th onclick="location.href='{$admin_url}/deposits?{'sort'|bind_query:'date'}'"
                                            class="{($dt.sort_by=='date')?{'sorting_'|cat:$dt.sort_order}:'sorting'}">{$lang.label.deposit_date}</th>
                                        <th class="text-right">{$lang.label.amount}
                                            <span class="text-muted">({$curr_symbol})</span>
                                        </th>
                                        <th class="text-right">{$lang.label.earnings}
                                            <span class="text-muted">({$curr_symbol})</span>
                                        </th>
                                        <th></th>
                                        <th data-breakpoints="all">{$lang.label.last_paid_on}</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    {foreach $dt.rows as $row}
                                        <tr>
                                            <td width="20%">
                                                {if $dep_status=='active'}
                                                    <a href="{$admin_url}/deposits/{$row.uid}/edit"
                                                       class="text-bold"
                                                       data-toggle="tooltip"
                                                       title="{$lang.label.edit} {$lang.label.deposit}">{$row.uid}</a>
                                                {else}
                                                    {$row.uid}
                                                {/if}
                                            </td>
                                            <td>
                                                <a href="{$admin_url}/users/{$row.user_id}/profile"
                                                   data-toggle="tooltip"
                                                   title="{$lang.label.manage} {$lang.label.user}" class="color-inherit">{$row.username}</a>
                                            </td>
                                            <td>{$row.package_name}</td>
                                            <td width="15%">{$row.start_date|dtformat:'d-M-Y H:i:s'}</td>
                                            <td class="text-right">
                                                {$row.amount|truncdec:$curr_decp}
                                            </td>
                                            <td class="text-right" style="font-weight: 600">
                                                {($row.earnings > 0)?($row.earnings|truncdec:$curr_decp):'--'}
                                            </td>
                                            <td width="5%">
                                                <a href="{$admin_url}/payment_gateways" data-toggle="tooltip"
                                                   title="Manage Payment Gateways"><img
                                                            src="{$admin_assets}/assets/img/processors/{$row.icon}"/>
                                                </a>
                                            </td>
                                            <td>
                                                {($row.lastpay_date !=0)?($row.lastpay_date|dtformat:'d-M-Y H:i:s'):'--'}
                                            </td>
                                        </tr>
                                    {/foreach}
                                </tbody>
                                {if $dep_status=='active'}
                                    <tfoot>
                                        <tr>
                                            <td colspan="8" align="right">{$lang.label.page_total}:
                                                <b>{$curr_symbol}{$dt.period_amount}</b> ({$lang.label.total}:
                                                <b>{$curr_symbol}{$dt.total_amount}</b>)
                                            </td>
                                        </tr>
                                    </tfoot>
                                {/if}
                            </table>
                            {include file="pagination.tpl" page_link="deposits"}
                        </div>
                    </div>
                {else}
                    <div class="alert alert-warning">
                        <i class="fa fa-exclamation-triangle"></i> {$lang.error.no_data_found}
                    </div>
                {/if}
            </div>
        </div>
    </div>
{/block}