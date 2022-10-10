{block name="breadcrumb"}
    <li>
        <a href="{$admin_url}/pending_withdrawals">{$lang.breadcrumb.pending_withdrawals}</a>
    </li>
    <li class="active">{$lang.breadcrumb.payment_status}</li>
{/block}

{block name="page_content"}
    <div class="table-responsive">
        <table class="table table-striped dataTable footable">
            <thead>
                <tr>
                    <th></th>
                    <th>{$lang.label.id}</th>
                    <th>{$lang.label.account}</th>
                    <th>{$lang.label.payment_amount}</th>
                    <th></th>
                    <th>{$lang.label.batch}</th>
                    <th>{$lang.label.error}</th>
                </tr>
            </thead>
            <tbody>
                {foreach $messages as $row}
                    <tr class="{($row.status=='success')?'success':'danger'}">
                        <td style="font-size: 20px">
                            {if $row.status=='success'}
                                <span class="text-success"><i class="fa fa-check-circle-o"></i></span>
                            {else}
                                <span class="text-danger"><i class="fa fa-times-circle-o"></i></span>
                            {/if}
                        </td>
                        <td style="font-weight: 600">
                            <a href="{$admin_url}/transactions/{$row.uid}/view" data-toggle="tooltip"
                               title="View Transaction" class="color-inherit">{$row.uid}</a>
                        </td>
                        <td style="word-break: break-all">
                            {$row.account}
                        </td>
                        <td class="text-right" style="font-weight: 600">
                            <span class="text-bold {($row.status=='success')?'text-success':'text-danger'}">{$row.pay_amount}</span> {$row.proc_curr|strtoupper}
                        </td>
                        <td width="2%">
                            <img data-toggle="tooltip" title="{$row.proc_name}"
                                 src="{$admin_assets}/assets/img/processors/{$row.proc_icon}"/>
                        </td>
                        <td style="word-break: break-all;font-weight: 600">
                            {$row.batch}
                        </td>
                        <td class="text-danger text-bold">
                            {$row.msg}
                        </td>
                    </tr>
                {/foreach}
            </tbody>
        </table>
    </div>
{/block}