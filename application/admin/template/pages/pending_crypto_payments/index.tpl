{block name="page_content"}
    <form class="form-inline form-filter" name="pending_crypto_payments" id="pending_crypto_payments" method="get"
          action="{$admin_url}/pending_crypto_payments">
        <div class="row">
            <div class="col-md-12">
                <h5>{$lang.label.filter}</h5>
                <div class="form-group">
                    <label for="id" class="control-label">{$lang.label.payment_id}</label>
                    <input type="text" name="id" id="id"
                           class="form-control input-sm" value="{$dt.filter.id}">
                </div>
                <div class="form-group">
                    <label for="username" class="control-label">{$lang.label.username}</label>
                    <input type="text" name="username" id="username"
                           class="form-control input-sm" value="{$dt.filter.username}">
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
                    <label for="status" class="control-label">{$lang.label.status}</label>
                    <select name="status" id="status" class="form-control input-sm">
                        <option value="">-- ANY --</option>
                        <option value="inactive" {($dt.filter.status=='inactive')?'selected':''}>
                            Inactive
                        </option>
                        <option value="waiting" {($dt.filter.status=='waiting')?'selected':''}>
                            Waiting
                        </option>
                        <option value="underpaid" {($dt.filter.status=='underpaid')?'selected':''}>
                            Underpaid
                        </option>
                        <option value="completed" {($dt.filter.status=='completed')?'selected':''}>
                            Completed
                        </option>
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
                            onclick="dt_filter('pending_crypto_payments')">
                        {$lang.label.filter}
                    </button>
                    <a href="javascript:void(0)" class="btn btn-link" onclick="dt_reset('pending_crypto_payments')">
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
                            <th onclick="location.href='{$admin_url}/pending_crypto_payments?{'sort'|bind_query:'date'}'"
                                class="{($dt.sort_by=='date')?{'sorting_'|cat:$dt.sort_order}:'sorting'}">{$lang.label.date}</th>
                            <th>{$lang.label.username}</th>
                            <th class="text-right">{$lang.label.amount}</th>
                            <th></th>
                            <th>{$lang.label.transaction_info}</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach $dt.rows as $row}
                            {if $row.transaction_data}
                                {assign var="ext" value=unserialize($row.transaction_data)}
                            {/if}
                            <tr>
                                <td>
                                    {$row.date|dtformat:'d-M-Y H:i:s'}
                                </td>
                                <td width="22%">
                                    <a href="{$admin_url}/users/{$row.user_id}/profile"
                                       data-toggle="tooltip"
                                       title="{$lang.label.manage} {$lang.label.user}" class="color-inherit">{$row.username}</a>
                                    <small class="block">{$ext.description}</small>
                                </td>
                                <td align="right">
                                    <span style="font-weight: 600">{$row.payment_amount|truncdec:8}</span>
                                    <span class="text-muted">{$row.curr_nick|strtoupper}</span>
                                    <small class="block">{$lang.label.confirmations}: <b
                                                class="text-success">{$row.confirmations}</b></small>
                                </td>
                                <td>
                                    <a href="{$admin_url}/payment_gateways" data-toggle="tooltip"
                                       title="Manage Payment Gateways"><img
                                                src="{$admin_assets}/assets/img/processors/{$row.icon}"/>
                                    </a>
                                </td>
                                <td style="word-break: break-all">
                                    {if $row.pay_status!='inactive'}
                                        <small class="block"><span class="text-muted">TX ID:</span> {$row.txid}</small>
                                    {/if}
                                    <small class="block"><span class="text-muted">{$lang.label.address}:</span> {$row.extra}</small>
                                    <small class="block"><span class="text-muted">{$lang.label.payment_id}:</span> {$row.uid}</small>
                                </td>
                                <td class="text-center">
                                    <span class="label label-{$row.pay_status}">{$row.pay_status|ucfirst}</span>
                                    {if $row.pay_status!='completed'}
                                        <small class="block" style="margin-top: 10px"><a href="{$admin_url}/pending_crypto_payments/{$row.uid}/view" style="text-decoration: underline" class="text-warning">Manual Confirm</a></small>
                                    {/if}
                                </td>
                            </tr>
                        {/foreach}
                    </tbody>
                </table>
                {include file="pagination.tpl" page_link="pending_crypto_payments"}
            </div>
        </div>
    {else}
        <div class="alert alert-warning">
            <i class="fa fa-exclamation-triangle"></i> {$lang.error.no_data_found}
        </div>
    {/if}
{/block}