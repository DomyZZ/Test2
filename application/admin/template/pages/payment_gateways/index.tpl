{block name="page_content"}
    <div class="row">
        <div class="col-sm-12 col-md-8">
            {foreach $active_processors as $proc}
                <form class="payment-gateways" name="payment_gateways_{$proc.nick}"
                      id="{$proc.nick}" method="post" action="{$admin_url}/payment_gateways/{$proc.nick}/update">
                    <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}" />
                    <div class="panel {($proc.hidden=='yes')?'panel-warning':'panel-primary'}">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <img src="{$admin_assets}/assets/img/processors/{$proc.icon}"
                                     style="margin-top: -2px"> &nbsp;{$proc.name|strtoupper}
                                <a href="javascript:void(0)" data-toggle="tooltip" class="btn btn-danger btn-xs"
                                   onclick="confirm_delete('{$lang.msg.confirm_payment_gateway_delete}', '{$admin_url}/payment_gateways/{$proc.nick}/deactivate');"
                                   style="float: right;color: #fff">{$lang.label.deactivate}</a>
                            </div>
                        </div>
                        {include file="form_status.tpl" form="payment_gateway_{$proc.nick}"}
                        <div class="panel-body">
                            <div class="form-group">
                                <label class="checkbox-inline"
                                       for="hidden_{$proc.nick}">
                                    <input type="checkbox" name="hidden"
                                           id="hidden_{$proc.nick}"
                                           value="true" {($proc.hidden == 'yes')?'checked=""':''}>{$lang.label.do_not_show_site}
                                </label>
                            </div>
                            {if $proc.p_type=="system"}
                                <div class="row">
                                    <div class="col-md-6">
                                        <h5 class="title">{$lang.legend.sci_details}</h5>
                                        <small class="help-block text-muted">({$lang.label.for_deposit_addfunds})
                                            <a href="#" class="pull-right" id="sci-{$proc.nick}" data-toggle="modal"
                                               data-target="#help-sci-{($proc.type=='fiat')?$proc.nick:(($proc.payment_details.payment_system)?{$proc.payment_details.payment_system|cat:'-'|cat:$proc.nick}:'coinpayments_api-'|cat:$proc.nick)}">{$lang.label.how_to}
                                                ?
                                            </a>
                                        </small>
                                        {include file="payment_gateways/proc/{$proc.nick}.tpl" type="sci"}
                                    </div>
                                    <div class="col-md-6">
                                        <h5 class="title">{$lang.legend.api_details}</h5>
                                        <small class="help-block text-muted">({$lang.label.for_withdraw})
                                            <a href="#" class="pull-right" data-toggle="modal" id="api-{$proc.nick}"
                                               data-target="#help-api-{($proc.type=='fiat')?$proc.nick:(($proc.payment_details.api.payment_system)?{$proc.payment_details.api.payment_system|cat:'-'|cat:$proc.nick}:'coinpayments-'|cat:$proc.nick)}">{$lang.label.how_to}
                                                ?
                                            </a>
                                        </small>
                                        {include file="payment_gateways/proc/{$proc.nick}.tpl" type="api"}
                                        <div class="form-group"
                                             style="background: transparent !important;text-align: right;margin-bottom: 10px">
                                            <a href="javascript:void(0)"
                                               onclick="test_api('{$proc.nick}', {$proc.id})">{$lang.label.test_api}</a>
                                        </div>
                                    </div>
                                </div>
                            {elseif $proc.p_type=="custom"}
                                <div class="row" id="custom_{$proc.nick}">
                                    <div class="col-md-12">
                                        {include file="payment_gateways/proc/custom.tpl"}
                                    </div>
                                </div>
                            {/if}
                        </div>
                        <div class="panel-footer">
                            {if $settings.req_admin_secondary_pass}
                                <div class="form-group">
                                    <label class="text-danger"
                                           style="font-size: 12px">{$lang.label.admin_secondary_password}: </label>
                                    <input type="password" class="form-control input-sm input-md-3"
                                           name="alt_password" id="alt_password"
                                           required />
                                </div>
                            {/if}
                            <button type="submit"
                                    class="btn btn-success btn-sm">{$lang.label.update}</button>
                        </div>
                    </div>
                </form>
                {foreachelse}
                <div class="no-payment-gateways">
                    <strong class="text-danger">{$lang.error.no_active_payment_gateways}</strong>
                    <br> <span class="text-muted">{$lang.error.activate_from_right}</span>
                </div>
            {/foreach}
        </div>
        <div class="col-sm-12 col-md-4">
            <!-- Inactive payment gateways -->
            <div class="panel panel-default pgt-list" id="pgt-list-sticky">
                <div class="panel-heading">
                    <div class="panel-title">
                        {$lang.label.payment_gateways}
                    </div>
                </div>
                <div class="panel-body">
                    {foreach $processors as $proc}
                        <div class="pgt-box" data-toggle="tooltip" data-placement="top" title="{$proc.name}">
                            {if $proc.status=='active'}
                                <a href="{$admin_url}/payment_gateways#{$proc.nick}"
                                   class="btn btn-sm btn-block btn-success" readonly>
                                    <img src="{$admin_assets}/assets/img/processors/{$proc.icon}" />
                                    <span>{$proc.name}</span>
                                </a>
                            {else}
                                <a href="{$admin_url}/payment_gateways/{$proc.nick}/activate"
                                   class="btn btn-sm btn-block btn-default">
                                    <img src="{$admin_assets}/assets/img/processors/{$proc.icon}" />
                                    <span>{$proc.name}</span>
                                </a>
                            {/if}
                        </div>
                    {/foreach}
                </div>
            </div>
        </div>
    </div>
{/block}

