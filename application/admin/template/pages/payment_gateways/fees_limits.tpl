{block name="breadcrumb"}
    <li>
        <a href="{$admin_url}/payment_gateways">{$lang.breadcrumb.payment_gateways}</a>
    </li>
    <li class="active">{$lang.breadcrumb.fees_limits}</li>
{/block}

{block name="page_content"}
    <form class="form-inline form-fees" name="fees_limits" id="fees_limits" method="post">
        <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
        {include file="form_status.tpl" form="fees_limits"}
        <div class="table-responsive">
            <table class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th></th>
                        <th class="text-center">{$lang.label.deposit}
                            <small class="block text-muted">({$lang.label.limits})</small>
                        </th>
                        <th class="text-center">{$lang.label.deposit}
                            <small class="block text-muted">({$lang.label.fees})</small>
                        </th>
                        <th class="text-center">{$lang.label.withdrawal}
                            <small class="block text-muted">({$lang.label.limits})</small>
                        </th>
                        <th class="text-center">{$lang.label.withdrawal}
                            <small class="block text-muted">({$lang.label.fees})</small>
                        </th>
                    </tr>
                </thead>
                {foreach $processors as $proc}
                    {assign var="proc_settings" value=unserialize($proc.settings)}
                    <tr>
                        <td class="text-center" width="1%"><img src="{$admin_assets}/assets/img/processors/{$proc.icon}"
                                                                data-toggle="tooltip" title="{$proc.name}"/></td>
                        <td>
                            <div class="form-group">
                                <label class="control-label">{$lang.label.min} {$lang.label.deposit}</label>
                                <input type="text" name="{$proc.id}[deposit_min_amount]"
                                       class="form-control input-auto input-sm"
                                       id="set_deposit_min_amount_{$proc.id}"
                                       value="{($proc_settings.deposit_min_amount)?$proc_settings.deposit_min_amount:'0'}"
                                       placeholder="Min"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label">{$lang.label.max} {$lang.label.deposit}</label>
                                <input type="text" name="{$proc.id}[deposit_max_amount]"
                                       class="form-control input-auto input-sm"
                                       id="set_deposit_max_amount_{$proc.id}"
                                       value="{($proc_settings.deposit_max_amount)?$proc_settings.deposit_max_amount:'0'}"
                                       placeholder="Max"/>
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label class="control-label">{$lang.label.deposit} {$lang.label.fee}</label>
                                <input type="text" name="{$proc.id}[deposit_fee_percentage]"
                                       class="form-control input-sm"
                                       id="set_deposit_fee_percentage_{$proc.id}"
                                       value="{($proc_settings.deposit_fee_percentage)?$proc_settings.deposit_fee_percentage:'0'}"/>
                                <input type="text" name="{$proc.id}[deposit_fee_solid]"
                                       class="form-control input-sm"
                                       id="set_deposit_fee_solid_{$proc.id}"
                                       value="{($proc_settings.deposit_fee_solid)?$proc_settings.deposit_fee_solid:'0'}"/>
                                <small class="text-muted">(% + {$curr_symbol})</small>
                            </div>
                            <div class="form-group">
                                <label class="control-label">{$lang.label.min}/{$lang.label.max} {$lang.label.fee}</label>
                                <input type="text" name="{$proc.id}[deposit_min_fee]"
                                       class="form-control input-sm"
                                       id="set_deposit_min_fee_{$proc.id}"
                                       value="{($proc_settings.deposit_min_fee)?$proc_settings.deposit_min_fee:'0'}"
                                       placeholder="Min"/>
                                <input type="text" name="{$proc.id}[deposit_max_fee]"
                                       class="form-control input-sm"
                                       id="set_deposit_max_fee_{$proc.id}"
                                       value="{($proc_settings.deposit_max_fee)?$proc_settings.deposit_max_fee:'0'}"
                                       placeholder="Max"/>
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label class="control-label">{$lang.label.min} {$lang.label.withdraw}</label>
                                <input type="text" name="{$proc.id}[withdraw_min_amount]"
                                       class="form-control input-auto input-sm"
                                       id="set_withdraw_min_amount_{$proc.id}"
                                       value="{($proc_settings.withdraw_min_amount)?$proc_settings.withdraw_min_amount:'0'}"
                                       placeholder="Min"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label">{$lang.label.max} {$lang.label.withdraw}</label>
                                <input type="text" name="{$proc.id}[withdraw_max_amount]"
                                       class="form-control input-auto input-sm"
                                       id="set_withdraw_max_amount_{$proc.id}"
                                       value="{($proc_settings.withdraw_max_amount)?$proc_settings.withdraw_max_amount:'0'}"
                                       placeholder="Max"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label">{$lang.label.daily_limit}</label>
                                <input type="text" class="form-control input-sm"
                                       name="{$proc.id}[withdraw_daily_limit]"
                                       id="withdraw_daily_limit"
                                       value="{($proc_settings.withdraw_daily_limit)?$proc_settings.withdraw_daily_limit:'0'}"/>
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label class="control-label">{$lang.label.withdraw} {$lang.label.fee}</label>
                                <input type="text" name="{$proc.id}[withdraw_fee_percentage]"
                                       class="form-control input-sm"
                                       id="set_withdraw_fee_percentage_{$proc.id}"
                                       value="{($proc_settings.withdraw_fee_percentage)?$proc_settings.withdraw_fee_percentage:'0'}"/>
                                <input type="text" name="{$proc.id}[withdraw_fee_solid]"
                                       class="form-control input-sm"
                                       id="set_withdraw_fee_solid_{$proc.id}"
                                       value="{($proc_settings.withdraw_fee_solid)?$proc_settings.withdraw_fee_solid:'0'}"/>
                                <small class="text-muted">(% + {$curr_symbol})</small>
                            </div>
                            <div class="form-group">
                                <label class="control-label">{$lang.label.min}/{$lang.label.max} {$lang.label.fee}</label>
                                <input type="text" name="{$proc.id}[withdraw_min_fee]"
                                       class="form-control input-sm"
                                       id="set_withdraw_min_fee_{$proc.id}"
                                       value="{($proc_settings.withdraw_min_fee)?$proc_settings.withdraw_min_fee:'0'}"
                                       placeholder="Min"/>
                                <input type="text" name="{$proc.id}[withdraw_max_fee]"
                                       class="form-control input-sm"
                                       id="set_withdraw_max_fee_{$proc.id}"
                                       value="{($proc_settings.withdraw_max_fee)?$proc_settings.withdraw_max_fee:'0'}"
                                       placeholder="Max"/>
                            </div>
                        </td>
                    </tr>
                {/foreach}
            </table>
        </div>
        <hr>
        <button type="submit" class="btn btn-primary">{$lang.label.update}</button>
    </form>
{/block}