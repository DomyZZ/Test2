{block name="page_subtitle"}<small>(#{$deposit.uid})</small>{/block}

{block name="breadcrumb"}
    <li>
        <a href="{$admin_url}/deposits">{$lang.breadcrumb.deposits}</a>
    </li>
    <li class="active">{$lang.breadcrumb.edit}</li>
{/block}

{block name="page_content"}
    <form class="form-horizontal" name="edit_deposit" id="edit_deposit" method="post">
        <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
        {include file="form_status.tpl" form="edit_deposit"}
        <div class="row">
            <div class="col-sm-12 col-md-8">
                <div class="table-responsive">
                    <table class="table table-striped-left">
                        <tbody>
                            <tr>
                                <td width="30%">{$lang.label.deposit_date}</td>
                                <td class="text-muted">
                                    <i>{$deposit.start_date|dtformat:'jS M, Y H:i:s'}</i>
                                </td>
                            </tr>
                            <tr>
                                <td>{$lang.label.lastpay_date}</td>
                                <td class="text-muted">
                                    {if $deposit.lastpay_date}
                                        <i>{$deposit.lastpay_date|dtformat:'jS M, Y H:i:s'}</i>
                                    {else}
                                        --
                                    {/if}
                                </td>
                            </tr>
                            <tr>
                                <td width="30%">{$lang.label.nextpay_date}</td>
                                <td class="text-muted">
                                    <i>{$deposit.nextpay_date|dtformat:'jS M, Y H:i:s'}</i>
                                </td>
                            </tr>
                            <tr>
                                <td>{$lang.label.username}</td>
                                <td>
                                    <a href="{$admin_url}/users/{$deposit.user_id}/profile"
                                       data-toggle="tooltip"
                                       title="{$lang.label.manage} {$lang.label.user}" class="color-inherit">{$deposit.username}</a>
                                </td>
                            </tr>
                            <tr>
                                <td>{$lang.label.deposit_package}</td>
                                <td>
                                    <select name="package_id" id="package_id" class="form-control input-sm">
                                        {foreach $packages as $value}
                                            <option value="{$value.id}" {($deposit.package_id==$value.id)?'selected':''}>{$value.name}</option>
                                        {/foreach}
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>{$lang.label.processor}</td>
                                <td>
                                    <a href="{$admin_url}/payment_gateways">
                                        <img src="{$admin_assets}/assets/img/processors/{$deposit.proc_icon}"
                                             data-toggle="tooltip"
                                             title="{$deposit.proc_name}"/>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>{$lang.label.original_deposit_amount}</td>
                                <td>{$curr_symbol}{$deposit.original_dep_amount}</td>
                            </tr>
                            <tr>
                                <td>{$lang.label.current_deposit_amount}</td>
                                <td>{$curr_symbol}{$deposit.actual_dep_amount}</td>
                            </tr>
                            <tr>
                                <td>{$lang.label.total_released_amount}</td>
                                <td>
                                    {if $deposit.total_released_amount}
                                        {$curr_symbol}{$deposit.total_released_amount}
                                    {else}
                                        --
                                    {/if}
                                </td>
                            </tr>
                            <tr>
                                <td>{$lang.label.earnings}</td>
                                <td>{$curr_symbol}{$deposit.earnings}</td>
                            </tr>
                            <tr>
                                <td>{$lang.label.release_amount}</td>
                                <td>
                                    <input type="text" class="form-control input-md-4 input-sm"
                                           name="release_amount"
                                           id="release_amount" value="0"/>
                                </td>
                            </tr>
                            {if $deposit.allow_compounding}
                                <tr>
                                    <td>{$lang.label.compounding}</td>
                                    <td>
                                        {if $deposit['comp_val_type'] == 'ranged'}
                                            <div class="input-group">
                                                <input type="text" class="form-control input-md-4 input-sm"
                                                       name="compound"
                                                       id="compound" value="{$deposit.compound}"/> <span
                                                        class="input-group-addon text-bold">%</span> <span
                                                        class="input-group-addon">( {$deposit.comp_ranged_val_min}
                                                                                  - {$deposit.comp_ranged_val_max}
                                                                                  )</span>
                                            </div>
                                        {elseif $deposit['comp_val_type'] == 'solid'}
                                            <select class="form-control input-sm" name="compound" id="compound">
                                                {foreach $deposit['comp_solid_vals'] as $value}
                                                    <option value="{$value}" {($deposit.compound==$value)?'selected':''}>{$value}
                                                        %
                                                    </option>
                                                {/foreach}
                                            </select>
                                        {/if}
                                    </td>
                                </tr>
                            {/if}
                            <tr>
                                <td>{$lang.label.status}</td>
                                <td>
                                    <select class="form-control input-sm" name="status" id="status">
                                        <option value="active" {($deposit.dep_status=='active')?'selected':''}>
                                            Active
                                        </option>
                                        <option value="expired" {($deposit.dep_status=='expired')?'selected':''}>
                                            Expired
                                        </option>
                                    </select>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <button type="submit" class="btn btn-primary">{$lang.label.update}</button>
            </div>
        </div>
    </form>
{/block}