{block name="foo" append}
    <!-- BlockUI js -->
    <script src="{$admin_assets}/assets/plugins/jqueryBlockUI/jquery.blockUI.js" type="text/javascript"></script>
    <!-- ckeditor js -->
    <script src="{$admin_assets}/assets/plugins/ckeditor/ckeditor.js" type="text/javascript"></script>
    <script type="text/javascript">
        {literal}
        $(document).ready(function () {
            $('.custom_p_details').each(function (e) {
                CKEDITOR.replace(this.id, {
                    height: '300px',
                    fullPage: false,
                    allowedContent: true,
                    toolbarGroups: [
                        {name: 'document', groups: ['mode', 'document']},
                        {name: 'basicstyles', groups: ['basicstyles']},
                        {name: 'paragraph', groups: ['list', 'indent', 'blocks', 'align', 'paragraph']}
                    ]
                });
            });

            function pgtSticky() {
                var pgt_list = document.getElementById("pgt-list-sticky");
                var pgt_list_sticky = pgt_list.offsetTop;

                if (window.pageYOffset > pgt_list_sticky) {
                    pgt_list.classList.add("pgt-list-sticky");
                } else {
                    pgt_list.classList.remove("pgt-list-sticky");
                }
            }

            window.onscroll = function () {
                pgtSticky()
            };

        });

        function show_ps_details(type, nick) {

            var ps = ["coinpayments", "coinpayments_api", "blockio", "forwardblock", "blocktrail", "stripe", "blockcypher", "paykassa", "paykassa_api", "cryptocurrencyapi"];

            var ps_len = ps.length;

            for (var i = 0; i < ps_len; i++) {
                console.log($('#' + type + '_' + nick + '_payment_system').val());
                if ($('#' + type + '_' + nick + '_payment_system').val() === ps[i]) {
                    $('#' + type + '_' + ps[i] + '_' + nick).removeClass('hide');
                } else {
                    $('#' + type + '_' + ps[i] + '_' + nick).addClass('hide');
                }
            }

            $('#' + type + '-' + nick).attr({'data-target': '#help-' + type + '-' + $('#' + type + '_' + nick + '_payment_system').val() + '-' + nick})

        }

        function change_fields(c_id, i_id) {
            if ($('#' + c_id + ':checked').val()) {
                $('#' + i_id).removeAttr('disabled');
            } else {
                $('#' + i_id).attr({'disabled': 'true'});
            }
        }

        function change_fee_type(id1, id2) {
            if ($('#' + id2).val() == 'solid')
                $('#' + id1).addClass('hide');
            else
                $('#' + id1).removeClass('hide');
        }

        function test_api(nick, id) {
            var url = dqs_admin_url + '/payment_gateways/' + nick + '/test_api';

            $.blockUI({
                message: 'Please wait...', css: {
                    border: 'none',
                    padding: '15px',
                    left: '40%',
                    width: '300px',
                    backgroundColor: '#000',
                    '-webkit-border-radius': '10px',
                    '-moz-border-radius': '10px',
                    opacity: .5,
                    color: '#fff'
                }
            });

            $.ajax({
                type: "POST",
                dataType: "json",
                url: url,
                data: $('form#' + nick).serialize() + '&' + $.param({'id': id}),
                success: function (data) {
                    $.unblockUI();
                    alert(data['title'] + " : " + data['text']);
                },
                error: function () {
                    $.unblockUI();
                    alert('Failed!');
                }
            });

        }
        {/literal}
    </script>
{/block}