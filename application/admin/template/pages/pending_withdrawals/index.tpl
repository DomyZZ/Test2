{block name="page_content"}
    <form class="form-inline form-filter" name="pending_withdrawals" id="pending_withdrawals" method="get">
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
                            onclick="dt_filter('pending_withdrawals')">
                        {$lang.label.filter}
                    </button>
                    <a href="javascript:void(0)" class="btn btn-link" onclick="dt_reset('pending_withdrawals')">
                        {$lang.label.reset_default}
                    </a>
                </div>
            </div>
        </div>
    </form>
    <hr>
    {include file="form_status.tpl" form="pending_withdrawals_action"}
    {if $dt.rows}
        <form class="form-filter" name="pending_withdrawals_action" id="pending_withdrawals_action" method="post"
              action="{$admin_url}/pending_withdrawals/action">
            <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
            {if $logged_id == 1 || isset($permissions['pending_withdrawals_action'])}
            <div class="row">
                <div class="col-md-12">
                    <h5>{$lang.label.actions}</h5>
                    <div class="form-inline">
                        <div class="form-group">
                            <label>{$lang.label.with_selected}: </label>
                        </div>
                        <div class="form-group">
                            <div class="form-control-static">
                                <a href="javascript:void(0)" class="text-success"
                                   onclick="selected_action('pending_withdrawals_action', 'mass_pay')"><i
                                            class="fa fa-check"></i> {$lang.label.mass_pay}</a>
                                |
                                <a href="javascript:void(0)" class="text-danger"
                                   onclick="selected_action('pending_withdrawals_action', 'delete')"><i
                                            class="fa fa-times-circle"></i> {$lang.label.cancel_withdrawal}</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
            {/if}
            <div class="table-responsive">
                <div class="dataTables_wrapper dt-bootstrap no-footer">
                    <table class="table table-striped dataTable footable">
                        <thead>
                            <tr>
                                <th width="2%" class="text-center">
                                    <input type="checkbox" name="select_all" id="select_all"
                                           value="true">
                                </th>
                                <th>{$lang.label.id}</th>
                                <th onclick="location.href='{$admin_url}/pending_withdrawals?{'sort'|bind_query:'date'}'"
                                    class="{($dt.sort_by=='date')?{'sorting_'|cat:$dt.sort_order}:'sorting'}">{$lang.label.date}
                                </th>
                                <th>
                                    {$lang.label.username}
                                </th>
                                <th onclick="location.href='{$admin_url}/pending_withdrawals?{'sort'|bind_query:'amount'}'"
                                    class="text-right {($dt.sort_by=='amount')?{'sorting_'|cat:$dt.sort_order}:'sorting'}">{$lang.label.amount}</th>
                                <th class="text-right">{$lang.label.payment_amount}</th>
                                <th></th>
                                <th>{$lang.label.recipient}</th>
                                    {if $logged_id == 1 || isset($permissions['pending_withdrawals_action']) || isset($permissions['pending_withdrawals_manual_pay'])}
                                <th width="8%"></th>
                                {/if}
                            </tr>
                        </thead>
                        <tbody>
                            {foreach $dt.rows as $row}
                                {assign var="ext" value=unserialize($row.description_2)}
                                <tr id="row_{$row.tid}" {($row.user_stat=='active' && $ext.auto==0 && $row.p_type=='system' && $row.account)?'':'class="danger"'}>
                                    <td width="2%" class="text-center">
                                        {if $row.user_stat=='active' && $ext.auto==0 && $row.p_type=='system' && $row.account}
                                            <input type="checkbox" name="ids[]"
                                                   onclick="selected_row('pending_withdrawals_{$row.tid}','row_{$row.tid}')"
                                                   id="pending_withdrawals_{$row.tid}" class="row-check"
                                                   value="{$row.tid}">
                                        {/if}
                                    </td>
                                    <td>
                                        <a href="{$admin_url}/pending_withdrawals/{$row.uid}/manual_pay"
                                           data-toggle="tooltip"
                                           title="{$lang.label.manual_pay}">{$row.uid}</a>
                                    </td>
                                    <td>{$row.date|dtformat:'d-M-Y H:i:s'}</td>
                                    <td>
                                        <a href="{$admin_url}/users/{$row.user_id}/profile"
                                           data-toggle="tooltip"
                                           title="{$lang.label.manage} {$lang.label.user}" class="color-inherit"
                                           style="font-weight: 600">{$row.username}</a>
                                        {if $row.user_stat != 'active'}
                                            <small class="block">{$lang.label.status}: <b
                                                        class="text-{$row.user_stat}">{$row.user_stat|ucfirst}</b>
                                            </small>
                                        {/if}
                                    </td>
                                    <td align="right">
                                        {$curr_symbol}{$row.amount|truncdec:$curr_decp}
                                    </td>
                                    <td align="right">
                                        <b class="text-success">{$ext.pay_amount}</b>
                                        <small style="font-weight: 600">{$row.curr_nick|strtoupper}</small>
                                    </td>
                                    <td width="2%">
                                        <a href="{$admin_url}/payment_gateways" data-toggle="tooltip"
                                           title="Manage Payment Gateways"><img
                                                    src="{$admin_assets}/assets/img/processors/{$row.icon}"/>
                                        </a>
                                    </td>
                                    <td>
                                        {if $row.account}
                                            {if $row.p_type=='system'}
                                                <small style="font-weight: 600">{$row.account}</small>
                                            {else}
                                                {foreach $row.account as $key=>$val}
                                                    <small style="float: left; margin-left: 5px; display: block;">{$val.name}
                                                        :
                                                        <span style="font-weight: 600">{$val.value}</span>
                                                    </small>
                                                    <br/>
                                                {/foreach}
                                            {/if}
                                        {else}
                                            <small class="text-danger">-- Not set --</small>
                                        {/if}
                                    </td>
                                    {if $logged_id == 1 || isset($permissions['pending_withdrawals_action']) || isset($permissions['pending_withdrawals_manual_pay'])}
                                    <td class="text-center" width="8%">
                                         {if $logged_id == 1 || isset($permissions['pending_withdrawals_manual_pay'])}
                                        <a href="{$admin_url}/pending_withdrawals/{$row.uid}/manual_pay"
                                           data-toggle="tooltip" data-placement="left"
                                           title="{$lang.label.manual_pay}" class="btn btn-sm btn-info">
                                            <i
                                                    class="fa fa-credit-card"></i>
                                        </a>
                                                    {/if}
                                        
                                         {if $logged_id == 1 || isset($permissions['pending_withdrawals_action'])}
                                        <a href="{$admin_url}/pending_withdrawals/{$row.uid}/delete"
                                           data-toggle="tooltip" data-placement="left"
                                           onclick="return confirm('{$lang.msg.confirm_pending_withdrawals_delete}');"
                                           title="{$lang.label.delete}" class="btn btn-sm btn-danger"><i
                                                    class="fa fa-trash-o"></i></a>
                                                    {/if}
                                    </td>
                                    {/if}
                                </tr>
                            {/foreach}
                        </tbody>
                        <tfoot>
                            <tr>
                                <td colspan="9" align="right">Page Total:
                                    <b>{$curr_symbol}{$dt.period_amount}</b>
                                                              (Total:
                                    <b>{$curr_symbol}{$dt.total_amount}</b>)
                                </td>
                            </tr>
                        </tfoot>
                    </table>
                    {include file="pagination.tpl" page_link="pending_withdrawals"}
                </div>
            </div>
        </form>
    {else}
        <div class="alert alert-warning">
            <i class="fa fa-exclamation-triangle"></i> {$lang.error.no_data_found}
        </div>
    {/if}
{/block}