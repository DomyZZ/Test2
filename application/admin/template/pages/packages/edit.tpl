{block name="breadcrumb"}
    <li>
        <a href="{$admin_url}/packages">{$lang.breadcrumb.packages}</a>
    </li>
    <li class="active">{$lang.breadcrumb.edit}</li>
{/block}

{block name="page_content"}
    <form class="form-horizontal" name="edit_package" id="edit_package" method="post">
        <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
        {include file="form_status.tpl" form="edit_package"}
        <div class="form-group">
            <label for="status_active" class="control-label col-md-3">{$lang.label.status}</label>
            <div class="col-md-9">
                <div class="radio-inline">
                    <input type="radio" value="active" name="status" id="status_active"
                           required {($package.status=='active')?'checked':''}>
                    <label for="status_active">{$lang.label.active}</label>
                </div>
                <div class="radio-inline">
                    <input type="radio" value="inactive" name="status" id="status_inactive"
                           required {($package.status=='inactive')?'checked':''}>
                    <label for="status_inactive">{$lang.label.inactive}</label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label for="closed"
                   class="control-label col-md-3">{$lang.label.closed}</label>
            <div class="col-md-9">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="closed"
                               id="closed"
                               value="true" {($package.closed)?'checked="checked"':''}>
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label for="name" class="control-label col-md-3">{$lang.label.package_name}</label>
            <div class="col-md-9">
                <input type="text" class="form-control input-md-4" name="name"
                       id="name" value="{$package.name}"
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
                           name="package_duration" onkeyup="calculate()"
                           id="package_duration" {($package.package_duration=='forever')?'disabled':''}
                           value="{($package.package_duration=='forever')?'365':$package.package_duration}"
                           required/>
                    <select class="form-control input-auto inline-block" name="package_duration_unit"
                            id="package_duration_unit" {($package.package_duration=='forever')?'disabled':''}>
                        {foreach $duration_units as $d_unit}
                            <option value="{$d_unit}" {($package.package_duration_unit==$d_unit)?'selected="selected"':''}>
                                {$d_unit|ucfirst}
                            </option>
                        {/foreach}
                    </select> &nbsp;&nbsp;
                    <div class="checkbox-inline">
                        <label>
                            <input type="checkbox" name="forever"
                                   id="forever"
                                   value="true" {($package.package_duration=='forever')?'checked="checked"':''}>
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
                           id="earning_interval"
                           value="{($package.earning_interval=='maturity')?'1':$package.earning_interval}"
                           required/>
                    <span class="{($package.package_duration=='forever')?'display-none':''}"
                          id="interval_unit_addon"></span>
                    <select class="form-control input-auto inline-block {($package.package_duration=='forever')?'':'hide'}"
                            name="earning_interval_unit"
                            id="earning_interval_unit">
                        {foreach $duration_units as $d_unit}
                            <option value="{$d_unit}" {($package.earning_interval_unit==$d_unit)?'selected="selected"':''}>
                                {$d_unit|ucfirst}
                            </option>
                        {/foreach}
                    </select> &nbsp;&nbsp;
                    <div class="checkbox-inline" id="checkbox_at_maturity">
                        <label>
                            <input type="checkbox" name="maturity" id="maturity"
                                   value="true" {($package.package_duration!='forever' && $package.earning_interval=='maturity')?'checked="checked"':''}>
                            {$lang.label.at_maturity}
                        </label>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-group {(($package.earning_interval!='maturity' && $package.earning_interval_unit!='days')||($package.package_duration=='forever' && $package.earning_interval_unit!='days'))?'display-none':''}"
             id="earning_days">
            <label class="control-label col-md-3">{$lang.label.earning_days}</label>
            <div class="col-md-9">
                <div class="checkbox-inline">
                    <input type="checkbox" name="earning_days[sun]"
                           id="earning_day_sun" {($package.earning_days.sun)?'checked="checked"':''}
                           value="true">
                    <label for="earning_day_sun">{$lang.label.sunday}</label>
                </div>
                <div class="checkbox-inline">
                    <input type="checkbox" name="earning_days[mon]"
                           id="earning_day_mon" {($package.earning_days.mon)?'checked="checked"':''}
                           value="true">
                    <label for="earning_day_mon">{$lang.label.monday}</label>
                </div>
                <div class="checkbox-inline">
                    <input type="checkbox" name="earning_days[tue]"
                           id="earning_day_tue" {($package.earning_days.tue)?'checked="checked"':''}
                           value="true">
                    <label for="earning_day_tue">{$lang.label.tuesday}</label>
                </div>
                <div class="checkbox-inline">
                    <input type="checkbox" name="earning_days[wed]"
                           id="earning_day_wed" {($package.earning_days.wed)?'checked="checked"':''}
                           value="true">
                    <label for="earning_day_wed">{$lang.label.wednesday}</label>
                </div>
                <div class="checkbox-inline">
                    <input type="checkbox" name="earning_days[thu]"
                           id="earning_day_thu" {($package.earning_days.thu)?'checked="checked"':''}
                           value="true">
                    <label for="earning_day_thu">{$lang.label.thursday}</label>
                </div>
                <div class="checkbox-inline">
                    <input type="checkbox" name="earning_days[fri]"
                           id="earning_day_fri" {($package.earning_days.fri)?'checked="checked"':''}
                           value="true">
                    <label for="earning_day_fri">{$lang.label.friday}</label>
                </div>
                <div class="checkbox-inline">
                    <input type="checkbox" name="earning_days[sat]"
                           id="earning_day_sat" {($package.earning_days.sat)?'checked="checked"':''}
                           value="true">
                    <label for="earning_day_sat">{$lang.label.saturday}</label>
                </div>
            </div>
        </div>
        {*<div class="form-group">
            <label for="treat_non_earning"
                   class="control-label col-md-3">{$lang.label.treat_non_earn_as_earn}</label>
            <div class="col-md-9">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="treat_non_earning"
                               id="treat_non_earning"
                               value="true" {($package.treat_non_earning)?'checked="checked"':''}>
                    </label>
                </div>
            </div>
        </div>*}
        <h3 class="title">{$lang.legend.earning_rates}</h3>
        <div class="form-group">
            <label class="control-label col-md-3">{$lang.label.rate_type}</label>
            <div class="col-md-9">
                <select class="form-control input-auto" disabled>
                    <option value="{$package.rate_type}">{$lang.label.{$package.rate_type|cat:'_rate'}}</option>
                </select>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="table-responsive" style="margin-top: 10px">
            <table id="table-plan" class="table table-bordered table-plan table-plan-1">
                <thead>
                    <tr>
                        {if $package.rate_type!='calendar'}
                            <th></th>
                        {/if}
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
                    {assign var="new_plans" value="{($package.rate_type=='calendar')?0:3}"}
                    {for $i=0; $i<$total_plans + $new_plans; $i++}
                        <tr style="background-color: #f9f9f9;">
                            {if $package.rate_type=='calendar'}
                                <input type="hidden" name="plans[{$i}][row]" value="true">
                                <input type="hidden" name="plans[{$i}][id]"
                                       value="{$plans[{$i}]['id']}">
                            {else}
                                <td width="2%" class="text-center">
                                    {if $i > 0}
                                        <input type="checkbox" name="plans[{$i}][row]"
                                               id="plans_{$i}"
                                               onchange="enable_plan({$i})" {($i < $total_plans)?'checked="checked"':''}
                                               value="true">
                                    {else}
                                        <input type="hidden" name="plans[{$i}][row]" value="true">
                                    {/if}
                                    {if $i < $total_plans}
                                        <input type="hidden" name="plans[{$i}][id]"
                                               value="{$plans[{$i}]['id']}">
                                    {/if}
                                </td>
                            {/if}
                            <td>
                                <input type="text"
                                       class="form-control input-sm" {($i == 0 || $i < $total_plans)?'':'disabled="disabled"'}
                                       required
                                       name="plans[{$i}][min_amount]" id="min_amount_{$i}"
                                       value="{$plans[$i]['min_amount']|clean}"/>
                            </td>
                            <td>
                                <input type="text"
                                       class="form-control input-sm" {($i == 0 || $i < $total_plans)?'':'disabled="disabled"'}
                                       name="plans[{$i}][max_amount]" id="max_amount_{$i}"
                                       value="{$plans[$i]['max_amount']|clean}"/>
                            </td>
                            <td class="text-center">
                                <div class="input-group">
                                    <input type="text"
                                           class="form-control input-sm text-right" {($i == 0 || $i < $total_plans)?'':'disabled="disabled"'}
                                           name="plans[{$i}][rate]" id="rate_{$i}"
                                           required {($package.rate_type=='calendar')?'placeholder="Min rate"':''}
                                           value="{$plans[$i]['rate']|clean}"/>
                                    <span class="input-group-addon">%</span>
                                    {if $package.rate_type=='calendar' && $i==0}
                                        <input type="text"
                                               class="form-control input-sm text-right"
                                               name="plans[{$i}][max_rate]" id="max_rate_{$i}" required
                                               value="{$plans[$i]['max_rate']|clean}" placeholder="Max Rate"/>
                                        <span class="input-group-addon">%</span>
                                    {/if}
                                </div>
                            </td>
                            <td>
                                <div class="input-group">
                                    <input type="text"
                                           class="form-control input-sm text-right" {($i == 0 || $i < $total_plans)?'':'disabled="disabled"'}
                                           name="plans[{$i}][bonus_value]" id="bonus_value_{$i}"
                                           value="{$plans[$i]['bonus_value']|clean}"/>
                                    <span class="input-group-btn">
                                                      <select class="form-control input-sm input-auto" {($i == 0 || $i < $total_plans)?'':'disabled="disabled"'}
                                                              name="plans[{$i}][bonus_type]" id="bonus_type_{$i}"
                                                              style="width: auto">
                                                          <option value="solid" {($plans[$i]['bonus_type']=='solid')?'selected="selected"':''}>{$curr_symbol}</option>
                                                          <option value="percentage" {($plans[$i]['bonus_type']=='percentage')?'selected="selected"':''}>%</option>
                                                      </select>
                                                </span>
                                </div>
                                <div class="checkbox-inline">
                                    <label><input type="checkbox" name="plans[{$i}][bonus_dest]"
                                                  id="bonus_dest_{$i}"
                                                  value="true" {($plans[$i]['bonus_dest'] == 1)?'checked="checked"':''}> <small>{$lang.label.add_bonus_balance}</small></label>
                                </div>
                            </td>
                        </tr>
                    {/for}
                    {if $package.rate_type=='calendar'}
                        <tr id="calendar_rates">
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
                                                                   name="calendar_rates[{$cal_date}]"
                                                                   id="calendar_rates_rate_{$cal_date}"
                                                                   onkeyup="check_var_rates({$cal_date})"
                                                                   value="{$plans[0]['calendar_rates'][{$cal_date}]}">
                                                            <span id="cal_rate_error_{$cal_date}"
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
                                                                   name="calendar_rates[{$cal_date}]"
                                                                   id="calendar_rates_rate_{$cal_date}"
                                                                   onkeyup="check_var_rates({$cal_date})"
                                                                   value="{$plans[0]['calendar_rates'][{$cal_date}]}">
                                                            <span id="cal_rate_error_{$cal_date}"
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
                                                                   name="calendar_rates[{$cal_date}]"
                                                                   id="calendar_rates_rate_{$cal_date}"
                                                                   onkeyup="check_var_rates({$cal_date})"
                                                                   value="{$plans[0]['calendar_rates'][{$cal_date}]}">
                                                            <span id="cal_rate_error_{$cal_date}"
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
                    {/if}
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
                               value="true" {($package.return_principal)?'checked="checked"':''}>
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
                               value="true" {($package.allow_compounding)?'checked="checked"':''}>
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
                       class="form-control inline-block input-auto" {($package.allow_compounding)?'disabled="disabled"':''}
                       name="comp_min_dep" id="comp_min_dep" value="{$package.comp_min_dep|clean}"
                       placeholder="Min"/>
                <input type="text"
                       class="form-control inline-block input-auto" {($package.allow_compounding)?'disabled="disabled"':''}
                       name="comp_max_dep" id="comp_max_dep" value="{$package.comp_max_dep|clean}"
                       placeholder="Max"/> {$curr_symbol}
            </div>
        </div>
        <div class="form-group">
            <label for="comp_val_type" class="control-label col-md-3">{$lang.label.type}</label>
            <div class="col-md-9">
                <select class="form-control input-auto inline-block"
                        name="comp_val_type" {($package.allow_compounding)?'disabled="disabled"':''}
                        id="comp_val_type" onchange="change_c_type_values()">
                    <option value="ranged" {($package.comp_val_type=='ranged')?'selected="selected"':''}>{$lang.label.ranged}</option>
                    <option value="solid" {($package.comp_val_type=='solid')?'selected="selected"':''}>{$lang.label.solid}</option>
                </select>
            </div>
        </div>
        <div class="form-group {($package.comp_val_type=='ranged')?'':'hide'}" id="c_ranged_vals">
            <label for="comp_ranged_val_min" class="control-label col-md-3">
                {$lang.label.ranged_values} ({$lang.label.min} & {$lang.label.max})
            </label>
            <div class="col-md-9">
                <input type="text"
                       class="form-control inline-block input-auto" {($package.allow_compounding)?'disabled="disabled"':''}
                       name="comp_ranged_val_min" id="comp_ranged_val_min"
                       value="{$package.comp_ranged_val_min|clean}" placeholder="Min"/>
                <input type="text"
                       class="form-control inline-block input-auto" {($package.allow_compounding)?'disabled="disabled"':''}
                       name="comp_ranged_val_max" id="comp_ranged_val_max"
                       value="{$package.comp_ranged_val_max|clean}"
                       placeholder="Max"/> %
            </div>
        </div>
        <div class="form-group {($package.comp_val_type=='solid')?'':'hide'}" id="c_solid_vals">
            <label for="comp_solid_vals" class="control-label col-md-3">
                {$lang.label.solid_values}
            </label>
            <div class="col-md-9">
                <input type="text"
                       class="form-control inline-block input-auto" {($package.allow_compounding)?'disabled="disabled"':''}
                       name="comp_solid_vals" id="comp_solid_vals" size="30"
                       value="{$package.comp_solid_vals}" placeholder="10,20,30....."/> <span
                        class="">%</span>
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
                               value="true" {($package.allow_p_withdrawal)?'checked="checked"':''}>
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
                        {(!$package.allow_p_withdrawal)?'disabled="disabled"':''}
                       name="p_withdraw_fee" id="p_withdraw_fee"
                       value="{$package.p_withdraw_fee|clean}"/> %
            </div>
        </div>
        <div id="p_wdr_ext_set">
            <div class="form-group">
                <label for="p_withdraw_min_days" class="control-label col-md-3">
                    {$lang.label.p_min_wdr_days}
                </label>
                <div class="col-md-9">
                    <input type="text" class="form-control inline-block input-auto text-right"
                            {(!$package.allow_p_withdrawal)?'disabled="disabled"':''}
                           name="p_withdraw_min_days" id="p_withdraw_min_days"
                           value="{$package.p_withdraw_min_days}"/> {$lang.label.days|strtolower}
                </div>
            </div>
            <div class="form-group">
                <label for="p_withdraw_max_days" class="control-label col-md-3">
                    {$lang.label.p_max_wdr_days}
                </label>
                <div class="col-md-9">
                    <input type="text" class="form-control inline-block input-auto text-right"
                            {(!$package.allow_p_withdrawal)?'disabled="disabled"':''}
                           name="p_withdraw_max_days" id="p_withdraw_max_days"
                           value="{$package.p_withdraw_max_days}"/> {$lang.label.days|strtolower}
                </div>
            </div>
        </div>
        <h3 class="title">{$lang.legend.miscellaneous}</h3>
        <div class="form-group">
            <label for="allow_dep_package"
                   class="control-label control-md-label-1 col-md-3">{$lang.label.allow_dep_after_package}</label>
            <div class="col-md-9">
                <select name="allow_dep_package" id="allow_dep_package" class="form-control input-auto">
                    <option value="0" {($package.allow_dep_package=='0')?'selected="selected"':''}>{$lang.label.no_restriction}</option>
                    {foreach $packages as $value}
                        <option value="{$value.id}" {($package.allow_dep_package=={$value.id})?'selected="selected"':''}>{$value.name}</option>
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
                               value="true" {($package.disable_autowithdraw)?'checked="checked"':''}>
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
                               value="true" {($package.apply_bonus_from_balance)?'checked="checked"':''}>
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
                       value="{$package.disable_autowith_ifdep_more_than|clean}"/>
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
                       value="{$package.max_dep_count}"/>
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
                       value="{$package.max_dep_count_single}"/>
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
                       value="{$package.max_act_dep_count}"/>
                <em class="help-block text-muted inline-block">{$lang.msg.set_zero_unlimited_act_dep}</em>
            </div>
        </div>
        <hr>
        <button type="submit" class="btn btn-primary">{$lang.label.update}</button>
    </form>
    <div class="clearfix"></div>
    {if $package.rate_type=='fixed'}
        {include file="packages/calculator.tpl"}
    {/if}
{/block}

