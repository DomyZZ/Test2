{include file="header.tpl"}
<div class="row">
    <div class="col-sm-6">
        <form class="form" method="post">

            {include file="form_errors.tpl" form="contact"}
            {include file="form_success.tpl" form="contact"}

            <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>

            <div class="form-group">
                <label>{$lang.your_name}</label>
                <input class="form-control" id="name" name="name" value="{set_value("name")}" required type="text">
            </div>
            <div class="form-group">
                <label>{$lang.your_email}</label>
                <input class="form-control" id="email" name="email" value="{set_value("email")}" required type="email">
            </div>
            <div class="form-group">
                <label>{$lang.subject}</label>
                <input class="form-control" id="subject" name="subject" value="{set_value("subject")}" required type="text">
            </div>
            <div class="form-group">
                <label>{$lang.description}</label>
                <textarea class="form-control" name="description" required id="description" rows="10"
                          cols="40">{set_value("description")}</textarea>
            </div>
            
            {if $settings.general.req_captcha && $settings.general.use_support_captcha}
                {include file="captcha.tpl"}
            {/if}

            <div class="form-group">
                <button type="submit" class="btn btn-primary">{$lang.send_message}</button>
            </div>
        </form>

    </div>

</div>
{include file="footer.tpl"}