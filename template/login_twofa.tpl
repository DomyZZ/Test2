{include file="header.tpl"}
    <div class="row">

        <div class="col-sm-6">

            <form class="form" method="post">

                {form_errors form="login_twofa"}

                <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>

                <div class="form-group">
                    <label>{$lang.enter_otp}</label>
                    <input class="form-control" type="text" name="otp" required/>
                </div>

                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Login</button>
                </div>
            </form>
        </div>

    </div>
{include file="footer.tpl"}