{block name="foo" append}
    <!-- Moment js -->
    <script src="{$admin_assets}/assets/plugins/moment/jquery.moment.js"
            type="text/javascript"></script>
    <script src="{$admin_assets}/assets/plugins/moment/moment-range.min.js"
            type="text/javascript"></script>
    <script type="text/javascript">
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

               // hide_p_wdr_ext($(this).val());

                calculate();
            });

            $('#earning_interval_unit').change(function () {
                if ($(this).val() === 'days') {
                    $('#earning_days').show();
                } else {
                    $('#earning_days').hide();
                }

              //  hide_p_wdr_ext($(this).val());

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
        });

        function enable_plan(plan_id) {
            if ($('#plans_' + plan_id + ':checked').val()) {
                $('#min_amount_' + plan_id).removeAttr('disabled');
                $('#max_amount_' + plan_id).removeAttr('disabled');
                $('#bonus_value_' + plan_id).removeAttr('disabled');
                $('#bonus_type_' + plan_id).removeAttr('disabled');
                $('#bonus_dest_' + plan_id).removeAttr('disabled');
                $('#rate_' + plan_id).removeAttr('disabled');
            } else {
                $('#min_amount_' + plan_id).attr({'disabled': 'true'});
                $('#max_amount_' + plan_id).attr({'disabled': 'true'});
                $('#bonus_value_' + plan_id).attr({'disabled': 'true'});
                $('#bonus_type_' + plan_id).attr({'disabled': 'true'});
                $('#bonus_dest_' + plan_id).attr({'disabled': 'true'});
                $('#rate_' + plan_id).attr({'disabled': 'true'});
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