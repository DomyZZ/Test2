{include file="header.tpl"}
<div class="row">
    <div class="col-sm-6">
        {if $preform_error}
            <div class="alert alert-danger">
                {$preform_error_msg}
            </div>
        {else}
            <form class="form" method="post">
                {form_errors form="reset_password"}
                <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>

                <div class="form-group">
                    <label>{$lang.new_password}</label>
                    <input class="form-control" type="password" name="new_password" required/>
                </div>
                <div class="form-group">
                    <label>{$lang.confirm_new_password}</label>
                    <input class="form-control" type="password" name="confirm_new_password" required/>
                </div>

                <div class="form-group">
                    <button class="btn btn-primary" type="submit">{$lang.update_password}</button>
                </div>
            </form>
        {/if}
    </div>
</div>
{include file="footer.tpl"}