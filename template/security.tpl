{include file="header.tpl"}

<ul class="nav nav-pills">
    <li class="nav-item {($section=="change_password")?'active':''}">
        <a class="nav-link {($section=="change_password")?'active':''}" href="security">{$lang.change_password}</a>
    </li>
    <li class="nav-item {($section=="secondary_password")?'active':''}">
        <a class="nav-link {($section=="secondary_password")?'active':''}"
           href="security/secondary_password">{$lang.secondary_password}</a>
    </li>
    <li class="nav-item {($section=="twofa")?'active':''}">
        <a class="nav-link {($section=="twofa")?'active':''}"
           href="security/twofa">{$lang.twofa}</a>
    </li>
    <li class="nav-item {($section=="security_question")?'active':''}">
        <a class="nav-link {($section=="security_question")?'active':''}"
           href="security/security_question">{$lang.security_question}</a>
    </li>
    <li class="nav-item {($section=="identity_check")?'active':''}">
        <a class="nav-link {($section=="identity_check")?'active':''}"
           href="security/identity_check">{$lang.identity_check}</a>
    </li>
</ul>

<hr/>

{if $section=="change_password"}
    <div class="row">
        <div class="col-sm-8">

            <form class="form" method="post">
                {form_errors form="change_password"}
                {form_success form="change_password"}
                <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>

                <div class="form-group">
                    <label>{$lang.old_password}</label>
                    <input class="form-control" type="password" name="old_password" value="{set_value('old_password')}"
                           required/>
                </div>
                <div class="form-group">
                    <label>{$lang.new_password}</label>
                    <input class="form-control" type="password" name="new_password" required/>
                </div>
                <div class="form-group">
                    <label>{$lang.confirm_new_password}</label>
                    <input class="form-control" type="password" name="confirm_new_password" required/>
                </div>

                <div class="form-group">
                    <button type="submit" class="btn btn-primary">{$lang.update}</button>
                </div>
            </form>
        </div>
    </div>
{/if}

{if $section=="secondary_password"}
    <div class="row">
        <div class="col-sm-8">
            <div class="row">
                <div class="col-sm-12">

                    <p>{$lang.secondary_password} : {if $user.secondary_password}
                            <span class="text-success">{$lang.active}</span>
                        {else}
                            <span class="text-danger">{$lang.inactive}</span>
                        {/if}
                    </p>
                    <hr />

                    <form class="form" method="post">
                        {form_errors form="secondary_password"}
                        {form_success form="secondary_password"}
                        <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>

                        {if $user.secondary_password && !$settings.general.force_secondary_password}
                            <div class="form-group">
                                <label><input type="checkbox" name="disable_secondary_password" value="true"> Disable
                                    secondary
                                    password</label>
                            </div>
                        {/if}

                        <div class="form-group">
                            <label>{$lang.new_secondary_password}</label>
                            <input class="form-control" type="password"
                                   name="new_secondary_password" {(!$user.secondary_password)?'required':''}/>
                        </div>
                        <div class="form-group">
                            <label>{$lang.confirm_new_secondary_password}</label>
                            <input class="form-control" type="password"
                                   name="confirm_new_secondary_password" {(!$user.secondary_password)?'required':''}/>
                        </div>
                        {if $user.secondary_password}
                            <div class="form-group ">
                                <label class="text-danger">{$lang.current_secondary_password}</label>
                                <input class="form-control" type="password" name="secondary_password" required/>
                            </div>
                        {/if}
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary" name="update_secondary_password"
                                    value="pass">{$lang.submit}</button>
                        </div>
                    </form>
                </div>

            </div>

        </div>
    </div>
{/if}


