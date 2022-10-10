{block name="breadcrumb"}
    <li>
        <a href="{$admin_url}/packages">{$lang.breadcrumb.packages}</a>
    </li>
    <li class="active">{$lang.breadcrumb.add}</li>
{/block}

{block name="page_content"}
    <form class="form-horizontal" name="add_package" id="add_package" method="post">
        <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
        {include file="form_status.tpl" form="add_package"}
        <div class="form-group">
            <label for="status_active" class="control-label col-md-3">{$lang.label.status}</label>
            <div class="col-md-9">
                <div class="radio-inline">
                    <input type="radio" value="active" name="status" id="status_active"
                           required {set_radio('status', 'active', TRUE)}>
                    <label for="status_active">{$lang.label.active}</label>
                </div>
                <div class="radio-inline">
                    <input type="radio" value="inactive" name="status" id="status_inactive"
                           required {set_radio('status', 'inactive')}>
                    <label for="status_inactive">{$lang.label.inactive}</label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label for="name" class="control-label col-md-3">{$lang.label.package_name}</label>
            <div class="col-md-9">
                <input type="text" class="form-control input-md-4" name="name"
                       id="name" value="{set_value("name")}"
                       required/>
            </div>
        </div>
        <div class="form-group">
            <label for="package_duration"
                   class="control-label col-md-3">{$lang.label.package_expiration}</label>
            <div class="col-md-9">
                <div class="form-inline">
                    <input type="text" style="width: 70px"
                           class="form-control inline-block text-right"
                           name="package_duration"
                           id="package_duration" {(set_value("forever"))?'disabled':''}
                           value="{set_value("package_duration", "365")}" required onkeyup="calculate()"/>
                    <select class="form-control input-auto inline-block" name="package_duration_unit"
                            id="package_duration_unit" {(set_value("forever"))?'disabled':''}>
                        {foreach $duration_units as $d_unit}
                            <option value="{$d_unit}" {if $d_unit == 'days'}{set_select('package_duration_unit', $d_unit, TRUE)}{else}{set_select('package_duration_unit', $d_unit)}{/if}>
                                {$d_unit|ucfirst}
                            </option>
                        {/foreach}
                    </select> &nbsp;&nbsp;
                    <div class="checkbox-inline">
                        <label>
                            <input type="checkbox" name="forever"
                                   id="forever"
                                   value="true" {set_checkbox('forever', 'true')}>
                            {$lang.label.no_expiry}
                        </label>
                    </div>
                </div>
            </div>
        </div>
        <h3 class="title">{$lang.legend.earning_settings}</h3>
        <div class="form-group">
            <label for="earning_interval"
                   class="control-label col-md-3">{$lang.label.pay_earnings}</label>
            <div class="col-md-9">
                <div class="form-inline">
                    <span>{$lang.label.every}</span>
                    <input type="text" style="width: 70px"
                           class="form-control inline-block text-right"
                           name="earning_interval" onkeyup="calculate()"
                           id="earning_interval" value="{set_value("earning_interval", "1")}" required/>
                    <span id="interval_unit_addon">Days</span>
                    <select class="form-control input-auto inline-block hide" name="earning_interval_unit"
                            id="earning_interval_unit">
                        {foreach $duration_units as $d_unit}
                            <option value="{$d_unit}" {if $d_unit == 'days'}{set_select('earning_interval_unit', $d_unit, TRUE)}{else}{set_select('earning_interval_unit', $d_unit)}{/if}>
                                {$d_unit|ucfirst}
                            </option>
                        {/foreach}
                    </select> &nbsp;&nbsp;
                    <div class="checkbox-inline" id="checkbox_at_maturity">
                        <label>
                            <input type="checkbox" name="maturity" id="maturity"
                                   value="true" {set_checkbox('maturity', 'true')}>
                            {$lang.label.at_maturity}
                        </label>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-group" id="earning_days">
            <label class="control-label col-md-3">{$lang.label.earning_days}</label>
            <div class="col-md-9">
                <div class="checkbox-inline">
                    <input type="checkbox" name="earning_days[sun]"
                           id="earning_day_sun" {set_checkbox("earning_days[sun]", "true", TRUE)}
                           value="true">
                    <label for="earning_day_sun">{$lang.label.sunday}</label>
                </div>
                <div class="checkbox-inline">
                    <input type="checkbox" name="earning_days[mon]"
                           id="earning_day_mon" {set_checkbox("earning_days[mon]", "true", TRUE)}
                           value="true">
                    <label for="earning_day_mon">{$lang.label.monday}</label>
                </div>
                <div class="checkbox-inline">
                    <input type="checkbox" name="earning_days[tue]"
                           id="earning_day_tue" {set_checkbox("earning_days[tue]", "true", TRUE)}
                           value="true">
                    <label for="earning_day_tue">{$lang.label.tuesday}</label>
                </div>
                <div class="checkbox-inline">
                    <input type="checkbox" name="earning_days[wed]"
                           id="earning_day_wed" {set_checkbox("earning_days[wed]", "true", TRUE)}
                           value="true">
                    <label for="earning_day_wed">{$lang.label.wednesday}</label>
                </div>
                <div class="checkbox-inline">
                    <input type="checkbox" name="earning_days[thu]"
                           id="earning_day_thu" {set_checkbox("earning_days[thu]", "true", TRUE)}
                           value="true">
                    <label for="earning_day_thu">{$lang.label.thursday}</label>
                </div>
                <div class="checkbox-inline">
                    <input type="checkbox" name="earning_days[fri]"
                           id="earning_day_fri" {set_checkbox("earning_days[fri]", "true", TRUE)}
                           value="true">
                    <label for="earning_day_fri">{$lang.label.friday}</label>
                </div>
                <div class="checkbox-inline">
                    <input type="checkbox" name="earning_days[sat]"
                           id="earning_day_sat" {set_checkbox("earning_days[sat]", "true", TRUE)}
                           value="true">
                    <label for="earning_day_sat">{$lang.label.saturday}</label>
                </div>
            </div>
        </div>
        {* <div class="form-group">
            <label for="treat_non_earning"
                   class="control-label col-md-3">{$lang.label.treat_non_earn_as_earn}</label>
            <div class="col-md-9">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="treat_non_earning"
                               id="treat_non_earning"
                               value="true">
                    </label>
                </div>
            </div>
        </div> *}
        <h3 class="title">{$lang.legend.earning_rates}</h3>
        <div class="form-group">
            <label for="rate_type"
                   class="control-label col-md-3">{$lang.label.rate_type}</label>
            <div class="col-md-9">
                <select class="form-control input-auto inline-block"
                        name="rate_type"
                        id="rate_type" onchange="change_rate_type()">
                    <option value="fixed" {set_select('rate_type', 'fixed', TRUE)}>{$lang.label.fixed_rate}</option>
                    <option value="calendar" {set_select('rate_type', 'calendar')}>{$lang.label.calendar_rate}</option>
                </select>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="table-responsive" style="margin-top: 10px">
            <table id="table-plan" class="table table-bordered table-plan table-plan-1">
                <thead>
                    <tr>
                        <th></th>
                        <th>{$lang.label.min_amount} ({$curr_symbol})</th>
                        <th>{$lang.label.max_amount} ({$curr_symbol})
                            <small class="block"><em>{$lang.msg.set_zero_unlimited}</em></small>
                        </th>
                        <th>
                            {$lang.label.rate}
                        </th>
                        <th>{$lang.label.bonus}</th>
                    </tr>
                </thead>
                <tbody>
                    {for $i=0; $i<5; $i++}
                        <tr style="background-color: #f9f9f9;" id="rates_{$i}">
                            <td width="2%" class="text-center">
                                {if $i > 0}
                                    <input type="checkbox" name="plans[{$i}][id]"
                                           id="plans_{$i}" onchange="enable_plan({$i})"
                                           value="true" {set_checkbox("plans[{$i}][id]", "true")}>
                                {/if}
                            </td>
                            <td>
                                <input type="text"
                                       class="form-control input-sm" {(!set_value("plans[{$i}][id]") && $i>0)?'disabled':''}
                                       required
                                       name="plans[{$i}][min_amount]" id="min_amount_{$i}"
                                       value="{set_value("plans[{$i}][min_amount]")}"/>
                            </td>
                            <td>
                                <input type="text"
                                       class="form-control input-sm" {(!set_value("plans[{$i}][id]") && $i>0)?'disabled':''}
                                       name="plans[{$i}][max_amount]" id="max_amount_{$i}"
                                       value="{set_value("plans[{$i}][max_amount]")}"/>
                            </td>
                            <td class="text-center">
                                <div class="input-group">
                                    <input type="text"
                                           class="form-control input-sm text-right" {(!set_value("plans[{$i}][id]") && $i>0)?'disabled':''}
                                           name="plans[{$i}][rate]" id="rate_{$i}" required
                                           value="{set_value("plans[{$i}][rate]")}"/>
                                    <span class="input-group-addon">%</span>
                                    {if $i == 0}
                                        <input type="text"
                                               class="form-control input-sm text-right input_group_max_rate"
                                               style="display: none" disabled
                                               name="plans[{$i}][max_rate]" id="max_rate_{$i}" required
                                               value="{set_value("plans[{$i}][max_rate]")}"/>
                                        <span class="input-group-addon input_group_max_rate"
                                              style="display: none">%</span>
                                    {/if}
                                </div>
                            </td>
                            <td>
                                <div class="input-group">
                                    <input type="text"
                                           class="form-control input-sm text-right" {(!set_value("plans[{$i}][id]") && $i>0)?'disabled':''}
                                           name="plans[{$i}][bonus_value]" id="bonus_value_{$i}"
                                           value="{set_value("plans[{$i}][bonus_value]", "0")}"/>
                                    <span class="input-group-btn">
                                                      <select class="form-control input-sm input-auto" {(!set_value("plans[{$i}][id]") && $i>0)?'disabled':''}
                                                              name="plans[{$i}][bonus_type]" id="bonus_type_{$i}"
                                                              style="width: auto">
                                                          <option value="percentage" {set_select("plans[{$i}][bonus_type]", "percentage", TRUE)}>%</option>
                                                          <option value="solid" {set_select("plans[{$i}][bonus_type]", "solid")}>{$curr_symbol}</option>
                                                      </select>
                                                </span>
                                </div>
                                <div class="checkbox-inline">
                                <label><input type="checkbox" name="plans[{$i}][bonus_dest]"
                                              id="bonus_dest_{$i}"
                                              value="true" {set_checkbox("plans[{$i}][bonus_dest]", "true")}> <small>{$lang.label.add_bonus_balance}</small></label>
                                </div>
                            </td>
                        </tr>
                    {/for}
                    <tr id="calendar_rates" class="display-none">
                        <td colspan="5">
                            <h3 class="title">{$lang.legend.calendar_rates}</h3>
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs dq-nav">
                                <li>
                                    <a href="#cal_rates_last_15" data-toggle="tab" role="tab">
                                        {($smarty.now - (60*60*24*14))|dtformat:'d-M-Y'}
                                        to {($smarty.now - (60*60*24*1))|dtformat:'d-M-Y'}
                                    </a>
                                </li>
                                <li class="active">
                                    <a href="#cal_rates_cur_15" data-toggle="tab" role="tab">
                                        Today to {($smarty.now + (60*60*24*14))|dtformat:'d-M-Y'}
                                    </a>
                                </li>
                                <li>
                                    <a href="#cal_rates_next_15" data-toggle="tab" role="tab">
                                        {($smarty.now + (60*60*24*15))|dtformat:'d-M-Y'}
                                        to {($smarty.now + (60*60*24*30))|dtformat:'d-M-Y'}
                                    </a>
                                </li>
                            </ul>
                            <!-- Tab panels -->
                            <div class="tab-content">
                                <div class="tab-pane fade"
                                     id="cal_rates_last_15">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                {for $j=14; $j>0; $j--}
                                                    {$cal_date=strtotime(date('d-M-Y', strtotime('-'|cat:$j|cat:' day')))}
                                                    <div class="form-group">
                                                        <input type="text"
                                                               class="form-control input-sm input-auto inline-block calendar-rates" {(set_value("rate_type")!='calendar')?'disabled':''}
                                                               id="calendar_rates_date_{$cal_date}"
                                                               readonly
                                                               value="{$cal_date|dtformat:'d-M-Y (D)'}">
                                                        <input type="text"
                                                               class="form-control input-sm input-auto inline-block calendar-rates"
                                                               tabindex="{$cal_date}"
                                                               name="calendar_rates[{$cal_date}]" {(set_value("rate_type")!='calendar')?'disabled':''}
                                                               id="calendar_rates_rate_{$cal_date}"
                                                               onkeyup="check_var_rates({$cal_date})"
                                                               value="{set_value("calendar_rates[{$cal_date}]")}"> <span
                                                                id="cal_rate_error_{$cal_date}"
                                                                class="text-danger hide"></span>
                                                    </div>
                                                {/for}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade in active"
                                     id="cal_rates_cur_15">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                {for $j=0; $j<15; $j++}
                                                    {$cal_date=strtotime(date('d-M-Y', strtotime('+'|cat:$j|cat:' day')))}
                                                    <div class="form-group">
                                                        <input type="text"
                                                               class="form-control input-sm input-auto inline-block calendar-rates" {(set_value("rate_type")!='calendar')?'disabled':''}
                                                               id="calendar_rates_date_{$cal_date}"
                                                               readonly
                                                               value="{$cal_date|dtformat:'d-M-Y (D)'}">
                                                        <input type="text"
                                                               class="form-control input-sm input-auto inline-block calendar-rates"
                                                               tabindex="{$cal_date}"
                                                               name="calendar_rates[{$cal_date}]" {(set_value("rate_type")!='calendar')?'disabled':''}
                                                               id="calendar_rates_rate_{$cal_date}"
                                                               onkeyup="check_var_rates({$cal_date})"
                                                               value="{set_value("calendar_rates[{$cal_date}]")}"> <span
                                                                id="cal_rate_error_{$cal_date}"
                                                                class="text-danger hide"></span>
                                                    </div>
                                                {/for}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade"
                                     id="cal_rates_next_15">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                {for $j=15; $j<30; $j++}
                                                    {$cal_date=strtotime(date('d-M-Y', strtotime('+'|cat:$j|cat:' day')))}
                                                    <div class="form-group">
                                                        <input type="text"
                                                               class="form-control input-sm input-auto inline-block calendar-rates" {(set_value("rate_type")!='calendar')?'disabled':''}
                                                               id="calendar_rates_date_{$cal_date}"
                                                               readonly
                                                               value="{$cal_date|dtformat:'d-M-Y (D)'}">
                                                        <input type="text"
                                                               class="form-control input-sm input-auto inline-block calendar-rates"
                                                               tabindex="{$cal_date}"
                                                               name="calendar_rates[{$cal_date}]" {(set_value("rate_type")!='calendar')?'disabled':''}
                                                               id="calendar_rates_rate_{$cal_date}"
                                                               onkeyup="check_var_rates({$cal_date})"
                                                               value="{set_value("calendar_rates[{$cal_date}]")}"> <span
                                                                id="cal_rate_error_{$cal_date}"
                                                                class="text-danger hide"></span>
                                                    </div>
                                                {/for}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="form-group">
            <label for="return_principal"
                   class="control-label col-md-3">{$lang.label.return_principal}</label>
            <div class="col-md-9">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="return_principal"
                               id="return_principal"
                               value="true" {set_checkbox('return_principal', 'true')}>
                    </label>
                </div>
            </div>
        </div>
        <h3 class="title">{$lang.legend.compounding}</h3>
        <div class="form-group">
            <label for="allow_compounding" class="control-label col-md-3">
                {$lang.label.allow_compounding}
            </label>
            <div class="col-md-9">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="allow_compounding"
                               id="allow_compounding"
                               value="true" {set_checkbox('allow_compounding', 'true')}>
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label for="comp_min_dep" class="control-label col-md-3">
                {$lang.label.amount_limits} ({$lang.label.min} & {$lang.label.max})
            </label>
            <div class="col-md-9">
                <input type="text"
                       class="form-control inline-block input-auto" disabled
                       name="comp_min_dep" id="comp_min_dep" value="{set_value("comp_min_dep", "0")}"
                       placeholder="Min"/>
                <input type="text" class="form-control inline-block input-auto" disabled
                       name="comp_max_dep" id="comp_max_dep" value="{set_value("comp_max_dep", "0")}"
                       placeholder="Max"/> {$curr_symbol}
            </div>
        </div>
        <div class="form-group">
            <label for="comp_val_type" class="control-label col-md-3">{$lang.label.type}</label>
            <div class="col-md-9">
                <select class="form-control input-auto inline-block" name="comp_val_type" disabled
                        id="comp_val_type" onchange="change_c_type_values()">
                    <option value="ranged" {set_select('comp_val_type', 'ranged', TRUE)}>{$lang.label.ranged}</option>
                    <option value="solid" {set_select('comp_val_type', 'solid')}>{$lang.label.solid}</option>
                </select>
            </div>
        </div>
        <div class="form-group" id="c_ranged_vals">
            <label for="comp_ranged_val_min" class="control-label col-md-3">
                {$lang.label.ranged_values} ({$lang.label.min} & {$lang.label.max})
            </label>
            <div class="col-md-9">
                <input type="text"
                       class="form-control inline-block input-auto" disabled
                       name="comp_ranged_val_min" id="comp_ranged_val_min"
                       value="{set_value("comp_ranged_val_min", "0")}" placeholder="Min"/>
                <input type="text" class="form-control inline-block input-auto" disabled
                       name="comp_ranged_val_max" id="comp_ranged_val_max"
                       value="{set_value("comp_ranged_val_max", "100")}"
                       placeholder="Max"/> %
            </div>
        </div>
        <div class="form-group hide" id="c_solid_vals">
            <label for="comp_solid_vals" class="control-label col-md-3">
                {$lang.label.solid_values}
            </label>
            <div class="col-md-9">
                <input type="text" class="form-control inline-block input-auto" disabled
                       name="comp_solid_vals" id="comp_solid_vals" size="30"
                       value="{set_value("comp_solid_vals", "0,20,30,60,90,100")}"
                       placeholder="Max"/> <span class="">%</span>
                <em class="help-block text-muted inline-block">({$lang.msg.seperated_commas})</em>
            </div>
        </div>
        <h3 class="title">{$lang.legend.principal_withdrawal}</h3>
        <div class="form-group">
            <label for="allow_p_withdrawal" class="control-label col-md-3">
                {$lang.label.allow_p_withdrawal}
            </label>
            <div class="col-md-9">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="allow_p_withdrawal"
                               id="allow_p_withdrawal"
                               value="true" {set_checkbox('allow_p_withdrawal', 'true')}>
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label for="p_withdraw_fee" class="control-label col-md-3">
                {$lang.label.p_withdrawal_fee}
            </label>
            <div class="col-md-9">
                <input type="text" class="form-control inline-block input-auto text-right"
                       disabled
                       name="p_withdraw_fee" id="p_withdraw_fee"
                       value="{set_value("p_withdraw_fee", "0")}"/> %
            </div>
        </div>
        <div id="p_wdr_ext_set">
            <div class="form-group">
                <label for="p_withdraw_min_days" class="control-label col-md-3">
                    {$lang.label.p_min_wdr_days}
                </label>
                <div class="col-md-9">
                    <input type="text" class="form-control inline-block input-auto text-right"
                           disabled
                           name="p_withdraw_min_days" id="p_withdraw_min_days"
                           value="{set_value("p_withdraw_min_days", "0")}"/> {$lang.label.days|strtolower}
                </div>
            </div>
            <div class="form-group">
                <label for="p_withdraw_max_days" class="control-label col-md-3">
                    {$lang.label.p_max_wdr_days}
                </label>
                <div class="col-md-9">
                    <input type="text" class="form-control inline-block input-auto text-right"
                           disabled
                           name="p_withdraw_max_days" id="p_withdraw_max_days"
                           value="{set_value("p_withdraw_max_days", "0")}"/> {$lang.label.days|strtolower}
                </div>
            </div>
        </div>
        <h3 class="title">{$lang.legend.miscellaneous}</h3>
        <div class="form-group">
            <label for="allow_dep_package"
                   class="control-label control-md-label-1 col-md-3">{$lang.label.allow_dep_after_package}</label>
            <div class="col-md-9">
                <select name="allow_dep_package" id="allow_dep_package" class="form-control input-auto">
                    <option value="0" {set_select('allow_dep_package', '0', TRUE)}>{$lang.label.no_restriction}</option>
                    {foreach $packages as $value}
                        <option value="{$value.id}" {set_select("allow_dep_package", "{$value.id}")}>{$value.name}</option>
                    {/foreach}
                </select>
            </div>
        </div>
        <div class="form-group">
            <label for="disable_autowithdraw"
                   class="control-label col-md-3">{$lang.label.disable_auto_wdr_package}</label>
            <div class="col-md-9">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="disable_autowithdraw"
                               id="disable_autowithdraw"
                               value="true" {set_checkbox('disable_autowithdraw', 'true')}>
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label for="disable_autowithdraw"
                   class="control-label col-md-3">{$lang.label.apply_bonus_from_balance}</label>
            <div class="col-md-9">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="apply_bonus_from_balance"
                               id="apply_bonus_from_balance"
                               value="true" {set_checkbox('apply_bonus_from_balance', 'true')}>
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label for="disable_autowith_ifdep_more_than"
                   class="control-label control-md-label-1 col-md-3">
                {$lang.label.disable_auto_wdr_dep_more} <span class="text-muted">({$curr_symbol})</span>
            </label>
            <div class="col-md-9">
                <input type="text" class="form-control input-md-3 inline-block"
                       name="disable_autowith_ifdep_more_than" id="disable_autowith_ifdep_more_than"
                       value="{set_value("disable_autowith_ifdep_more_than", "0")}"/>
                <em class="help-block text-muted inline-block">{$lang.msg.set_zero_norestriction}</em>
            </div>
        </div>
        <div class="form-group">
            <label for="max_dep_count" class="control-label control-md-label-1 col-md-3">
                {$lang.label.max_dep_allow_package_all_users}
            </label>
            <div class="col-md-9">
                <input type="text" class="form-control input-md-2 inline-block"
                       name="max_dep_count" id="max_dep_count"
                       value="{set_value("max_dep_count", "0")}"/>
                <em class="help-block text-muted inline-block">{$lang.msg.set_zero_unlimited_dep}</em>
            </div>
        </div>
        <div class="form-group">
            <label for="max_dep_count_single" class="control-label control-md-label-1 col-md-3">
                {$lang.label.max_dep_allow_package_single_user}
            </label>
            <div class="col-md-9">
                <input type="text" class="form-control input-md-2 inline-block"
                       name="max_dep_count_single" id="max_dep_count_single"
                       value="{set_value("max_dep_count_single", "0")}"/>
                <em class="help-block text-muted inline-block">{$lang.msg.set_zero_unlimited_dep}</em>
            </div>
        </div>
        <div class="form-group">
            <label for="max_act_dep_count" class="control-label control-md-label-1 col-md-3">
                {$lang.label.max_act_dep_allow_user}
            </label>
            <div class="col-md-9">
                <input type="text" class="form-control input-md-2 inline-block"
                       name="max_act_dep_count" id="max_act_dep_count"
                       value="{set_value("max_act_dep_count", "0")}"/>
                <em class="help-block text-muted inline-block">{$lang.msg.set_zero_unlimited_act_dep}</em>
            </div>
        </div>
        <hr>
        <button type="submit" class="btn btn-primary">{$lang.label.save}</button>
    </form>
    <div class="clearfix"></div>
    {include file="packages/calculator.tpl"}
{/block}

