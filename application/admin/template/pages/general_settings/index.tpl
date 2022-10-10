{block name="page_content"}
    <form class="form-horizontal" name="general_settings" id="general_settings" method="post">
        <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}" />
        {include file="form_status.tpl" form="general_settings"}
        <!-- Nav tabs -->
        <ul class="nav nav-tabs dq-nav hide" id="dq-tab">
            <li>
                <a href="#site" data-toggle="tab" role="tab">{$lang.nav.site}</a>
            </li>
            <li>
                <a href="#site_functions" data-toggle="tab" role="tab">{$lang.nav.site_functions}</a>
            </li>
            <li>
                <a href="#site_security" data-toggle="tab" role="tab">{$lang.nav.site_security}</a>
            </li>
            <li>
                <a href="#admin_security" data-toggle="tab" role="tab">{$lang.nav.admin_security}</a>
            </li>
            <li>
                <a href="#mail" data-toggle="tab" role="tab">{$lang.nav.mail}</a>
            </li>
            <li>
                <a href="#crate" data-toggle="tab" role="tab">{$lang.nav.currency_rates}</a>
            </li>
            <li>
                <a href="#cron" data-toggle="tab" role="tab">{$lang.nav.cron}</a>
            </li>
        </ul>
        <!-- Tab panels -->
        <div class="tab-content" id="dq-tab-content">
            <div class="tab-pane fade" id="site">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="site_name"
                                       class="control-label col-md-4">{$lang.label.site_name}</label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control"
                                           name="general[site_name]"
                                           id="site_name"
                                           value="{($settings.general.site_name)?$settings.general.site_name:$site_host}" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="started_on"
                                       class="control-label col-md-4">{$lang.label.started_on}</label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control input-md-3"
                                           name="general[started_on]" autocomplete="off" required
                                           id="started_on"
                                           value="{($settings.general.started_on)?$settings.general.started_on:''}" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="force_https"
                                       class="control-label col-md-4">{$lang.label.force_https}</label>
                                <div class="col-md-8">
                                    <input type="checkbox" name="general[force_https]"
                                           id="force_https"
                                           value="true" {($settings.general.force_https)?'checked=""':''}>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="timezone"
                                       class="control-label col-md-4">{$lang.label.timezone}</label>
                                <div class="col-md-8">
                                    {timezone_menu({($settings.general.timezone)?$settings.general.timezone:'UTC'}, 'form-control', 'general[timezone]', 'id="timezone"')}
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="admin_uri"
                                       class="control-label col-md-4">{$lang.label.admin_uri}</label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control input-md-5" autocomplete="off"
                                           name="general[admin_uri]"
                                           id="admin_uri"
                                           aria-describedby="admin_uri_help"
                                           value="{($settings.general.admin_uri)?$settings.general.admin_uri:'admin'}" />
                                    <small id="admin_uri_help"
                                           class="help-block text-muted">{$lang.msg.change_admin_url}
                                        <br>
                                        <b>{$lang.label.admin_url}:</b> {$base_url}/<span
                                                id="new_admin_uri"></span>/
                                    </small>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="currency_decp"
                                       class="control-label col-md-4">{$lang.label.decimal_places}</label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control input-md-6"
                                           name="general[currency_decp]"
                                           id="currency_decp"
                                           value="{($settings.general.currency_decp)?$settings.general.currency_decp:'2'}" />
                                    <small class="help-block text-muted">
                                        {$lang.msg.no_decimal_places}
                                    </small>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="site_maintenance"
                                       class="control-label col-md-4">{$lang.label.maintenance_mode}</label>
                                <div class="col-md-8">
                                    <input type="checkbox" name="general[site_maintenance]"
                                           id="site_maintenance"
                                           value="true" {($settings.general.site_maintenance)?'checked=""':''}>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="site_maintenance_ips"
                                       class="control-label col-md-4">{$lang.label.maintenance_ip_whitelist}</label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control input-md-6"
                                           name="general[site_maintenance_ips]"
                                           id="site_maintenance_ips"
                                           placeholder="192.168.1.10,202.49.5.8,......"
                                           value="{($settings.general.site_maintenance_ips)?$settings.general.site_maintenance_ips:''}" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="site_maintenance_msg"
                                       class="control-label col-md-4">{$lang.label.maintenance_msg}</label>
                                <div class="col-md-8">
                                            <textarea class="form-control input-md-6"
                                                      name="general[site_maintenance_msg]"
                                                      id="site_maintenance_msg">{($settings.general.site_maintenance_msg)?$settings.general.site_maintenance_msg:''}</textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="site_functions">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="disable_signups"
                                       class="control-label col-md-4">{$lang.label.disable_registration}</label>
                                <div class="col-md-8">
                                    <input type="checkbox" name="general[disable_signups]"
                                           id="disable_signups"
                                           value="true" {($settings.general.disable_signups)?'checked=""':''}>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="disable_deposits"
                                       class="control-label col-md-4">{$lang.label.disable_deposit}</label>
                                <div class="col-md-8">
                                    <input type="checkbox" name="general[disable_deposits]"
                                           id="disable_deposits"
                                           value="true" {($settings.general.disable_deposits)?'checked=""':''}>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="disable_withdrawals"
                                       class="control-label col-md-4">{$lang.label.disable_withdrawal}</label>
                                <div class="col-md-8">
                                    <input type="checkbox" name="general[disable_withdrawals]"
                                           id="disable_withdrawals"
                                           value="true" {($settings.general.disable_withdrawals)?'checked=""':''}>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <h3 class="title">{$lang.legend.user_registration}</h3>
                                    <div class="form-group">
                                        <label for="double_optin_reg"
                                               class="control-label col-md-8">{$lang.label.conf_email_after_reg}</label>
                                        <div class="col-md-4">
                                            <input type="checkbox" name="general[double_optin_reg]"
                                                   id="double_optin_reg"
                                                   value="true" {($settings.general.double_optin_reg)?'checked=""':''}>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="contact_details_reqd"
                                               class="control-label col-md-8">{$lang.label.contact_details_req}</label>
                                        <div class="col-md-4">
                                            <input type="checkbox" name="general[contact_details_reqd]"
                                                   id="contact_details_reqd"
                                                   value="true" {($settings.general.contact_details_reqd)?'checked=""':''}>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="req_sec_pass" class="control-label col-md-8">
                                            Require secondary password during registration
                                        </label>
                                        <div class="col-md-4">
                                            <input type="checkbox" name="general[req_sec_pass]"
                                                   id="req_sec_pass"
                                                   value="true" {($settings.general.req_sec_pass)?'checked=""':''}>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <h3 class="title">{$lang.legend.user_profile}</h3>
                                    <div class="form-group">
                                        <label for="can_change_email"
                                               class="control-label col-md-8">{$lang.label.can_change_email}</label>
                                        <div class="col-md-4">
                                            <input type="checkbox" name="general[can_change_email]"
                                                   id="can_change_email"
                                                   value="true" {($settings.general.can_change_email)?'checked=""':''}>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="can_change_wallet_acc"
                                               class="control-label col-md-8">{$lang.label.can_edit_wallet_acc}</label>
                                        <div class="col-md-4">
                                            <input type="checkbox" name="general[can_change_wallet_acc]"
                                                   id="can_change_wallet_acc"
                                                   value="true" {($settings.general.can_change_wallet_acc)?'checked=""':''}>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <h3 class="title">{$lang.legend.user_deposit}</h3>
                                    <div class="form-group">
                                        <label for="allow_dep_from_acc"
                                               class="control-label col-md-8">{$lang.label.allow_dep_package_from_acc}
                                            <small class="text-muted block">({$lang.label.allow_dep_help_txt})</small>
                                        </label>
                                        <div class="col-md-4">
                                            <input type="checkbox" name="general[allow_dep_from_acc]"
                                                   id="allow_dep_from_acc"
                                                   value="true" {($settings.general.allow_dep_from_acc)?'checked=""':''}>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="allow_dep_acc_balance"
                                               class="control-label col-md-8">{$lang.label.allow_dep_acc_balance}
                                            <small class="text-muted block">({$lang.label.allow_dep_acc_help_txt})
                                            </small>
                                        </label>
                                        <div class="col-md-4">
                                            <input type="checkbox" name="general[allow_dep_acc_balance]"
                                                   id="allow_dep_acc_balance"
                                                   value="true" {($settings.general.allow_dep_acc_balance)?'checked=""':''}>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <h3 class="title">{$lang.legend.user_withdrawal}</h3>
                                    <div class="form-group">
                                        <label for="enable_auto_withdrawal"
                                               class="control-label col-md-8">{$lang.label.allow_auto_withdrawal}</label>
                                        <div class="col-md-4">
                                            <input type="checkbox" name="general[enable_auto_withdrawal]"
                                                   id="enable_auto_withdrawal"
                                                   value="true" {($settings.general.enable_auto_withdrawal)?'checked=""':''}>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="enable_auto_withdrawal"
                                               class="control-label col-md-8">{$lang.label.max_auto_withdrawal}
                                        </label>
                                        <div class="col-md-4">
                                            <div class="input-group">
                                                <span
                                                        class="input-group-addon"
                                                        style="font-weight: bold">{{$curr_symbol}}</span>
                                                <input type="text" class="form-control"
                                                       name="general[max_auto_withdrawal]" id="max_auto_withdrawal"
                                                       aria-describedby="max_auto_withdrawal_help"
                                                       value="{($settings.general.max_auto_withdrawal)?$settings.general.max_auto_withdrawal:'0'}" />
                                            </div>
                                            <small id="max_auto_withdrawal_help"
                                                   class="help-block text-muted">{$lang.msg.set_zero_nolimit}</small>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="can_cancel_withdrawal"
                                               class="control-label col-md-8">{$lang.label.cancel_withdrawal_request}</label>
                                        <div class="col-md-4">
                                            <input type="checkbox" name="general[can_cancel_withdrawal]"
                                                   id="can_cancel_withdrawal"
                                                   value="true" {($settings.general.can_cancel_withdrawal)?'checked=""':''}>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <h3 class="title">{$lang.legend.user_internal_transfer}</h3>
                                    <div class="form-group">
                                        <label for="allow_itransfers"
                                               class="control-label col-md-8">{$lang.label.allow_itrans}</label>
                                        <div class="col-md-4">
                                            <input type="checkbox" name="general[allow_itransfers]"
                                                   id="allow_itransfers"
                                                   value="true" {($settings.general.allow_itransfers)?'checked=""':''}>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="deduct_fee_from"
                                               class="control-label col-md-8">{$lang.label.deduct_fees_from}</label>
                                        <div class="col-md-4">
                                            <select name="general[deduct_fee_from]" id="deduct_fee_from"
                                                    class="form-control input-auto">
                                                <option value="payer" {($settings.general.deduct_fee_from=="payer")?"selected":""}>{$lang.label.payer}</option>
                                                <option value="payee" {($settings.general.deduct_fee_from=="payee")?"selected":""}>{$lang.label.payee}</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <h3 class="title">Other</h3>
                                    <div class="form-group">
                                        <label for="force_secondary_password"
                                               class="control-label col-md-8">Force Secondary password</label>
                                        <div class="col-md-4">
                                            <input type="checkbox" name="general[force_secondary_password]"
                                                   id="force_secondary_password"
                                                   value="true" {($settings.general.force_secondary_password)?'checked=""':''}>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="force_strong_password"
                                               class="control-label col-md-8">Force Strong password</label>
                                        <div class="col-md-4">
                                            <input type="checkbox" name="general[force_strong_password]"
                                                   id="force_strong_password"
                                                   value="true" {($settings.general.force_strong_password)?'checked=""':''}>
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="site_security">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="title no-margin-top">{$lang.legend.login_failures}</h3>
                            <div class="form-group">
                                <label for="max_attempts_signin"
                                       class="control-label col-md-4">{$lang.label.allow_max_login_attempts}
                                </label>
                                <div class="col-md-2">
                                    <input type="text" class="form-control input-md-1"
                                           name="general[max_attempts_signin]"
                                           id="max_attempts_signin" aria-describedby="max_attempts_signin_help"
                                           value="{($settings.general.max_attempts_signin)?$settings.general.max_attempts_signin:'0'}" />
                                    <small id="max_attempts_signin_help"
                                           class="help-block text-muted">{$lang.label.set_zero_to_disable}</small>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="banned_timeout_signin"
                                       class="control-label col-md-4">{$lang.label.ban_time_max_login_attempts}
                                </label>
                                <div class="col-md-8">
                                    <div class="input-group col-md-3">
                                        <input type="text" class="form-control text-right"
                                               name="general[banned_timeout_signin]" id="banned_timeout_signin"
                                               aria-describedby="banned_timeout_signin_help"
                                               value="{($settings.general.banned_timeout_signin)?$settings.general.banned_timeout_signin:'0'}" /><span
                                                class="input-group-addon"
                                                style="padding-left: 2px !important;">min(s)</span>
                                    </div>
                                    <small id="banned_timeout_signin_help"
                                           class="help-block text-muted">{$lang.msg.set_zero_norestriction}</small>
                                </div>
                            </div>
                            <h3 class="title">{$lang.legend.captcha}</h3>
                            <div class="form-group">
                                <label for="req_captcha"
                                       class="control-label col-md-4">{$lang.label.use_captcha_verification}</label>
                                <div class="col-md-8">
                                    <input type="checkbox" name="general[req_captcha]"
                                           id="req_captcha"
                                           value="true" {($settings.general.req_captcha)?'checked=""':''}>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-4">{$lang.label.show_captcha_pages}</label>
                                <div class="col-md-8">
                                    <div class="checkbox-inline">
                                        <input type="checkbox" name="general[use_login_captcha]"
                                               id="use_login_captcha"
                                               value="true" {($settings.general.use_login_captcha)?'checked=""':''}>
                                        <label for="use_login_captcha"> {$lang.label.login} </label>
                                    </div>
                                    <div class="checkbox-inline">
                                        <input type="checkbox" name="general[use_register_captcha]"
                                               id="use_register_captcha"
                                               value="true" {($settings.general.use_register_captcha)?'checked=""':''}>
                                        <label for="use_register_captcha"> {$lang.label.register} </label>
                                    </div>
                                    <div class="checkbox-inline">
                                        <input type="checkbox" name="general[use_support_captcha]"
                                               id="use_support_captcha"
                                               value="true" {($settings.general.use_support_captcha)?'checked=""':''}>
                                        <label for="use_support_captcha"> {$lang.label.contact} </label>
                                    </div>
                                    <div class="checkbox-inline">
                                        <input type="checkbox" name="general[use_create_ticket_captcha]"
                                               id="use_create_ticket_captcha"
                                               value="true" {($settings.general.use_create_ticket_captcha)?'checked=""':''}>
                                        <label for="use_create_ticket_captcha"> {$lang.label.create_ticket} </label>
                                    </div>
                                    <div class="checkbox-inline">
                                        <input type="checkbox" name="general[use_reply_ticket_captcha]"
                                               id="use_reply_ticket_captcha"
                                               value="true" {($settings.general.use_reply_ticket_captcha)?'checked=""':''}>
                                        <label for="use_reply_ticket_captcha"> {$lang.label.reply_ticket} </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="captcha_type"
                                       class="control-label col-md-4">{$lang.label.captcha_type}</label>
                                <div class="col-md-8">
                                    <select name="general[captcha_type]" id="captcha_type"
                                            class="form-control" onchange="show_captcha_options()">
                                        <option value="standard" {($settings.general.captcha_type=='standard')?'selected':''}>{$lang.label.standard}</option>
                                        <option value="google_recaptcha" {($settings.general.captcha_type=='google_recaptcha')?'selected':''}>{$lang.label.google_recaptcha}</option>
                                    </select>
                                </div>
                            </div>
                            <div id="captcha_details">
                                <div class="form-group">
                                    <label for="captcha_width"
                                           class="control-label col-md-4">{$lang.label.captcha_width}</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control input-md-2"
                                               name="general[captcha_width]"
                                               id="captcha_width"
                                               value="{($settings.general.captcha_width)?$settings.general.captcha_width:'170'}" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="captcha_height"
                                           class="control-label col-md-4">{$lang.label.captcha_height}</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control input-md-2"
                                               name="general[captcha_height]"
                                               id="captcha_height"
                                               value="{($settings.general.captcha_height)?$settings.general.captcha_height:'40'}" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="font_size"
                                           class="control-label col-md-4">{$lang.label.font_size}</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control input-md-2"
                                               name="general[font_size]"
                                               id="font_size"
                                               value="{($settings.general.font_size)?$settings.general.font_size:'14'}" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="captcha_num_chars"
                                           class="control-label col-md-4">{$lang.label.no_characters}</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control input-md-2"
                                               name="general[captcha_num_chars]"
                                               id="captcha_num_chars"
                                               value="{($settings.general.captcha_num_chars)?$settings.general.captcha_num_chars:'6'}" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="captcha_text_color"
                                           class="control-label col-md-4">{$lang.label.text_color}</label>
                                    <div class="col-md-8">
                                        <input type="color" class="form-control input-md-2"
                                               id="captcha_text_color"
                                               name="general[captcha_text_color]"
                                               value="{($settings.general.captcha_text_color)?$settings.general.captcha_text_color:'#111111'}" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="captcha_bg_color"
                                           class="control-label col-md-4">{$lang.label.background_color}</label>
                                    <div class="col-md-8">
                                        <input type="color" class="form-control input-md-2"
                                               id="captcha_bg_color"
                                               name="general[captcha_bg_color]"
                                               value="{($settings.general.captcha_bg_color)?$settings.general.captcha_bg_color:'#ffffff'}" />
                                    </div>
                                </div>
                            </div>
                            <div id="google_recaptcha_details">
                                <div class="form-group">
                                    <label for="recaptcha_site_key"
                                           class="control-label col-md-4">{$lang.label.recaptcha_site_key}</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control input-md-5"
                                               name="general[recaptcha_site_key]"
                                               id="recaptcha_site_key"
                                               value="{($settings.general.recaptcha_site_key)?$settings.general.recaptcha_site_key:''}" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="recaptcha_secret_key"
                                           class="control-label col-md-4">{$lang.label.recaptcha_secret_key}</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control input-md-5"
                                               name="general[recaptcha_secret_key]"
                                               id="recaptcha_secret_key"
                                               value="{($settings.general.recaptcha_secret_key)?$settings.general.recaptcha_secret_key:''}" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="admin_security">
                <div class="panel-body">
                    <h3 class="title no-margin-top">{$lang.legend.secondary_password}</h3>
                    <div class="form-group">
                        <label for="req_admin_secondary_pass"
                               class="control-label col-md-4">{$lang.label.use_secondary_password}</label>
                        <div class="col-md-8">
                            <input type="checkbox" name="file[req_admin_secondary_pass]"
                                   id="req_admin_secondary_pass"
                                   value="true" {($settings.req_admin_secondary_pass)?'checked=""':''}>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="secondary_password"
                               class="control-label col-md-4">{$lang.label.secondary_password}</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control input-auto inline-block"
                                   name="file[secondary_password]"
                                   id="secondary_password" {($settings.req_admin_secondary_pass)?"disabled placeholder='**hidden**'":""} />
                            <a href="javascript:void(0)"
                               class="{($settings.req_admin_secondary_pass)?'':'hide'}"
                               id="set_new_secondary_password"
                               onclick="set_new_pass('set_new_secondary_password','cancel_new_secondary_password','secondary_password')">{$lang.label.set_new}</a>
                            <a href="javascript:void(0)" class="hide" id="cancel_new_secondary_password"
                               onclick="cancel_new_pass('set_new_secondary_password','cancel_new_secondary_password','secondary_password')">{$lang.label.cancel}</a>
                        </div>
                    </div>
                    <h3 class="title">{$lang.legend.admin_ip_whitelist}</h3>
                    <div class="form-group">
                        <label for="req_admin_ip_whitelist"
                               class="control-label col-md-4">{$lang.label.use_ip_whitelist}</label>
                        <div class="col-md-8">
                            <input type="checkbox" name="file[req_admin_ip_whitelist]"
                                   id="req_admin_ip_whitelist"
                                   value="true" {($settings.req_admin_ip_whitelist)?'checked=""':''}>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="allowed_acl_ips"
                               class="control-label col-md-4">{$lang.label.allowed_ips}</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control input-md-5"
                                   name="file[allowed_acl_ips]"
                                   id="allowed_acl_ips"
                                   placeholder="192.168.1.1,192.168.1.2,10.10.0.1/24 ...."
                                   value="{$settings.allowed_acl_ips}" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade in" id="mail">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="sendmailtype"
                                       class="control-label col-md-4">{$lang.label.mail_system}</label>
                                <div class="col-md-8">
                                    <select name="general[sendmailtype]" id="sendmailtype"
                                            class="form-control" onchange="show_mail_options()">
                                        <option value="phpmail" {($settings.general.sendmailtype=='phpmail')?'selected':''}>{$lang.label.phpmail}
                                        </option>
                                        <option value="smtp" {($settings.general.sendmailtype=='smtp')?'selected':''}>{$lang.label.smtp}
                                        </option>
                                        {*<option value="mailgun" {($settings.general.sendmailtype=='mailgun')?'selected':''}>{$lang.label.mailgun}
                                        </option>
                                        <option value="sparkpost" {($settings.general.sendmailtype=='sparkpost')?'selected':''}>{$lang.label.sparkpost}
                                        </option>*}
                                    </select>
                                </div>
                            </div>
                            <div id="smtp_options">
                                <div class="form-group">
                                    <label for="smtp_protocol_ssl"
                                           class="control-label col-md-4">{$lang.label.smtp_protocol}</label>
                                    <div class="col-md-8">
                                        <div class="radio-inline">
                                            <input type="radio" value="ssl" class="smtp_options"
                                                   name="general[smtp_protocol]" required
                                                   id="smtp_protocol_ssl" {($settings.general.smtp_protocol=='ssl')?'checked=""':''}>
                                            <label for="smtp_protocol_ssl"> SSL </label>
                                        </div>
                                        <div class="radio-inline">
                                            <input type="radio" value="tls" class="smtp_options"
                                                   name="general[smtp_protocol]" required
                                                   id="smtp_protocol_tls" {($settings.general.smtp_protocol=='tls')?'checked=""':''}>
                                            <label for="smtp_protocol_tls"> TLS </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="smtp_host"
                                           class="control-label col-md-4">{$lang.label.smtp_host}</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control smtp_options"
                                               required
                                               name="general[smtp_host]"
                                               id="smtp_host"
                                               value="{($settings.general.smtp_host)?$settings.general.smtp_host:''}" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="smtp_port"
                                           class="control-label col-md-4">{$lang.label.smtp_port}</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control smtp_options"
                                               required
                                               name="general[smtp_port]"
                                               id="smtp_port"
                                               value="{($settings.general.smtp_port)?$settings.general.smtp_port:''}" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="smtp_user"
                                           class="control-label col-md-4">{$lang.label.smtp_username}</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control smtp_options"
                                               required
                                               name="general[smtp_user]"
                                               id="smtp_user"
                                               value="{($settings.general.smtp_user)?$settings.general.smtp_user:''}" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="smtp_pass"
                                           class="control-label col-md-4">{$lang.label.smtp_password}</label>
                                    <div class="col-md-8">
                                        <input type="text"
                                               class="form-control smtp_options smtp_pass input-auto inline-block"
                                               name="general[smtp_pass]" required
                                               id="smtp_pass" {($settings.general.smtp_pass)?"disabled placeholder='**hidden**'":""}/>
                                        <a href="javascript:void(0)"
                                           class="{($settings.general.smtp_pass)?'':'hide'}"
                                           id="set_new_smtp_pass"
                                           onclick="set_new_pass('set_new_smtp_pass','cancel_new_smtp_pass','smtp_pass')">{$lang.label.set_new}</a>
                                        <a href="javascript:void(0)" class="hide" id="cancel_new_smtp_pass"
                                           onclick="cancel_new_pass('set_new_smtp_pass','cancel_new_smtp_pass','smtp_pass')">{$lang.label.cancel}</a>
                                    </div>
                                </div>
                            </div>
                            {* <div id="mailgun_options">
                                 <div class="form-group">
                                     <label for="mailgun_domain"
                                            class="control-label col-md-4">{$lang.label.mailgun_domain}</label>
                                     <div class="col-md-8">
                                         <input type="text"
                                                class="form-control mailgun_options" required
                                                name="general[mailgun_domain]" id="mailgun_domain"
                                                value="{($settings.general.mailgun_domain)?$settings.general.mailgun_domain:''}"/>
                                     </div>
                                 </div>
                                 <div class="form-group">
                                     <label for="mailgun_api_key"
                                            class="control-label col-md-4">{$lang.label.mailgun_api_key}</label>
                                     <div class="col-md-8">
                                         <input type="text"
                                                class="form-control mailgun_options mailgun_pass input-auto inline-block"
                                                name="general[mailgun_api_key]" required
                                                id="mailgun_api_key" {($settings.general.mailgun_api_key)?"disabled placeholder='**hidden**'":""}/>
                                         <a href="javascript:void(0)"
                                            class="{($settings.general.mailgun_api_key)?'':'hide'}"
                                            id="set_new_mailgun_api_key"
                                            onclick="set_new_pass('set_new_mailgun_api_key','cancel_new_mailgun_api_key','mailgun_api_key')">{$lang.label.set_new}</a>
                                         <a href="javascript:void(0)" class="hide"
                                            id="cancel_new_mailgun_api_key"
                                            onclick="cancel_new_pass('set_new_mailgun_api_key','cancel_new_mailgun_api_key','mailgun_api_key')">{$lang.label.cancel}</a>
                                     </div>
                                 </div>
                             </div>
                             <div id="sparkpost_options">
                                 <div class="form-group">
                                     <label for="sparkpost_api_key"
                                            class="control-label col-md-4">{$lang.label.sparkpost_api_key}</label>
                                     <div class="col-md-8">
                                         <input type="text"
                                                class="form-control sparkpost_options sparkpost_pass input-auto inline-block"
                                                name="general[sparkpost_api_key]" required
                                                id="sparkpost_api_key" {($settings.general.sparkpost_api_key)?"disabled placeholder='**hidden**'":""}/>
                                         <a href="javascript:void(0)"
                                            class="{($settings.general.sparkpost_api_key)?'':'hide'}"
                                            id="set_new_sparkpost_api_key"
                                            onclick="set_new_pass('set_new_sparkpost_api_key','cancel_new_sparkpost_api_key','sparkpost_api_key')">{$lang.label.set_new}</a>
                                         <a href="javascript:void(0)" class="hide"
                                            id="cancel_new_sparkpost_api_key"
                                            onclick="cancel_new_pass('set_new_sparkpost_api_key','cancel_new_sparkpost_api_key','sparkpost_api_key')">{$lang.label.cancel}</a>
                                     </div>
                                 </div>
                             </div>*}
                            <div class="form-group" id="test_connection">
                                <div class="col-md-offset-4 col-md-8">
                                    <a href="javascript:void(0)" onclick="test_mail()" class="btn btn-success btn-xs">Test
                                                                                                                      Connection</a>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="system_email"
                                       class="control-label col-md-4">{$lang.label.system_email}</label>
                                <div class="col-md-8">
                                    <input type="email" class="form-control input-md-5"
                                           name="general[system_email]"
                                           id="system_email"
                                           aria-describedby="system_email_help" placeholder="xxxxx@yy.zzz"
                                           value="{($settings.general.system_email)?$settings.general.system_email:''}" />
                                    <small id="system_email_help"
                                           class="help-block text-muted">{$lang.msg.system_email_desc}</small>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="support_email"
                                       class="control-label col-md-4">{$lang.label.support_email}</label>
                                <div class="col-md-8">
                                    <input type="email" class="form-control input-md-5"
                                           name="general[support_email]"
                                           id="support_email"
                                           aria-describedby="support_email_help" placeholder="xyxyxyxy@qq.zzz"
                                           value="{($settings.general.support_email)?$settings.general.support_email:''}" />
                                    <small id="support_email_help"
                                           class="help-block text-muted">{$lang.msg.support_email_desc}</small>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="email_footer_msg"
                                       class="control-label col-md-4">{$lang.label.site_email_sig}</label>
                                <div class="col-md-8">
                                <textarea class="form-control input-md-6" name="general[email_footer_msg]"
                                          id="email_footer_msg"
                                          aria-describedby="email_footer_msg_help" rows="5"
                                          placeholder="......">{($settings.general.email_footer_msg)?$settings.general.email_footer_msg:''}</textarea>
                                    <small id="email_footer_msg_help"
                                           class="help-block text-muted">{$lang.msg.site_email_sig_desc}</small>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="site_email_header"
                                       class="control-label col-md-4">{$lang.label.site_email_header}</label>
                                <div class="col-md-8">
                                <textarea class="form-control input-md-6" name="general[site_email_header]"
                                          id="site_email_header" rows="10"
                                          placeholder="......">{($settings.general.site_email_header)?$settings.general.site_email_header:''}</textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="site_email_footer"
                                       class="control-label col-md-4">{$lang.label.site_email_footer}</label>
                                <div class="col-md-8">
                                <textarea class="form-control input-md-6" name="general[site_email_footer]"
                                          id="site_email_footer" rows="8"
                                          placeholder="......">{($settings.general.site_email_footer)?$settings.general.site_email_footer:''}</textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="crate">
                <div class="panel-body">
                    <div class="curr_rate_col-md-padd">
                        <table class="table table-bordered" style="width: auto; margin-bottom: 0">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th colspan="2">Rate</th>
                                    <th>Default Exchange</th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach $curr_pairs as $pair}
                                    <tr>
                                        <td align="right">
                                            1 {$pair.src|strtoupper} =
                                        </td>
                                        <td>
                                            <input type="hidden" name="crate[ts_{$pair.src}_{$pair.dest}]"
                                                   id="ts_{$pair.src}_{$pair.dest}" value="{$pair.ts_value}"
                                                   style="margin-right: 3px" />
                                            <input type="text" class="form-control" name="crate[{$pair.rate}]"
                                                   id="{$pair.rate}"
                                                   value="{$pair.rate_value}"
                                                   style="margin-right: 3px; display: inline-block" />
                                            <small class="text-muted">Leave blank for automatic rates</small>
                                        </td>
                                        <td>
                                            {$pair.dest|strtoupper}
                                        </td>
                                        <td>
                                            <select class="form-control"
                                                    name="crate[{$pair.exchange}]"
                                                    id="{$pair.exchange}">
                                                {foreach $pair.exchange_types as $val}
                                                    <option value="{$val|strtolower}" {($pair.exchange_value=={$val|strtolower})?'selected':''}>
                                                        {$val|ucfirst}
                                                    </option>
                                                {/foreach}
                                            </select>
                                        </td>
                                    </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="cron">
                <div class="panel-body">

                    <h4>{$lang.label.cron_status}
                        : {($settings.cron.status==1)?'<span class="label label-success">Active</span>':'<span class="label label-danger">Inactive</span>'}</h4>
                    <p>{$lang.label.cron_last_run}
                        : {if $settings.cron.last_ts} {$settings.cron.last_ts|dtformat:'jS M, Y H:i:s'} ({$settings.cron.last_ts|dtformat:'timeago'}){else}Never{/if}</p>
                    <hr />
                    <h5>Cron Command </h5>
                    <h5><code>*/5 * * * * curl -k --silent --compressed {$base_url}/cron/{$settings.cron_hash}</code>
                    </h5>

                    <div class="row help">
                        <div class="col-md-12">
                            <ul class="list-group list-group-documentation">
                                <li class="list-group-item list-group-item-info"><i class="fa fa-question-circle-o"></i>
                                    Documentation
                                </li>
                                <li class="list-group-item">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h5 class="list-group-item-heading title">How to enable Cron in Cpanel</h5>
                                            <ol class="list-unstyled">
                                                <li>1) Log into your Cpanel.</li>
                                                <li>2) Click on "Cron Jobs". Scroll down to "Add New Cron Job".</li>
                                                <li>3) Check if there is no cron job already added for the same command
                                                    above.
                                                </li>
                                                <li>4) Select "Once Per 5 Minutes (*/5 * * * *)" in Common Settings
                                                    field.
                                                </li>
                                                <li>5) Enter the cron command above in the Command field. Click "Add New
                                                    Cron Job"
                                                </li>
                                            </ol>

                                            <br />
                                            <p class="text-danger">Note: Make sure you do not run more than one cron job
                                                                   for the same command</p>

                                        </div>
                                    </div>

                                </li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <hr>

        {if $settings.req_admin_secondary_pass}
            <div class="form-group">
                <label class="control-label col-sm-2 text-danger"
                       style="padding-left: 0">{$lang.label.admin_secondary_password}</label>
                <div class="col-sm-2">
                    <input type="password" class="form-control"
                           name="alt_password" id="alt_password"
                           required />
                </div>
            </div>
            <hr>
        {/if}

        <button type="submit" name="form_action" class="btn btn-primary" value="update"
                onclick="update_tab_form('general_settings')">{$lang.label.update}</button>
    </form>
{/block}

