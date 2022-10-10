{include file="header.tpl"}
    <div class="row">
        <div class="col-sm-6">
            <form class="form" method="post">
                
                {form_errors form="reset_password"}
                {form_success form="reset_password"}

                <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>

                <div class="form-group">
                    <label>{$lang.email}</label>
                    <input class="form-control" type="text" name="email"
                           label="{$lang.email}" required
                           value="{set_value('email')}" {(isset($verification))?'readonly':''}/>
                </div>

                {if isset($verification)}
                    <div class="form-group">
                        <label>{$verification.secques.question}</label>
                        <input class="form-control" type="text" name="secans"/>
                    </div>
                {/if}

                <div class="form-group">
                    <button type="submit" class="btn btn-primary">{$lang.submit}</button>
                </div>
            </form>
        </div>
    </div>
{include file="footer.tpl"}