{block name="foo" append}
    <!-- Moment js -->
    <script src="{$admin_assets}/assets/plugins/moment/jquery.moment.js"
            type="text/javascript"></script>
    <script src="{$admin_assets}/assets/plugins/moment/moment-range.min.js"
            type="text/javascript"></script>
    <script type="text/javascript">
        var total_plans = 5;
        {literal}
        jQuery(function ($) {
            "use strict"; // Start of use strict

            $("#calc_date").datepicker({format: 'dd-mm-yyyy'});

            $("input[name^='earning_days[']").change(function () {
                calculate();
            });

            $('#package_duration_unit').change(function () {
                $('#interval_unit_addon').text($(this).val().ucfirst());
                if ($(this).val() === 'days' && !$('#maturity:checked').val()) {
                    $('#earning_days').show();
                } else {
                    $('#earning_days').hide();
                }

                //hide_p_wdr_ext($(this).val());

                calculate();
            });

            $('#earning_interval_unit').change(function () {
                if ($(this).val() === 'days') {
                    $('#earning_days').show();
                } else {
                    $('#earning_days').hide();
                }

               //hide_p_wdr_ext($(this).val());

                calculate();
            });

            $('#maturity').change(function () {
                if ($('#maturity:checked').val()) {
                    $('#earning_interval').attr({'disabled': 'true'});
                    $('#earning_days').hide();
                } else {
                    $('#earning_interval').removeAttr('disabled');
                    if ($('#package_duration_unit').val() == 'days') {
                        $('#earning_days').show();
                    }
                }
                calculate();
            });

            $('#forever').change(function () {
                if ($('#forever:checked').val()) {
                    $('#package_duration').attr({'disabled': 'true'});
                    $('#package_duration_unit').attr({'disabled': 'true'});
                    $('#return_principal').removeAttr('checked').attr({'disabled': 'true'});
                    $('#interval_unit_addon').hide();
                    $('#checkbox_at_maturity').hide();
                    $('#earning_interval_unit').removeClass('hide').trigger('change');
                    $('#maturity').removeAttr('checked').trigger('change');
                    if ($('#earning_interval_unit').val() == 'days') {
                        $('#earning_days').show();
                    } else {
                        $('#earning_days').hide();
                    }
                } else {
                    $('#package_duration').removeAttr('disabled');
                    $('#package_duration_unit').removeAttr('disabled').trigger('change');
                    $('#return_principal').removeAttr('disabled');
                    $('#interval_unit_addon').show();
                    $('#checkbox_at_maturity').show();
                    $('#earning_interval_unit').addClass('hide');
                    $('#maturity').trigger('change');
                    if ($('#package_duration_unit').val() == 'days') {
                        $('#earning_days').show();
                    } else {
                        $('#earning_days').hide();
                    }
                }
                calculate();
            });

            $('#return_principal').change(function() {
                calculate();
            });

            $('#allow_compounding').change(function () {
                if ($('#allow_compounding:checked').val()) {
                    $('#comp_min_dep').removeAttr('disabled');
                    $('#comp_max_dep').removeAttr('disabled');
                    $('#comp_val_type').removeAttr('disabled');
                    $('#comp_ranged_val_min').removeAttr('disabled');
                    $('#comp_ranged_val_max').removeAttr('disabled');
                    $('#comp_solid_vals').removeAttr('disabled');
                    $('#c_compound').removeClass('hide');
                } else {
                    $('#comp_min_dep').attr({'disabled': 'true'});
                    $('#comp_max_dep').attr({'disabled': 'true'});
                    $('#comp_val_type').attr({'disabled': 'true'});
                    $('#comp_ranged_val_min').attr({'disabled': 'true'});
                    $('#comp_ranged_val_max').attr({'disabled': 'true'});
                    $('#comp_solid_vals').attr({'disabled': 'true'});
                    $('#c_compound').addClass('hide');
                }
                calculate();
            });

            $('#allow_p_withdrawal').change(function () {
                if ($('#allow_p_withdrawal:checked').val()) {
                    $('#p_withdraw_fee').removeAttr('disabled');
                    $('#p_withdraw_min_days').removeAttr('disabled');
                    $('#p_withdraw_max_days').removeAttr('disabled');
                } else {
                    $('#p_withdraw_fee').attr({'disabled': 'true'});
                    $('#p_withdraw_min_days').attr({'disabled': 'true'});
                    $('#p_withdraw_max_days').attr({'disabled': 'true'});
                }
                calculate();
            });

            $('#forever').trigger('change');
            $('#maturity').trigger('change');
            $('#allow_compounding').trigger('change');
            $('#allow_p_withdrawal').trigger('change');
            change_rate_type();
        });

        function change_rate_type() {
            if ($('#rate_type').val() === 'calendar') {
                $('#calendar_rates').show();
                $('.calendar-rates').removeAttr('disabled');
                $('#calculator').hide();
                $('.table-plan > thead > tr:first-child > th:first-child').hide();
                $('.table-plan > tbody > tr:first-child > td:first-child').hide();
                $('#rate_0').attr({'placeholder': 'Min Rate'});
                $('#max_rate_0').removeAttr('disabled').attr({'placeholder': 'Max Rate'});
                $('.input_group_max_rate').show();
            } else {
                $('#calendar_rates').hide();
                $('.calendar-rates').attr({'disabled': 'true'});
                $('#calculator').show();
                $('.table-plan > thead > tr:first-child > th:first-child').show();
                $('.table-plan > tbody > tr:first-child > td:first-child').show();
                $('#rate_0').attr({'placeholder': ''});
                $('#max_rate_0').attr({'disabled': 'true', 'placeholder': ''});
                $('.input_group_max_rate').hide();
            }

            for (var i = 1; i < total_plans; i++) {
                enable_plan(i);
            }
        }

        function check_var_rates(date) {
            if (!$('#calendar_rates_rate_' + date).val() || (parseFloat($('#calendar_rates_rate_' + date).val()) >= parseFloat($('#rate_0').val()) && parseFloat($('#calendar_rates_rate_' + date).val()) <= parseFloat($('#max_rate_0').val()))) {
                $('#cal_rate_error_' + date).addClass('hide');
            } else {
                $('#cal_rate_error_' + date).text('Rate must be within ' + $('#rate_0').val() + ' and ' + $('#max_rate_0').val());
                $('#cal_rate_error_' + date).removeClass('hide');
            }
        }

        function enable_plan(plan_id) {

            if ($('#rate_type').val() === 'calendar') {
                $('#plans_' + plan_id).removeAttr('checked');
            }

            if ($('#plans_' + plan_id + ':checked').val()) {
                $('#min_amount_' + plan_id).removeAttr('disabled');
                $('#max_amount_' + plan_id).removeAttr('disabled');
                $('#bonus_value_' + plan_id).removeAttr('disabled');
                $('#bonus_type_' + plan_id).removeAttr('disabled');
                $('#bonus_dest_' + plan_id).removeAttr('disabled');
            } else {
                $('#min_amount_' + plan_id).attr({'disabled': 'true'});
                $('#max_amount_' + plan_id).attr({'disabled': 'true'});
                $('#bonus_value_' + plan_id).attr({'disabled': 'true'});
                $('#bonus_dest_' + plan_id).attr({'disabled': 'true'});
            }

            if ($('#plans_' + plan_id + ':checked').val() && $('#rate_type').val() === 'fixed') {
                $('#rate_' + plan_id).removeAttr('disabled');
            } else {
                $('#rate_' + plan_id).attr({'disabled': 'true'});
            }

            if ($('#rate_type').val() === 'calendar') {
                $('#rates_' + plan_id).hide();
            } else {
                $('#rates_' + plan_id).show();
            }
        }

        function change_c_type_values() {
            if ($('#comp_val_type').val() === 'solid') {
                $('#c_solid_vals').removeClass('hide');
                $('#c_ranged_vals').addClass('hide');
            } else {
                $('#c_solid_vals').addClass('hide');
                $('#c_ranged_vals').removeClass('hide');
            }
        }

        /*function hide_p_wdr_ext(val) {
            if (val === 'hours' || val === 'minutes') {
                $('#p_wdr_ext_set').hide();
            } else {
                $('#p_wdr_ext_set').show();
            }
        }*/

        {/literal}
    </script>
{/block}