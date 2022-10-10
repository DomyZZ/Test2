{extends file="users/manage.tpl"}

{block name="head" append}
    <!-- Select2 -->
    <link href="{$admin_assets}/assets/plugins/select2/css/select2.min.css" rel="stylesheet"/>
{/block}

{block name="manage_user"}
    <h3 class="title">{$lang.legend.referrals}</h3>
    <form name="manage_referrals" id="manage_referrals" method="post"
          action="{$admin_url}/users/{$user.id}/referrals">
        <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
        <input type="hidden" name="ref" value="1"/>
        {include file="form_status.tpl" form="manage_referrals"}
        <div class="table-responsive">
            <table class="table table-striped-left">
                <tbody>
                <tr>
                    <td width="50%">
                        {$lang.label.total_referrals}
                    </td>
                    <td>
                        {$total_refs}
                    </td>
                </tr>
                <tr>
                    <td>
                        {$lang.label.active_dep_referrals}
                    </td>
                    <td>
                        {$total_act_refs}
                    </td>
                </tr>
                <tr>
                    <td>
                        {$lang.label.upline}
                    </td>
                    <td>
                        <select name="upline" id="upline" class="form-control inline-block" style="width: 60%"></select>
                        <button type="submit" class="btn btn-success btn-sm inline-block"
                                style="line-height: 1.9">{$lang.label.set}
                        </button>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </form>
    <h3 class="title">{$lang.legend.direct_referrals}</h3>
    {if $all_referrals}
        <div class="table-responsive">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>{$lang.label.username}</th>
                    <th>{$lang.label.email}</th>
                    <th>{$lang.label.total_deposits} ( {$curr_symbol}{$total_ref_deposits} )</th>
                </tr>
                </thead>
                <tbody>
                {foreach $all_referrals as $ref}
                    <tr>
                        <td>
                            <a href="{$admin_url}/users/{$ref.u_id}/profile" data-toggle="tooltip"
                               title="{$lang.label.manage} {$lang.label.user}">{$ref.username}</a>
                        </td>
                        <td>
                            {$ref.email}
                        </td>
                        {if $ref.dep_amount}
                            <td>
                                {$curr_symbol}{$ref.dep_amount|truncdec:$curr_decp}
                            </td>
                        {else}
                            <td>--</td>
                        {/if}
                    </tr>
                {/foreach}
                </tbody>
            </table>
        </div>
    {else}
        <div class="alert alert-warning ">
            <i class="fa fa-exclamation-triangle"></i> {$lang.msg.no_ref_found}
        </div>
    {/if}
{/block}

{block name="foo" append}
    <!-- Select2 -->
    <script src="{$admin_assets}/assets/plugins/select2/js/select2.min.js"></script>
    <script type="text/javascript">
        {literal}
        $(document).ready(function () {
            {/literal}
            {if $upline_user}
            var newOption = new Option('{$upline_user.username}', {$upline_user.id}, true, true);
            $('#upline').append(newOption);
            {/if}
            {literal}
            $('#upline').select2({
                placeholder: "Select an upline",
                minimumInputLength: 2,
                allowClear: true,
                ajax: {
                    url: dqs_admin_url + '/users/search',
                    dataType: 'json',
                    type: "GET",
                    quietMillis: 250,
                    data: function (term, page) {
                        return {
                            name: term.term
                        };
                    },
                    processResults: function (data) {
                        return {
                            results: data
                        };
                    }
                }
            });
        });
        {/literal}
    </script>
{/block}