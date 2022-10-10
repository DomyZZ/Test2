{block name="breadcrumb"}
    <li>
        <a href="{$admin_url}/pending_withdrawals">{$lang.breadcrumb.pending_withdrawals}</a>
    </li>
    <li class="active">{$lang.breadcrumb.mass_pay}</li>
{/block}

{block name="page_content"}
    <form class="form-horizontal" name="mass_pay" id="mass_pay" method="post">
        <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
        {include file="form_status.tpl" form="mass_pay"}

        {foreach $processors as $proc}
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <img src="{$admin_assets}/assets/img/processors/{$proc.icon}"
                                     style="margin-top: -2px"> &nbsp;{$proc.name|strtoupper} &nbsp;<small style="color: #e8e8e8">
                                    ({$lang.label.total_payment_amount}:
                                    <span style="color: #b4ff5b">{$proc.total_amount|clean}</span> {$proc.curr_nick|strtoupper}
                                    )
                                </small>
                            </div>
                        </div>
                        <div class="panel-body">
                            {include file="form_status.tpl" form="test_api_{$proc.nick}"}
                            <div class="row">
                                <div class="col-sm-12">
                                    <input type="hidden" name="{$proc.nick}[id]" value="{$proc.id}">
                                    <select name="{$proc.nick}[api_type]" id="api_type_{$proc.nick}"
                                            class="form-control input-auto input-sm"
                                            onchange="api_custom_details('{$proc.nick}', '{$proc.type}')"
                                            required>
                                        <option value="system">{$lang.label.pay_saved_api}</option>
                                        <option value="custom">{$lang.label.pay_other_account}</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row api_custom_details" style="margin-top: 10px">
                                <div class="col-md-5">
                                    {include file="pending_withdrawals/proc.tpl"}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        {/foreach}

        <hr>

        {if $req_admin_secondary_pass}
            <div class="form-group">
                <label class="control-label col-md-2 text-danger">{$lang.label.admin_secondary_password}</label>
                <div class="col-md-3">
                    <input type="password" class="form-control input-sm"
                           name="alt_password" id="alt_password"
                           required/>
                </div>
            </div>
        {else}
            <div class="form-group">
                <label class="control-label col-md-2 text-danger">{$lang.label.admin_current_password}</label>
                <div class="col-md-3">
                    <input type="password" class="form-control input-sm"
                           name="current_password"
                           id="current_password" required/>
                </div>
            </div>
        {/if}

        <hr>

        <button type="submit" class="btn btn-success">{$lang.label.pay}</button>
    </form>
{/block}

{block name="foo" append}
    <!-- BlockUI js -->
    <script src="{$admin_assets}/assets/plugins/jqueryBlockUI/jquery.blockUI.js" type="text/javascript"></script>
    <script type="text/javascript">
        {literal}
        function api_custom_details(nick, type) {
            if ($('#api_type_' + nick).val() == 'custom') {
                $('#api_custom_' + nick).removeClass('hide');
                $('#api_custom_' + nick + ' .form-control').removeAttr('disabled');
            }
            else {
                $('#api_custom_' + nick).addClass('hide');
                $('#api_custom_' + nick + ' .form-control').attr({'disabled': 'true'});
            }

            if (type == 'crypto') {
                custom_crypto_details(nick, type);
            }
        }

        function custom_crypto_details(nick) {
            var crypto_procs = ['coinpayments', 'blockio', 'forwardblock', 'apibtc', 'blocktrail', 'paykassa'];

            for (var i = 0; i < crypto_procs.length; i++) {
                if ($('#payment_system_' + nick).val() == crypto_procs[i] && $('#api_type_' + nick).val() == 'custom') {
                    $('#api_custom_' + nick + ' .' + crypto_procs[i] + '_details').removeClass('hide');
                    $('#api_custom_' + nick + ' .input_' + crypto_procs[i]).removeAttr('disabled');
                }
                else {
                    $('#api_custom_' + nick + ' .' + crypto_procs[i] + '_details').addClass('hide');
                    $('#api_custom_' + nick + ' .input_' + crypto_procs[i]).attr({'disabled': 'true'});
                }
            }
        }

        function test_api(nick) {
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
                data: $('form#mass_pay').serialize(),
                success: function (data) {
                    $.unblockUI();
                    alert(data['title'] + " : "  + data['text']);
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
