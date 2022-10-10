{include file="header.tpl"}
<div class="row">
    <div class="col-sm-10">

        <form class="form" method="post">

            {include file="form_success.tpl" form="invite_friend"}
            {include file="form_errors.tpl" form="invite_friend"}

            <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>

            {$friends = array(1,2,3,4,5)}

            <div class="form-group">
                {foreach $friends as $value}
                    <div class="form-group">
                        <label>Friend {$value}</label>
                        <div class="row">
                            <div class="col-sm-6">
                                <input class="form-control" name="friend[{$value}][name]" type="text"
                                       placeholder="Fullname" value="{set_value("friend[{$value}][name]")}"/>
                            </div>
                            <div class="col-sm-6">
                                <input class="form-control" name="friend[{$value}][email]" type="email" size="40"
                                       placeholder="Email" value="{set_value("friend[{$value}][email]")}"/>
                            </div>
                        </div>

                    </div>
                {/foreach}
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">{$lang.send_invitations}</button>
                </div>
            </div>
        </form>

    </div>
</div>
{include file="footer.tpl"}