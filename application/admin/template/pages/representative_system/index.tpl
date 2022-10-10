{block name="page_content"}
    <form class="form-horizontal" name="representative_system" id="representative_system"
          method="post" action="{$admin_url}/representative_system">
        <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
        {include file="form_status.tpl" form="representative_system"}
        <div class="form-group">
            <div class="col-md-12">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="rep_settings[rep_enabled]"
                               id="rep_enabled"
                               value="true" {($representative_settings.rep_enabled)?'checked':''}> {$lang.label.enable_rep_system}
                    </label>
                </div>
            </div>
        </div>
        <hr>
        <h3 class="title">{$lang.legend.rep_app_req}</h3>
        <div class="form-group">
            <label for="min_representative_deposit"
                   class="control-label col-md-3">{$lang.label.min_dep_amount} ({$curr_symbol})</label>
            <div class="col-md-9">
                <input type="text" class="form-control input-auto"
                       name="rep_settings[min_representative_deposit]"
                       id="min_representative_deposit"
                       value="{($representative_settings.min_representative_deposit)?$representative_settings.min_representative_deposit:'0'}"/>
            </div>
        </div>
        <div class="form-group">
            <label for="min_representative_referral"
                   class="control-label col-md-3">{$lang.label.min_no_referrals}</label>
            <div class="col-md-9">
                <input type="text" class="form-control input-auto"
                       name="rep_settings[min_representative_referral]"
                       id="min_representative_referral"
                       value="{($representative_settings.min_representative_referral)?$representative_settings.min_representative_referral:'0'}"/>
            </div>
        </div>
        <div class="form-group">
            <label for="min_representative_active_referral"
                   class="control-label col-md-3">{$lang.label.min_no_active_referrals}</label>
            <div class="col-md-9">
                <input type="text" class="form-control input-auto"
                       name="rep_settings[min_representative_active_referral]"
                       id="min_representative_active_referral"
                       value="{($representative_settings.min_representative_active_referral)?$representative_settings.min_representative_active_referral:'0'}"/>
            </div>
        </div>
        <hr>
        <ul class="nav nav-tabs dq-nav hide" id="dq-tab">
            {for $i=1; $i<6; $i++}
                <li>
                    <a href="#rep_level_{$i}" data-toggle="tab" role="tab">{$lang.label.representative_level} {$i}</a>
                </li>
            {/for}
        </ul>
        <div class="tab-content" id="dq-tab-content">
            {for $i=1; $i<6; $i++}
                <div class="tab-pane fade" id="rep_level_{$i}">
                    <div class="panel-body">
                        <div class="form-group">
                            <div class="col-md-12">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="repr_levels[{$i}][enabled]"
                                               id="repr_level_enabled_{$i}"
                                               value="true" {($repr_levels[{$i}]['id']>0)?'checked':''}>
                                        {$lang.label.enable_representative_level} {$i}
                                    </label>
                                </div>
                                {if $repr_levels[{$i}]['id']>0}
                                    <input type="hidden" name="repr_levels[{$i}][id]" id="repr_level_id_{$i}"
                                           value="{$repr_levels[{$i}]['id']}">
                                {/if}
                            </div>
                        </div>
                        <hr>
                        <div class="table-responsive">
                            <table id="table-plan" class="table table-bordered table-plan" style="width: 60%">
                                <thead>
                                    <tr>
                                        <th class="text-center">{$lang.label.ref_comm_dep} (%)</th>
                                        {*  <th class="text-center">{$lang.label.ref_comm_earn} (%)</th>*}
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <input type="text"
                                                   class="form-control  text-center"
                                                   name="repr_levels[{$i}][ref_comm_deposit]"
                                                   id="repr_level_ref_comm_deposit_{$i}"
                                                   value="{($repr_levels[{$i}]['ref_comm_deposit'])?clean_zeros($repr_levels[{$i}]['ref_comm_deposit']):'0'}"/>
                                        </td>
                                        {* <td>
                                             <input type="text"
                                                    class="form-control  text-center"
                                                    name="repr_levels[{$i}][ref_comm_earning]"
                                                    id="repr_level_ref_comm_earning_{$i}"
                                                    value="{($repr_levels[{$i}]['ref_comm_earning'])?clean_zeros($repr_levels[{$i}]['ref_comm_earning']):'0'}"/>
                                         </td>*}
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <h3 class="title">{$lang.legend.other_ref_levels}</h3>
                        <div class="table-responsive">
                            <table id="table-plan" class="table table-bordered table-plan" style="width: 60%">
                                <thead>
                                    <tr>
                                        <th width="1%"></th>
                                        <th class="text-center">{$lang.label.level}</th>
                                        <th class="text-center">{$lang.label.ref_comm_dep} (%)</th>
                                        {*<th class="text-center">{$lang.label.ref_comm_earn} (%)</th>*}
                                    </tr>
                                </thead>
                                <tbody>
                                    {if !empty($repr_levels[{$i}]['other_ref_levels'])}
                                        {assign var="other_ref_levels" value=unserialize($repr_levels[{$i}]['other_ref_levels'])}
                                    {else}
                                        {assign var="other_ref_levels" value=NULL}
                                    {/if}
                                    {for $j=0; $j<9; $j++}
                                        {assign var="ref_level" value=$j+2}
                                        <tr>
                                            <td width="1%" class="text-center">
                                                <input type="checkbox"
                                                       name="repr_levels[{$i}][other_ref_levels][{$ref_level}][row]"
                                                       id="other_ref_level_{$i}_{$j}"
                                                       onchange="enable_ref_levels({$i}, {$j})" {($other_ref_levels[$ref_level]['row'])?'checked="checked"':''}
                                                       value="true">
                                            </td>
                                            <td width="2%" align="center"
                                                style="vertical-align: middle;">
                                                <span class="label label-info">{$ref_level}</span>
                                            </td>
                                            <td>
                                                <input type="text"
                                                       class="form-control  text-center"
                                                       name="repr_levels[{$i}][other_ref_levels][{$ref_level}][ref_comm_deposit]"
                                                       id="other_ref_level_deposit_{$i}_{$j}"
                                                       value="{($other_ref_levels[$ref_level]['ref_comm_deposit'])?$other_ref_levels[$ref_level]['ref_comm_deposit']:'0'}" {($other_ref_levels[$ref_level]['row'])?'':'disabled="disabled"'} />
                                            </td>
                                            {*<td>
                                                <input type="text"
                                                       class="form-control  text-center"
                                                       name="repr_levels[{$i}][other_ref_levels][{$ref_level}][ref_comm_earning]"
                                                       id="other_ref_level_earning_{$i}_{$j}"
                                                       value="{($other_ref_levels[$ref_level]['ref_comm_earning'])?$other_ref_levels[$ref_level]['ref_comm_earning']:'0'}" {($other_ref_levels[$ref_level]['row'])?'':'disabled="disabled"'} />
                                            </td>*}
                                        </tr>
                                    {/for}
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            {/for}
        </div>
        <hr>
        <button type="submit" class="btn btn-primary"
                onclick="update_tab_form('representative_system')">{$lang.label.update}</button>
    </form>
{/block}

{block name="foo" append}
{literal}
    <script type="text/javascript">
        jQuery(function ($) {
            "use strict"; // Start of use strict

            $('#rep_enabled').change(function () {
                if ($('#rep_enabled:checked').val()) {
                    $('.ref_req').attr({'required': 'true'});
                } else {
                    $('.ref_req').removeAttr('required');
                }
            });

        });

        function enable_ref_levels(i, j) {
            if ($('#other_ref_level_' + i + '_' + j + ':checked').val()) {
                $('#other_ref_level_deposit_' + i + '_' + j).removeAttr('disabled');
                $('#other_ref_level_earning_' + i + '_' + j).removeAttr('disabled');
            } else {
                $('#other_ref_level_deposit_' + i + '_' + j).attr({'disabled': 'true'});
                $('#other_ref_level_earning_' + i + '_' + j).attr({'disabled': 'true'});
            }

        }
    </script>
{/literal}
{/block}