{block name="page_content"}
    <form class="form-horizontal" name="referral_system" id="referral_system"
          method="post" action="{$admin_url}/referral_system">
        <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
        {include file="form_status.tpl" form="referral_system"}

        <ul class="nav nav-tabs dq-nav hide" id="dq-tab">
            <li>
                <a href="#deposit" data-toggle="tab" role="tab">{$lang.label.deposit}</a>
            </li>
            {*<li>
                <a href="#earning" data-toggle="tab" role="tab">{$lang.label.earning}</a>
            </li>*}
        </ul>
        <div class="tab-content" id="dq-tab-content">
            <div class="tab-pane fade" id="deposit">
                <div class="panel-body">
                    <h3 class="title">{$lang.legend.referral_programs}</h3>
                    <div class="form-group">
                        <label for="ref_min_deposit_amount"
                               class="control-label col-md-2">{$lang.label.min_dep_amount}</label>
                        <div class="col-md-10">
                            <div class="input-group">
                                <span class="input-group-addon">{$curr_symbol}</span>
                                <input type="text" class="form-control input-sm input-auto"
                                       name="ref_settings[ref_min_deposit_amount]"
                                       id="ref_min_deposit_amount" size="25"
                                       value="{($referral_settings.ref_min_deposit_amount)?$referral_settings.ref_min_deposit_amount:'0'}"/>
                            </div>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table id="table-plan" class="table table-bordered table-plan">
                            <thead>
                                <tr class="tr-color">
                                    <th></th>
                                    <th class="text-center">{$lang.label.program_name}</th>
                                    <th colspan="2" class="text-center">
                                        <select name="ref_settings[ref_deposit_type]"
                                                id="ref_deposit_type"
                                                class="form-control input-sm inline-block"
                                                style="box-shadow: none">
                                            <option value="ref">{$lang.label.total_referrals}</option>
                                            <option value="ref_active">{$lang.label.total_active_referrals}
                                            </option>
                                            <option value="ref_total_deposit">{$lang.label.total_deposit_referrals}
                                            </option>
                                        </select>
                                    </th>
                                    <th class="text-center">{$lang.label.commission} (%)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="text-center">
                                        <b>{$lang.label.min}</b>
                                        <br>
                                        <small id="min_type_label"></small>
                                    </td>
                                    <td class="text-center">
                                        <b>{$lang.label.max}</b>
                                        <br>
                                        <small id="max_type_label"></small>
                                    </td>
                                    <td></td>
                                </tr>
                                {for $i=0; $i<5; $i++}
                                    <tr style="background-color: #f9f9f9;">
                                        <td width="1%" class="text-center">
                                            <input type="checkbox"
                                                   name="ref_deposit_programs[{$i}][row]"
                                                   id="ref_deposit_programs_{$i}"
                                                   onchange="enable_ref_prog({$i}, 'deposit')" {($i < $total_ref_deposit_programs)?'checked="checked"':''}
                                                   value="true">
                                            {if $i < $total_ref_deposit_programs}
                                                <input type="hidden"
                                                       name="ref_deposit_programs[{$i}][id]"
                                                       value="{$ref_deposit_programs[{$i}]['id']}">
                                            {/if}
                                        </td>
                                        <td>
                                            <input type="text"
                                                   class="form-control input-sm text-center ref_req" {($i < $total_ref_deposit_programs)?'':'disabled="disabled"'}
                                                   name="ref_deposit_programs[{$i}][name]"
                                                   id="name_deposit_{$i}"
                                                   value="{$ref_deposit_programs[$i]['name']}"/>
                                        </td>
                                        <td>
                                            <input type="text"
                                                   class="form-control input-sm text-center ref_req" {($i < $total_ref_deposit_programs)?'':'disabled="disabled"'}
                                                   name="ref_deposit_programs[{$i}][min]"
                                                   id="min_deposit_{$i}"
                                                   value="{$ref_deposit_programs[$i]['min']|clean}"/>
                                        </td>
                                        <td>
                                            <input type="text"
                                                   class="form-control input-sm text-center ref_req" {($i < $total_ref_deposit_programs)?'':'disabled="disabled"'}
                                                   name="ref_deposit_programs[{$i}][max]"
                                                   id="max_deposit_{$i}"
                                                   value="{$ref_deposit_programs[$i]['max']|clean}"/>
                                        </td>
                                        <td>
                                            <input type="text"
                                                   class="form-control input-sm text-center ref_req" {($i < $total_ref_deposit_programs)?'':'disabled="disabled"'}
                                                   name="ref_deposit_programs[{$i}][ref_comm]"
                                                   id="ref_comm_deposit_{$i}"
                                                   value="{$ref_deposit_programs[$i]['ref_comm']|clean}"/>
                                        </td>
                                    </tr>
                                {/for}
                            </tbody>
                        </table>
                    </div>
                    <h3 class="title">{$lang.legend.other_ref_levels}</h3>
                    <div class="table-responsive">
                        <table id="table-plan" class="table table-bordered table-plan">
                            <thead>
                                <tr class="tr-color">
                                    <th></th>
                                    <th class="text-center">{$lang.label.level}</th>
                                    <th class="text-center">{$lang.label.commission} (%)</th>
                                    <th class="text-center">
                                        {$lang.label.min_dep_amount} ({$curr_symbol})
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                {for $i=0; $i<9; $i++}
                                    {assign var="ref_level" value=$i+2}
                                    <tr>
                                        <td width="1%" class="text-center">
                                            <input type="checkbox"
                                                   name="ref_settings[other_ref_deposit_levels][{$ref_level}][row]"
                                                   id="ref_level_deposit_{$i}"
                                                   onchange="enable_ref_levels({$i}, 'deposit')" {($referral_settings['other_ref_deposit_levels'][$ref_level]['row'])?'checked="checked"':''}
                                                   value="true">
                                        </td>
                                        <td width="2%" align="center"
                                            style="vertical-align: middle;">
                                            <span class="label label-info">{$ref_level}</span>
                                        </td>
                                        <td>
                                            <input type="text"
                                                   class="form-control input-sm text-center"
                                                   name="ref_settings[other_ref_deposit_levels][{$ref_level}][ref_comm]"
                                                   id="ref_level_comm_deposit_{$i}"
                                                   value="{$referral_settings['other_ref_deposit_levels'][$ref_level]['ref_comm']|clean}" {($referral_settings['other_ref_deposit_levels'][$ref_level]['row'])?'':'disabled="disabled"'} />
                                        </td>
                                        <td>
                                            <input type="text"
                                                   class="form-control input-sm text-center"
                                                   name="ref_settings[other_ref_deposit_levels][{$ref_level}][ref_min_deposit_amount]"
                                                   id="ref_level_min_deposit_{$i}"
                                                   value="{$referral_settings['other_ref_deposit_levels'][$ref_level]['ref_min_deposit_amount']|clean}" {($referral_settings['other_ref_deposit_levels'][$ref_level]['row'])?'':'disabled="disabled"'} />
                                        </td>
                                    </tr>
                                {/for}
                            </tbody>
                        </table>
                    </div>
                    <h3 class="title">{$lang.legend.referral_settings}</h3>
                    <div class="form-group">
                        <label for="force_upline"
                               class="control-label col-md-5">{$lang.label.force_upline_during_reg}</label>
                        <div class="col-md-7">
                            <div class="checkbox checkbox-success">
                                <input type="checkbox" name="ref_settings[force_upline]"
                                       id="force_upline"
                                       value="true" {($referral_settings.force_upline)?'checked=""':''}>
                                <label for="force_upline"></label>
                            </div>
                        </div>
                    </div>
                    {*<div class="form-group">
                        <label for="show_referralearnings"
                               class="control-label col-md-5">{$lang.label.show_ref_earnings_in_member}</label>
                        <div class="col-md-7">
                            <div class="checkbox checkbox-success">
                                <input type="checkbox"
                                       name="ref_settings[show_referralearnings]"
                                       id="show_referralearnings"
                                       value="true" {($referral_settings.show_referralearnings)?'checked=""':''}>
                                <label for="show_referralearnings"></label>
                            </div>
                        </div>
                    </div>*}
                    <div class="form-group">
                        <label for="show_refdetails"
                               class="control-label col-md-5">{$lang.label.show_ref_details_in_member}</label>
                        <div class="col-md-7">
                            <div class="checkbox checkbox-success">
                                <input type="checkbox" name="ref_settings[show_refdetails]"
                                       id="show_refdetails"
                                       value="true" {($referral_settings.show_refdetails)?'checked=""':''}>
                                <label for="show_refdetails"></label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="payrefcomm_ifinvested"
                               class="control-label col-md-5">{$lang.label.pay_ref_comm_made_inv}</label>
                        <div class="col-md-7">
                            <div class="checkbox checkbox-success">
                                <input type="checkbox"
                                       name="ref_settings[payrefcomm_ifinvested]"
                                       id="payrefcomm_ifinvested"
                                       value="true" {($referral_settings.payrefcomm_ifinvested)?'checked=""':''}>
                                <label for="payrefcomm_ifinvested"></label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="donotpayrefcomm_ifbalinvested"
                               class="control-label col-md-5">{$lang.label.do_not_pay_ref_comm_from_acc}</label>
                        <div class="col-md-7">
                            <div class="checkbox checkbox-success">
                                <input type="checkbox"
                                       name="ref_settings[donotpayrefcomm_ifbalinvested]"
                                       id="donotpayrefcomm_ifbalinvested"
                                       value="true" {($referral_settings.donotpayrefcomm_ifbalinvested)?'checked=""':''}>
                                <label for="donotpayrefcomm_ifbalinvested"></label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           {* <div class="tab-pane fade" id="earning">
                <div class="panel-body">
                    <div class="form-group">
                        <div class="col-md-12">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="ref_settings[ref_earning_enabled]"
                                           id="ref_earning_enabled"
                                           value="true" {($referral_settings.ref_earning_enabled)?'checked':''}>
                                    {$lang.label.activate_ref_earn}
                                </label>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <h3 class="title">{$lang.legend.referral_programs}</h3>
                    <div class="form-group">
                        <label for="ref_min_earning_amount"
                               class="control-label col-md-2">{$lang.label.min_earn_amount}</label>
                        <div class="col-md-10">
                            <div class="input-group">
                                <span class="input-group-addon">{$curr_symbol}</span>
                                <input type="text" class="form-control input-sm input-auto"
                                       name="ref_settings[ref_min_earning_amount]"
                                       id="ref_min_earning_amount" size="25"
                                       value="{($referral_settings.ref_min_earning_amount)?$referral_settings.ref_min_earning_amount:'0'}"/>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="table-responsive">
                        <table id="table-plan" class="table table-bordered table-plan">
                            <thead>
                                <tr class="tr-color">
                                    <th></th>
                                    <th class="text-center">{$lang.label.program_name}</th>
                                    <th colspan="2" class="text-center">
                                        <select name="ref_settings[ref_earning_type]"
                                                id="ref_earning_type"
                                                class="form-control input-sm inline-block"
                                                style="box-shadow: none">
                                            <option value="ref">{$lang.label.total_referrals}</option>
                                            <option value="ref_active">{$lang.label.total_active_referrals}
                                            </option>
                                        </select>
                                    </th>
                                    <th class="text-center">{$lang.label.commission} (%)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="text-center">
                                        <b>{$lang.label.min}</b>
                                        <br>
                                        <small id="min_type_label"></small>
                                    </td>
                                    <td class="text-center">
                                        <b>{$lang.label.max}</b>
                                        <br>
                                        <small id="max_type_label"></small>
                                    </td>
                                    <td></td>
                                </tr>
                                {for $i=0; $i<5; $i++}
                                    <tr style="background-color: #f9f9f9;">
                                        <td width="1%" class="text-center">
                                            <input type="checkbox"
                                                   name="ref_earning_programs[{$i}][row]"
                                                   id="ref_earning_programs_{$i}"
                                                   onchange="enable_ref_prog({$i}, 'earning')" {($i < $total_ref_earning_programs)?'checked="checked"':''}
                                                   value="true">
                                            {if $i < $total_ref_earning_programs}
                                                <input type="hidden"
                                                       name="ref_earning_programs[{$i}][id]"
                                                       value="{$ref_earning_programs[{$i}]['id']}">
                                            {/if}
                                        </td>
                                        <td>
                                            <input type="text"
                                                   class="form-control input-sm text-center ref_req" {($i < $total_ref_earning_programs)?'':'disabled="disabled"'}
                                                   name="ref_earning_programs[{$i}][name]"
                                                   id="name_earning_{$i}"
                                                   value="{$ref_earning_programs[$i]['name']}"/>
                                        </td>
                                        <td>
                                            <input type="text"
                                                   class="form-control input-sm text-center ref_req" {($i < $total_ref_earning_programs)?'':'disabled="disabled"'}
                                                   name="ref_earning_programs[{$i}][min]"
                                                   id="min_earning_{$i}"
                                                   value="{$ref_earning_programs[$i]['min']|clean}"/>
                                        </td>
                                        <td>
                                            <input type="text"
                                                   class="form-control input-sm text-center ref_req" {($i < $total_ref_earning_programs)?'':'disabled="disabled"'}
                                                   name="ref_earning_programs[{$i}][max]"
                                                   id="max_earning_{$i}"
                                                   value="{$ref_earning_programs[$i]['max']|clean}"/>
                                        </td>
                                        <td>
                                            <input type="text"
                                                   class="form-control input-sm text-center ref_req" {($i < $total_ref_earning_programs)?'':'disabled="disabled"'}
                                                   name="ref_earning_programs[{$i}][ref_comm]"
                                                   id="ref_comm_earning_{$i}"
                                                   value="{$ref_earning_programs[$i]['ref_comm']|clean}"/>
                                        </td>
                                    </tr>
                                {/for}
                            </tbody>
                        </table>
                    </div>
                    <h3 class="title">{$lang.legend.other_ref_levels}</h3>
                    <div class="table-responsive">
                        <table id="table-plan" class="table table-bordered">
                            <thead>
                                <tr class="tr-color">
                                    <th></th>
                                    <th class="text-center">{$lang.label.level}</th>
                                    <th class="text-center">{$lang.label.commission} (%)</th>
                                    <th class="text-center">
                                        {$lang.label.min_earn_amount} ({$curr_symbol})
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                {for $i=0; $i<9; $i++}
                                    {assign var="ref_level" value=$i+2}
                                    <tr>
                                        <td width="1%" class="text-center">
                                            <input type="checkbox"
                                                   name="ref_settings[other_ref_earning_levels][{$ref_level}][row]"
                                                   id="ref_level_earning_{$i}"
                                                   onchange="enable_ref_levels({$i}, 'earning')" {($referral_settings['other_ref_earning_levels'][$ref_level]['row'])?'checked="checked"':''}
                                                   value="true">
                                        </td>
                                        <td width="2%" align="center"
                                            style="vertical-align: middle;">
                                            <span class="label label-info">{$ref_level}</span>
                                        </td>
                                        <td>
                                            <input type="text"
                                                   class="form-control input-sm text-center"
                                                   name="ref_settings[other_ref_earning_levels][{$ref_level}][ref_comm]"
                                                   id="ref_level_comm_earning_{$i}"
                                                   value="{$referral_settings['other_ref_earning_levels'][$ref_level]['ref_comm']|clean}" {($referral_settings['other_ref_earning_levels'][$ref_level]['row'])?'':'disabled="disabled"'} />
                                        </td>
                                        <td>
                                            <input type="text"
                                                   class="form-control input-sm text-center"
                                                   name="ref_settings[other_ref_earning_levels][{$ref_level}][ref_min_deposit_amount]"
                                                   id="ref_level_min_earning_{$i}"
                                                   value="{$referral_settings['other_ref_earning_levels'][$ref_level]['ref_min_deposit_amount']|clean}" {($referral_settings['other_ref_earning_levels'][$ref_level]['row'])?'':'disabled="disabled"'} />
                                        </td>
                                    </tr>
                                {/for}
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>*}
        </div>
        <hr>
        <button type="submit" class="btn btn-primary"
                onclick="update_tab_form('referral_system')">{$lang.label.update}</button>
    </form>
{/block}

