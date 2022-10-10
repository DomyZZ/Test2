{block name="page_content"}
    {if $logged_id == 1 || isset($permissions['packages_add'])}
        <a href="{$admin_url}/packages/add"><i
                    class="fa fa-plus"></i> {$lang.label.add_package}</a>
        <hr>
    {/if}
    {include file="form_status.tpl" form="packages_action"}
    {if $packages}
        <div class="table-responsive">
            <div class="dataTables_wrapper dt-bootstrap no-footer">
                <table class="table table-striped dataTable">
                    <thead>
                        <tr>
                            {if count($packages) > 1}
                                <th width="5%"></th>
                            {/if}
                            <th width="5%"></th>
                            <th style="border-right: 0">{$lang.label.name}</th>
                            <th></th>
                            <th>{$lang.label.deposit_amount}</th>
                            <th>{$lang.label.earn_exp_details}</th>
                            <th width="8%"></th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach $packages as $package}
                            <tr>
                                {if count($packages) > 1}
                                    <td class="text-center" width="5%">
                                        {if $package.position > $min_position}
                                            <a href="{$admin_url}/packages/{$package.id}/position/up">
                                                <i class="fa fa-arrow-up"></i>
                                            </a>
                                        {/if}
                                        {if $package.position != $max_position}
                                            <a href="{$admin_url}/packages/{$package.id}/position/down">
                                                <i class="fa fa-arrow-down"></i>
                                            </a>
                                        {/if}
                                    </td>
                                {/if}
                                <td class="text-center">
                                    <span class="text-{$package.status}">{$package.status|ucfirst}</span>
                                </td>
                                <td style="border-right: 0">
                                    <a href="{$admin_url}/packages/{$package.id}/edit"
                                       data-toggle="tooltip"
                                       title="{$lang.label.edit} {$lang.label.package}"
                                       style="text-decoration: underline !important;">
                                        <b>{$package.name}</b>
                                    </a>
                                    {if $package.closed}
                                        <small>
                                            <sup class="label label-danger"
                                                 style="display: inline !important; width: auto !important;">{$lang.label.closed}</sup>
                                        </small>
                                    {/if}
                                    <small class="block">
                                        {$lang.label.total_deposited}:
                                        {if $deposits[$package.id]['total_depositors'] > 0}
                                            {$deposits[$package.id]['total_depositors']} ( <b>{$curr_symbol}{$deposits[$package.id]['total_dep_amount']}</b> )
                                        {else}
                                            --
                                        {/if}
                                    </small>
                                    <small class="block">
                                        {$lang.label.active_deposits}:
                                        {if $deposits[$package.id]['active_depositors'] > 0}
                                            {$deposits[$package.id]['active_depositors']} ( <b>{$curr_symbol}{$deposits[$package.id]['active_dep_amount']}</b> )
                                        {else}
                                            --
                                        {/if}
                                    </small>
                                </td>
                                <td width="9%" align="right">
                                    <a data-toggle="tooltip"
                                       title="{$lang.label.view_plan_rates}"
                                       href="javascript:void(0)" id="view_plans_{$package.id}"
                                       onclick="show_plans({$package.id})">
                                        {$lang.label.view_rates} <i class="fa fa-angle-down"></i>
                                    </a>
                                </td>
                                <td>
                                    {$curr_symbol}{$plminmax[$package.id]['minamnt']}
                                    - {($plminmax[$package.id]['minmaxamnt'] > 0)?{$curr_symbol|cat:$plminmax[$package.id]['maxamnt']}:'∞'}
                                </td>
                                <td>
                                    {$total_return[$package.id]}
                                    {if $package['return_principal']}
                                        <small class="block">
                                            + <span class="font-600">Principal returned</span>
                                        </small>
                                    {/if}
                                </td>
                                <td align="center">
                                    <a href="{$admin_url}/packages/{$package.id}/edit"
                                       data-toggle="tooltip" data-placement="left"
                                       title="{$lang.label.edit}"
                                       class="btn btn-sm btn-info"><i
                                                class="fa fa-pencil"></i></a>
                                    {if $logged_id == 1 || isset($permissions['packages_delete'])}
                                        <a href="{$admin_url}/packages/{$package.id}/delete"
                                           data-toggle="tooltip" data-placement="left"
                                           title="{$lang.label.delete}"
                                           onclick="return confirm('{$lang.msg.confirm_package_delete}');"
                                           class="btn btn-sm btn-danger"><i class='fa fa-trash-o'></i>
                                        </a>
                                    {/if}
                                </td>
                            </tr>
                            <tr align="center" id="plans_{$package.id}" class="hide">
                                <td colspan="7" style="padding: 20px 0;">
                                    <table class="table table-hover" style="width:50% !important; margin-bottom: 0">
                                        <thead>
                                            <tr class="thead-bg-1">
                                                <td class="text-bold">{$lang.label.amount}({$lang.label.min}-{$lang.label.max})
                                                </td>
                                                <td class="text-bold">
                                                    {$lang.label.rate_interest}
                                                </td>
                                                <td class="text-bold">{$lang.label.bonus}</td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            {foreach $packageplans[$package.id] as $pgplan}
                                                <tr>
                                                    <td>
                                                        {$curr_symbol}{$pgplan.min_amount}
                                                        - {($pgplan.max_amount==''||$pgplan.max_amount==0||$pgplan.max_amount==null)?'∞':{$curr_symbol|cat:$pgplan.max_amount}}
                                                    </td>
                                                    <td>
                                                        {if $package.rate_type=='fixed'}
                                                            {$pgplan.rate}%
                                                        {else}
                                                            {$pgplan.rate}% - {$pgplan.max_rate}%
                                                        {/if}
                                                    </td>
                                                    <td>
                                                        {if $pgplan.bonus_type=='solid'}{$curr_symbol}{/if}{$pgplan.bonus_value}{if $pgplan.bonus_type=='percentage'}%{/if}
                                                    </td>
                                                </tr>
                                                {foreachelse}
                                                <tr>
                                                    <td colspan="4" align="center">{$lang.error.no_plans_found}</td>
                                                </tr>
                                            {/foreach}
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        {/foreach}
                    </tbody>
                </table>
            </div>
        </div>
    {else}
        <div class="alert alert-warning">
            <i class="fa fa-exclamation-triangle"></i> {$lang.error.no_packages_found}
        </div>
    {/if}
{/block}

{block name="foo" append}
{literal}
    <script type="text/javascript">
        function show_plans(id) {
            if ($('#plans_' + id).hasClass('hide')) {
                $('#plans_' + id).removeClass('hide');
                $('#view_plans_' + id + ' > i').removeClass('fa-angle-down');
                $('#view_plans_' + id + ' > i').addClass('fa-angle-up');
            }
            else {
                $('#plans_' + id).addClass('hide');
                $('#view_plans_' + id + ' > i').removeClass('fa-angle-up');
                $('#view_plans_' + id + ' > i').addClass('fa-angle-down');
            }
        }
    </script>
{/literal}
{/block}