{if $section == "twofa"}
    <div class="row">
        <div class="col-sm-8">
            <p>{$lang.twofa} :
                {if $user.twofa}
                    <span class="text-success">{$lang.active}</span>
                {else}
                    <span class="text-danger">{$lang.inactive}</span>
                {/if}
            </p>
            <hr />
            <form class="form" method="post">
                {form_errors form="twofa"}
                {form_success form="twofa"}
                <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>

                <div class="form-group">
                    {if !$user.twofa}
                        {if !$session.twofa_create_key}
                            <button type="submit" class="btn btn-info" name="create_new_key" value="true">Create
                                new key
                            </button>
                        {/if}
                    {/if}
                </div>

                {if $session.twofa_create_key}
                    <div class="form-group">
                        <img src="https://chart.googleapis.com/chart?chs=300x300&chld=M|0&cht=qr&chl={$session.twofa_chl}"
                             alt="QR Image"/>
                    </div>
                    <div class="form-group">
                        <label>Secret Code: <code>{$session.twofa_secret}</code></label>
                    </div>
                {/if}

                {if $session.twofa_create_key || $user.twofa}
                    <div class="form-group">
                        <label>{$lang.enter_otp}</label>
                        <input class="form-control" type="text" name="otp" required/>
                    </div>
                    <div class="form-group">
                        {if $user.twofa}
                            <button type="submit" class="btn btn-danger" name="disable_twofa"
                                    value="true">{$lang.deactivate_twofa}</button>
                        {else}
                            <input type="hidden" name="session[twofa_secret]" value="{$session.twofa_secret}"/>
                            <input type="hidden" name="session[twofa_chl]" value="{$session.twofa_chl}"/>
                            <input type="hidden" name="session[twofa_create_key]" value="true"/>
                            <button type="submit" class="btn btn-primary">{$lang.submit}</button>
                            <a href="{$base_url}/security" class="btn btn-link">{$lang.cancel}</a>
                        {/if}

                    </div>
                {/if}

            </form>
        </div>
    </div>
{/if}

{if $section == "security_question"}
    <div class="row">

        <div class="col-sm-6">
            <p>{$lang.security_question} :
                {if $user.secques}
                    <span class="text-success">{$lang.active}</span>
                {else}
                    <span class="text-danger">{$lang.inactive}</span>
                {/if}
            </p>
            <form class="form" method="post">
                {form_errors form="security_quesans"}
                {form_success form="security_quesans"}
                <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>

                {if $user.secques}
                    <div class="form-group">
                        <label><input type="checkbox" name="disable_security_quesans" value="true"> Disable
                            security
                            question/answer</label>
                    </div>
                {/if}
                <div class="form-group">
                    <label>{$lang.security_question}</label>
                    <select name="security_question" class="form-control" required>
                        <option value="">-select-</option>
                        {foreach $secques as $sq}
                            <option value="{$sq.id}" {($user.secques && $user.secques==$sq.id)?'selected':''}>{$sq.question}</option>
                        {/foreach}
                    </select>
                </div>
                <div class="form-group">
                    <label>{$lang.security_answer}</label>
                    <input type="text" name="security_answer"
                           class="form-control" {(!$user.secans)?'required':''}
                           placeholder="{($user.secans)?'** Hidden ** . Edit to change':''}"/>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">{$lang.submit}</button>

                </div>
            </form>
        </div>
    </div>
{/if}

{if $section == "identity_check"}
    <div class="row">
        <div class="col-sm-8">
            <form class="form" method="post">
                {form_errors form="identity_check"}
                {form_success form="identity_check"}
                <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>

                <div class="form-group">
                    <label>{$lang.ip_change_detection_level}</label> <br/>
                    {foreach $detect_ip_change as $key=>$value}
                        <input type="radio" name="detect_ip_change"
                               value="{$key}" {($user.detect_ip_change==$key)?'checked':''}/>
                        {$value}
                        &nbsp;&nbsp;
                    {/foreach}
                </div>
                <div class="form-group">
                    <label>{$lang.browser_change_detection}</label> <br/>
                    {foreach $detect_browser_change as $key=>$value}
                        <input type="radio" name="detect_browser_change"
                               value="{$key}" {($user.detect_browser_change=={$key})?'checked':''} />
                        {$value}
                        &nbsp;&nbsp;
                    {/foreach}

                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">{$lang.submit}</button>

                </div>

            </form>
        </div>
    </div>
{/if}

{include file="footer.tpl"}