{block name="foo" append}
{literal}
    <script type="text/javascript">
        jQuery(function ($) {
            "use strict"; // Start of use strict

            $('#ref_enabled').change(function () {
                if ($('#ref_enabled:checked').val()) {
                    $('.ref_req').attr({'required': 'true'});
                }
                else {
                    $('.ref_req').removeAttr('required');
                }
            });

            $('#type').change(function () {
                var selected_text = $('#type option:selected').text();
                $('#min_type_label').text('(' + selected_text + ')');
                $('#max_type_label').text('(' + selected_text + ')');
            });

            $('#type').trigger('change');

        });

        function enable_ref_prog(ref_id, type) {
            if ($('#ref_' + type + '_programs_' + ref_id + ':checked').val()) {
                $('#name_' + type + '_' + ref_id).removeAttr('disabled');
                $('#min_' + type + '_' + ref_id).removeAttr('disabled');
                $('#max_' + type + '_' + ref_id).removeAttr('disabled');
                $('#ref_comm_' + type + '_' + ref_id).removeAttr('disabled');
            }
            else {
                $('#name_' + type + '_' + ref_id).attr({'disabled': 'true'});
                $('#min_' + type + '_' + ref_id).attr({'disabled': 'true'});
                $('#max_' + type + '_' + ref_id).attr({'disabled': 'true'});
                $('#ref_comm_' + type + '_' + ref_id).attr({'disabled': 'true'});
            }

        }

        function enable_ref_levels(ref_id, type) {
            if ($('#ref_level_' + type + '_' + ref_id + ':checked').val()) {
                $('#ref_level_comm_' + type + '_' + ref_id).removeAttr('disabled');
                $('#ref_level_min_' + type + '_' + ref_id).removeAttr('disabled');
            }
            else {
                $('#ref_level_comm_' + type + '_' + ref_id).attr({'disabled': 'true'});
                $('#ref_level_min_' + type + '_' + ref_id).attr({'disabled': 'true'});
            }

        }
    </script>
{/literal}
{/block}