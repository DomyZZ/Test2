{include file="header.tpl"}

<div class="row">
    <div class="col-sm-10">
        <form class="form" method="post">
            {include file="form_errors.tpl" form="new_ticket"}
            {include file="form_success.tpl" form="new_ticket"}

            <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>

            <div class="form-group">
                <label>{$lang.help_topic}</label>
                <select class="form-control" name="help_topic" required>
                    <option value="">-- choose --</option>
                    {foreach $help_topics as $value}
                        <option value="{$value.id}" {(set_value('help_topic'))?'selected':''}>{$value.title}</option>
                    {/foreach}
                </select>
            </div>
            <div class="form-group">
                <label>{$lang.subject}</label>
                <input class="form-control" id="subject" required size="40" name="subject" type="text"
                       value="{set_value('subject')}"/>
            </div>
            <div class="form-group">
                <label>{$lang.message}</label>
                <textarea class="form-control" name="message" required id="message" rows="10" cols="60"
                >{set_value('message')}</textarea>
            </div>
            {if $settings.general.req_captcha && $settings.general.use_create_ticket_captcha}
                {include file="captcha.tpl"}
            {/if}
            <div class="form-group">
                <button type="submit" class="btn btn-primary">{$lang.submit}</button>
            </div>
        </form>
    </div>
</div>

{include file="footer.tpl"}

