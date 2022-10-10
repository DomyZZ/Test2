{include file="header.tpl"}
<div class="row">

    <div class="col-sm-6">

        {if $preform_error}
            <div class="alert alert-danger">
                {$preform_error_msg}
            </div>
        {else}

            {if $status.type == "success" && $status.form == "register"}
                <div class="alert alert-success">
                    {$status.msg}
                </div>
            {else}
                <form class="form" method="post">

                    {include file="form_errors.tpl" form="register"}
                    <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
                    <div class="form-group">
                        <label>{$lang.username}</label>
                        <input type="text" class="form-control" name="username" value="{set_value("username")}" required>
                    </div>
                    <div class="form-group">
                        <label>{$lang.email}</label>
                        <input type="text" class="form-control" name="email" value="{set_value("email")}" required>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>{$lang.password}</label>
                                <input type="password" class="form-control" name="password"
                                       value="{set_value("password")}" required>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>{$lang.confirm_password}</label>
                                <input type="password" class="form-control" name="confirm_password"
                                       value="{set_value("confirm_password")}" required>

                            </div>
                        </div>
                    </div>
                    {if $settings.general.req_sec_pass}
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>{$lang.secondary_password}</label>
                                    <input type="password" class="form-control" name="secondary_password"
                                           value="{set_value("secondary_password")}" required>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>{$lang.confirm_secondary_password}</label>
                                    <input type="password" class="form-control" name="confirm_secondary_password"
                                           value="{set_value("confirm_secondary_password")}" required>
                                </div>
                            </div>
                        </div>
                    {/if}
                    {if $settings.general.contact_details_reqd}
                        <h4 class="mt-3">Contact Details</h4>
                        <div class="form-group">
                            <label>{$lang.address}</label>
                            <input type="text" class="form-control" name="address"
                                   value="{set_value("address")}" required>
                        </div>
                        <div class="form-group">
                            <label>{$lang.city}</label>
                            <input type="text" class="form-control" name="city"
                                   value="{set_value("city")}" required>
                        </div>
                        <div class="form-group">
                            <label>{$lang.state}</label>
                            <input type="text" class="form-control" name="state"
                                   value="{set_value("state")}" required>
                        </div>
                        <div class="form-group">
                            <label>{$lang.country}</label>
                            <select class="form-control" name="country" required>
                                <option value="">--select--</option>
                                {foreach $countries as $value}
                                    <option value="{$value.id}">{$value.name}</option>
                                {/foreach}
                            </select>
                        </div>
                        <div class="form-group">
                            <label>{$lang.zip}</label>
                            <input type="text" class="form-control" name="zip"
                                   value="{set_value("zip")}" required>
                        </div>
                        <div class="form-group">
                            <label>{$lang.phone}</label>
                            <input type="text" class="form-control" name="phone"
                                   value="{set_value("phone")}">
                        </div>
                        <div class="form-group">
                            <label>{$lang.telegram}</label>
                            <input type="text" class="form-control" name="telegram"
                                   value="{set_value("telegram")}">
                        </div>
                        <div class="form-group">
                            <label>{$lang.whatsapp}</label>
                            <input type="text" class="form-control" name="whatsapp"
                                   value="{set_value("whatsapp")}">
                        </div>
                    {/if}

                    {if $wallets}
                        <h4 class="mt-3">Wallets</h4>
                        {foreach $wallets as $wallet}
                            <div class="form-group">
                                <label>{$wallet.name}</label>
                                <input type="text" class="form-control" name="wallets[{$wallet.nick}]"
                                       value="" placeholder="e.g {$wallet.placeholder}">
                            </div>
                        {/foreach}
                    {/if}



                    {if $upline}
                        <div class="form-group">
                            <div class="alert alert-info">
                                You are referred by {$upline}
                            </div>
                        </div>
                    {/if}
                    <div class="form-group checkbox">
                        <label><input type="checkbox" name="agree" {(set_value('agree'))?'checked':''} required> I agree to terms
                            & conditions</label>
                    </div>
                    {if $settings.general.req_captcha && $settings.general.use_register_captcha}
                        {include file="captcha.tpl"}
                    {/if}
                    <button type="submit" class="btn btn-primary">{$lang.register}</button>
                </form>
            {/if}

        {/if}

    </div>

</div>
{include file="footer.tpl"}
