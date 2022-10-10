{block name="page_content"}
    <form class="form-horizontal" name="exchange_system" id="exchange_system" method="post">
        <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
        <input type="hidden" name="action" value="exchange"/>
        {include file="form_status.tpl" form="exchange_system"}
        <div class="form-group">
            <div class="col-md-12">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="exchange[ex_enabled]"
                               id="ex_enabled" value="true"
                               onchange="ex_rates_hide('ex_enabled', 'ex_rates')" {($settings.exchange.ex_enabled)?'checked':''}>
                        {$lang.label.enable_ex_sys}</label>
                </div>
            </div>
        </div>
        <hr>
        <div id="ex_rates" {($settings.exchange.ex_enabled)?'':'class="hide"'}>
            <h3 class="title">{$lang.legend.exchange_fees}</h3>
            {if !empty($processors) && sizeof($processors)>1}
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th></th>
                                {foreach $processors as $proc}
                                    <th class="text-center">
                                        <a href="{$adminbase}/payment_gateways">
                                            <img src="{$admin_assets}/assets/img/processors/{$proc.icon}"
                                                 rel="tooltip" title="{$proc.name}"/>
                                        </a>
                                    </th>
                                {/foreach}
                            </tr>
                        </thead>
                        <tbody>
                            {foreach $processors as $src}
                                <tr>
                                    <th class="text-center" width="1%">
                                        <a href="{$admin_url}/payment_gateways">
                                            <img
                                                    src="{$admin_assets}/assets/img/processors/{$src.icon}"
                                                    data-toggle="tooltip"
                                                    title="{$src.name}"/>
                                        </a>
                                    </th>
                                    {foreach $processors as $dest}
                                        {if $src.id!=$dest.id}
                                            {assign var="exrate_solid" value="{$settings['exchange']["exrate_solid_{$src.nick|cat:'_'|cat:$dest.nick}"]}"}
                                            {assign var="exrate_percentage" value="{$settings['exchange']["exrate_percentage_{$src.nick|cat:'_'|cat:$dest.nick}"]}"}
                                            <td>
                                                <div class="block">
                                                    <input style="width: 90%" type="text"
                                                           name="exchange[exrate_percentage_{$src.nick}_{$dest.nick}]"
                                                           class="form-control inline-block text-center"
                                                           id="exrate_percentage_{$src.nick}_{$dest.nick}"
                                                           value="{($exrate_percentage)?{$exrate_percentage}:'0'}"/>
                                                    <small class="text-muted inline-block">
                                                        %
                                                    </small>
                                                </div>
                                                <div class="block">
                                                    <input style="width: 90%" type="text"
                                                           name="exchange[exrate_solid_{$src.nick}_{$dest.nick}]"
                                                           class="form-control inline-block text-center"
                                                           id="exrate_solid_{$src.nick}_{$dest.nick}"
                                                           value="{($exrate_solid)?{$exrate_solid}:'0'}"/>
                                                    <small class="text-muted inline-block">{$curr_symbol}</small>
                                                </div>
                                            </td>
                                        {else}
                                            <td align="center">
                                                <span class="text-danger">N/A</span>
                                            </td>
                                        {/if}
                                    {/foreach}
                                </tr>
                            {/foreach}
                        </tbody>
                    </table>
                    <small class="help-block text-muted clearfix">{$lang.msg.disable_ex_set}</small>
                </div>
            {else}
                <div class="alert alert-warning">
                    <i class="fa fa-exclamation-triangle"></i> {$lang.error.active_atleast_two_proc}
                </div>
            {/if}
            <hr>
        </div>
        <button type="submit" class="btn btn-primary">{$lang.label.update}</button>
    </form>
{/block}

{block name="foo" append}
    <script type="text/javascript">
        {literal}
        function ex_rates_hide(i, j) {
            if ($('#' + i + ':checked').val()) {
                $('#' + j).removeClass('hide');
            }
            else {
                $('#' + j).addClass('hide');
            }
        }
        {/literal}
    </script>
{/block}