{block name="foo" append}
    <!-- BlockUI js -->
    <script src="{$admin_assets}/assets/plugins/jqueryBlockUI/jquery.blockUI.js" type="text/javascript"></script>
    <!-- ckeditor js -->
    <script src="{$admin_assets}/assets/plugins/ckeditor/ckeditor.js" type="text/javascript"></script>
    <script type="text/javascript">
        {literal}
        jQuery(function ($) {
            "use strict"; // Start of use strict

            CKEDITOR.replace('site_maintenance_msg', {
                height: '200px',
                fullPage: false,
                allowedContent: true
            });

            $("#started_on").datepicker({format: 'dd-mm-yyyy'});

            $('#new_admin_uri').text($('#admin_uri').val());

            $('#admin_uri').keyup(function () {
                $('#new_admin_uri').text($(this).val());
            });

            show_mail_options();
            show_captcha_options();
        });

        function show_captcha_options() {
            if ($('#captcha_type').val() == 'google_recaptcha') {
                $('#captcha_details').hide();
                $('#google_recaptcha_details').show();
            } else {
                $('#captcha_details').show();
                $('#google_recaptcha_details').hide();
            }
        }

        function show_mail_options() {
            $('#smtp_options').hide();
            $('#mailgun_options').hide();
            $('#sparkpost_options').hide();

            $('.smtp_options').attr({'disabled': 'true'});
            $('.mailgun_options').attr({'disabled': 'true'});
            $('.sparkpost_options').attr({'disabled': 'true'});

            var mailtype = $('#sendmailtype').val();

            if (mailtype != 'phpmail') {
                $('#' + mailtype + '_options').show();
                $('.' + mailtype + '_options').removeAttr('disabled');
                if ($('.' + mailtype + '_pass').attr('placeholder') == '**hidden**') {
                    $('.' + mailtype + '_pass').attr({'disabled': 'true'});
                }
                $('#test_connection').show();
            } else {
                $('#test_connection').hide();
            }
        }

        function test_mail() {
            var url = dqs_admin_url + '/test_mail/';

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
                data: $('form#general_settings').serialize(),
                success: function (data) {
                    $.unblockUI();
                    alert(data['title'] + " : " + data['text']);
                },
                error: function () {
                    $.unblockUI();
                    alert('Connection Failed!');
                }
            });

        }
        {/literal}
    </script>
{/block}