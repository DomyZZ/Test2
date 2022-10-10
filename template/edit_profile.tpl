{include file="header.tpl"}

<ul class="nav nav-pills">
    <li class="nav-item {($section=="account_information")?'active':''}"
    ">
    <a class="nav-link {($section=="account_information")?'active':''}"
       href="{$base_url}/edit_profile">{$lang.account_information}</a>
    </li>
    <li class="nav-item {($section=="wallet_accounts")?'active':''}">
        <a class="nav-link {($section=="wallet_accounts")?'active':''}"
           href="{$base_url}/edit_profile/wallet_accounts">{$lang.wallet_accounts}</a>
    </li>
</ul>

<hr/>


{if $section=="account_information"}
    <div class="row">
        <div class="col-sm-12">
            <form class="form" method="post">
                {include file="form_errors.tpl" form="edit_profile"}
                {include file="form_success.tpl" form="edit_profile"}
                <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>

                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6">
                            <label>{$lang.username}</label>
                            <input class="form-control" type="text" name="username" readonly value="{$user.username}"
                                   required/>
                        </div>
                        <div class="col-sm-6">
                            <label>{$lang.registered_on}</label>
                            <input class="form-control" type="text" name="reg_date" readonly
                                   value="{$user.reg_date|dtformat:'jS M Y H:i:s'}" required/>
                        </div>
                    </div>

                </div>

                <div class="form-group">
                    <label>{$lang.email}</label>
                    {if $settings.general.can_change_email}
                        <input class="form-control" type="email" name="email" value="{$user.email}" required/>
                    {else}
                        <input class="form-control" type="email" name="email" value="{$user.email}" readonly/>
                    {/if}
                </div>

                <div class="form-group">
                    <label>{$lang.timezone}</label>
                    {timezone_menu({($user.timezone)?$user.timezone:''}, 'form-control', 'timezone', 'id="timezone"')}
                    <small class="text-muted">Timezone of dates shown in deposits, transactions etc.</small>
                </div>

                {if $settings.general.contact_details_reqd}
                    <div class="form-group">
                        <label>{$lang.address}</label>
                        <input class="form-control" type="text" name="address" value="{$user.address}"/>
                    </div>
                    <div class="form-group">
                        <label>{$lang.city}</label>
                        <input class="form-control" type="text" name="city" value="{$user.city}"/>
                    </div>
                    <div class="form-group">
                        <label>{$lang.state}</label>
                        <input class="form-control" type="text" name="state" value="{$user.state}"/>
                    </div>
                    <div class="form-group">

                        <label>{$lang.country}</label>
                        <select class="form-control" name="country">
                            <option value="">--select--</option>
                            {foreach $countries as $country}
                                <option value="{$country.id}" {($country.id==$user.country)?"selected":""}>{$country.name}</option>
                            {/foreach}
                        </select>

                    </div>
                    <div class="form-group">
                        <label>{$lang.zip}</label>
                        <input class="form-control" type="text" name="zip" value="{$user.zip}"/>
                    </div>
                    <div class="form-group">
                        <label>{$lang.phone}</label>
                        <input type="text" class="form-control" name="phone"
                               value="{$user.phone}">
                    </div>
                    <div class="form-group">
                        <label>{$lang.telegram}</label>
                        <input type="text" class="form-control" name="telegram"
                               value="{$user.telegram}">
                    </div>
                    <div class="form-group">
                        <label>{$lang.whatsapp}</label>
                        <input type="text" class="form-control" name="whatsapp"
                               value="{$user.whatsapp}">
                    </div>
                {/if}

                {if $user.secondary_password}
                    <div class="form-group">
                        <label class="text-danger">{$lang.enter_secondary_password}</label>
                        <input class="form-control" type="password" name="secondary_password" required/>
                    </div>
                {/if}

                <div class="form-group">
                    <button type="submit" class="btn btn-primary">{$lang.update}</button>
                </div>
            </form>
        </div>

    </div>
{/if}

{if $section=="wallet_accounts"}
    <div class="row">
        <div class="col-sm-12">

            {if $wallets}
                <form class="form" method="post">
                    {include file="form_errors.tpl" form="wallet_accs"}
                    {include file="form_success.tpl" form="wallet_accs"}
                    <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>

                    {foreach $wallets as $wallet}
                        <div class="form-group row">

                            <div class="col-sm-3"><label class="col-form-label"><img
                                            src="images/processors/{$wallet.icon}"/> {$wallet.name}</label></div>
                            <div class="col-sm-9">

                                {if !$settings.general.can_change_wallet_acc && $wallet.account}
                                    <div class="row">
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="wallets[{$wallet.nick}]"
                                                   value="{$wallet.account}" disabled/>
                                        </div>
                                        {if $wallet.nick=="xrp"}
                                            <div class="col-sm-3">
                                                <input type="text" class="form-control" name="wallets[{$wallet.nick}]"
                                                       value="{$wallet.tag}" disabled/>
                                            </div>
                                        {/if}
                                    </div>
                                {else}
                                    <div class="row">
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="wallets[{$wallet.nick}]"
                                                   value="{(set_value("wallets[{$wallet.nick}]"))?(set_value("wallets[{$wallet.nick}]")):($wallet.account)}"
                                                   placeholder="e.g {$wallet.placeholder}"/>
                                        </div>

                                        {if $wallet.nick=="xrp"}
                                            <div class="col-sm-3">
                                                <input type="text" class="form-control" name="tags[{$wallet.nick}]"
                                                       value="{(set_value("tags[{$wallet.nick}]"))?(set_value("tags[{$wallet.nick}]")):($wallet.tag)}"
                                                       placeholder="Tag"/>
                                            </div>
                                        {/if}

                                    </div>
                                {/if}


                            </div>

                        </div>
                    {/foreach}

                    {if $user.secondary_password}
                        <div class="form-group">
                            <label class="text-danger">{$lang.enter_secondary_password}</label>
                            <input class="form-control" type="password" name="secondary_password" required/>
                        </div>
                    {/if}

                    <div class="form-group">
                        <button type="submit" class="btn btn-primary">{$lang.update}</button>
                    </div>
                </form>
            {/if}

        </div>
    </div>
{/if}


{include file="footer.tpl"}

