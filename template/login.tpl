{include file="header.tpl"}
<div class="row">

    <div class="col-sm-6">
        <form class="form" method="post">

            {form_errors form="login"}
            {form_success form="login"}

            <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>

            <div class="form-group">
                <label>{$lang.email}</label>
                <input class="form-control" type="email" name="email" required value="{set_value('email')}"/>
            </div>
            <div class="form-group">
                <label>{$lang.password}</label>
                <input class="form-control" type="password" name="password" required/>
            </div>

            {if $settings.general.req_captcha && $settings.general.use_login_captcha}
                {include file="captcha.tpl"}
            {/if}
            
            <div class="form-group">
                <button type="submit" class="btn btn-primary">{$lang.login}</button>
                &nbsp;&nbsp;<a href="reset_password">{$lang.forgot_password}?</a>
            </div>
        </form>

    </div>

</div>
{include file="footer.tpl"}