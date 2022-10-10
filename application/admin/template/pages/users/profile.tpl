{extends file="users/manage.tpl"}

{block name="manage_user"}
    <form class="form-horizontal" name="manage_profile" id="manage_profile" method="post"
          action="{$admin_url}/users/{$user.id}/profile">
        <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
        {include file="form_status.tpl" form="manage_profile"}
        <div class="row">
            <div class="col-sm-12 col-md-6">
				<h3 class="title">{$lang.legend.general_details}</h3>
                <div class="form-group">
                    <label for="reg_date" class="control-label col-md-4">{$lang.label.reg_date}</label>
                    <div class="col-md-8">
                        <input type="text" class="form-control" readonly id="reg_date"
                               value="{$user.reg_date|dtformat:'jS M, Y H:i:s'}"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="reg_ip" class="control-label col-md-4">{$lang.label.reg_ip}</label>
                    <div class="col-md-8">
                        <input type="text" class="form-control" readonly id="reg_ip"
                               value="{$user.reg_ip}"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="username" class="control-label col-md-4">{$lang.label.username} <span
                                class="required">*</span></label>
                    <div class="col-md-8">
                        <input type="text" class="form-control" name="username" id="username"
                               placeholder="john678" value="{$user.username}"
                               required/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="control-label col-md-4">{$lang.label.email} <span
                                class="required">*</span></label>
                    <div class="col-md-8">
                        <input type="email" class="form-control" name="email" id="email"
                               placeholder="aaaaaaaa@zzz.yyy" required value="{$user.email}"/>
                    </div>
                </div>
				<h3 class="title">{$lang.legend.security_details}</h3>
                <div class="form-group">
                    <label for="password" class="control-label col-md-4">{$lang.label.password}</label>
                    <div class="col-md-8">
                        <input type="text" class="form-control input-auto inline-block"
                               name="password" required
                               id="password" disabled placeholder="**hidden**"/>
                        <a href="javascript:void(0)" id="set_new_password"
                           onclick="set_new_pass('set_new_password','cancel_new_password','password')">{$lang.label.set_new}</a>
                        <a href="javascript:void(0)" class="hide" id="cancel_new_password"
                           onclick="cancel_new_pass('set_new_password','cancel_new_password','password')">{$lang.label.cancel}</a>
                    </div>
                </div>
                <div class="form-group">
                    <label for="secondary_password"
                           class="control-label col-md-4">{$lang.label.secondary_password}</label>
                    <div class="col-md-8">
                        <input type="text" class="form-control input-auto inline-block"
                               name="secondary_password"
                               id="secondary_password" {($user.secondary_password)?'disabled placeholder="**hidden**"':''} />
                        {if $user.secondary_password}
                            <a href="javascript:void(0)" id="set_new_secondary_password"
                               onclick="set_new_pass('set_new_secondary_password','cancel_new_secondary_password','secondary_password')">{$lang.label.set_new}</a>
                            <a href="javascript:void(0)" class="hide" id="cancel_new_secondary_password"
                               onclick="cancel_new_pass('set_new_secondary_password','cancel_new_secondary_password','secondary_password')">{$lang.label.cancel}</a>
                        {/if}
                    </div>
                </div>
                <div class="form-group">
                    <label for="secques" class="control-label col-md-4">{$lang.label.secques}</label>
                    <div class="col-md-8">
                        <select name="secques" id="secques" class="form-control" style="width: 100%">
                            <option value="">--select--</option>
                            {foreach $secques as $value}
                                <option value="{$value.id}" {($user.secques==$value.id)?'selected':''}>{$value.question}</option>
                            {/foreach}
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="secans" class="control-label col-md-4">{$lang.label.secans}</label>
                    <div class="col-md-8">
                        <input type="text" class="form-control input-md-8" name="secans" id="secans"
                               value="{$user.secans}"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="detect_ip_change" class="control-label col-md-4">{$lang.label.detect_ip_change}</label>
                    <div class="col-md-8">
                        <select name="detect_ip_change" id="detect_ip_change" class="form-control">
                            {foreach $detect_ip_change as $key=>$value}
                                <option value="{$key}" {($user.detect_ip_change==$key)?'selected':''}>{$value}</option>
                            {/foreach}
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="detect_browser_change"
                           class="control-label col-md-4">{$lang.label.detect_browser_change}</label>
                    <div class="col-md-8">
                        <select name="detect_browser_change" id="detect_browser_change" class="form-control">
                            {foreach $detect_browser_change as $key=>$value}
                                <option value="{$key}" {($user.detect_browser_change==$key)?'selected':''}>{$value}</option>
                            {/foreach}
                        </select>
                    </div>
                </div>
                {if $user.twofa}
                    <div class="form-group">
                        <label for="disable_2fa" class="control-label col-md-4">Disable 2FA</label>
                        <div class="col-md-8">
                            <div class="checkbox checkbox-success">
                                <input type="checkbox" name="disable_2fa"
                                       id="disable_2fa"
                                       value="true">
                                <label for="disable_2fa"></label>
                            </div>
                        </div>
                    </div>
                {/if}
            </div>
            <div class="col-sm-12 col-md-6">
				<h3 class="title">{$lang.legend.contact_details}</h3>
                <div class="form-group">
                    <label for="address" class="control-label col-md-4">{$lang.label.address}</label>
                    <div class="col-md-8">
                        <input type="text" name="address" id="address"
                               class="form-control" value="{$user.address}"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="city" class="control-label col-md-4">{$lang.label.city}</label>
                    <div class="col-md-8">
                        <input type="text" name="city" id="city"
                               class="form-control" value="{$user.city}"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="state" class="control-label col-md-4">{$lang.label.state}</label>
                    <div class="col-md-8">
                        <input type="text" name="state" id="state"
                               class="form-control" value="{$user.state}"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="country" class="control-label col-md-4">{$lang.label.country}</label>
                    <div class="col-md-8">
                        <select name="country" id="country" class="form-control">
                            <option value="">--select--</option>
                            {foreach $countries as $value}
                                <option value="{$value.id}" {($user.country==$value.id)?'selected':''}>{$value.name}</option>
                            {/foreach}
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="zip" class="control-label col-md-4">{$lang.label.zip}</label>
                    <div class="col-md-8">
                        <input type="text" name="zip" id="zip" class="form-control"
                               value="{$user.zip}"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="phone" class="control-label col-md-4">{$lang.label.phone}</label>
                    <div class="col-md-8">
                        <input type="text" name="phone" id="phone" class="form-control"
                               value="{$user.phone}"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="telegram" class="control-label col-md-4">{$lang.label.telegram}</label>
                    <div class="col-md-8">
                        <input type="text" name="telegram" id="telegram" class="form-control"
                               value="{$user.telegram}"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="whatsapp" class="control-label col-md-4">{$lang.label.whatsapp}</label>
                    <div class="col-md-8">
                        <input type="text" name="whatsapp" id="whatsapp" class="form-control"
                               value="{$user.whatsapp}"/>
                    </div>
                </div>
				<h3 class="title">{$lang.legend.other_information}</h3>
                <div class="form-group">
                    <label for="auto_withdrawal" class="control-label col-md-4">{$lang.label.auto_withdrawal}</label>
                    <div class="col-md-8">
                        <select class="form-control" name="auto_withdrawal" id="auto_withdrawal">
                            <option value="yes" {($user.auto_withdrawal=='yes')?'selected':''}>Yes</option>
                            <option value="no" {($user.auto_withdrawal=='no')?'selected':''}>No</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="daily_withdrawal"
                           class="control-label col-md-4">{$lang.label.max_daily_withdrawal}</label>
                    <div class="col-md-8">
                        <input type="text" name="daily_withdrawal" id="daily_withdrawal"
                               class="form-control input-md-5"
                               aria-describedby="daily_withdrawal_help"
                               value="{$user.daily_withdrawal|rtrim:'0'|rtrim:'.'}"/>
                        <small id="daily_withdrawal_help"
                               class="help-block text-muted">{$lang.msg.set_zero_unlimited}</small>
                    </div>
                </div>
                <div class="form-group">
                    <label for="status" class="control-label col-md-4">{$lang.label.status}</label>
                    <div class="col-md-8">
                        <select class="form-control" name="status" id="status">
                            {foreach $all_status as $key=>$val}
                                <option value="{$key}" {($user.status==$key)?'selected':''}>{$val}</option>
                            {/foreach}
                        </select>
                    </div>
                </div>
            </div>
        </div>
        <hr>
        <button type="submit" class="btn btn-primary">{$lang.label.update}</button>
    </form>

    <div class="row help">
        <div class="col-md-12">
            <ul class="list-group list-group-documentation">
                <li class="list-group-item list-group-item-info"><i class="fa fa-question-circle-o"></i> Documentation</li>
                <li class="list-group-item">
                    <h5 class="list-group-item-heading title">SECURITY DETAILS</h5>
                    <p class="list-group-item-text">
                        <b>Secondary Password</b> - This is an extra password which if set is required in sensitive account operations like withdrawal, edit profile , update wallet accounts etc.
                    </p>
                    <p class="list-group-item-text">
                        <b>Security Question/Answer</b> - This is a security feature which adds an extra security layer while resetting forgotten passwords. During resetting password, user will be asked to answer his security question which is set above before going to the next step of password reset.
                    </p>
                </li>
                <li class="list-group-item">
                    <h5 class="list-group-item-heading title">OTHER INFORMATION</h5>
                    <p class="list-group-item-text">
                        <b>Auto Withdrawal</b> - Enable/Disable auto withdrawal for the user. if set to "enabled" , user will be allowed to instantly withdraw his funds provided global auto withdrawal setting is enabled which can be done <a href="{$admin_url}/general_settings#site_functions">here</a>.
                    </p>
                    
                </li>

            </ul>
        </div>
    </div>

{/block}