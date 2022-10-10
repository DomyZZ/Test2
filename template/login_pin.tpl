{include file="header.tpl"}
    <div class="row">

        <div class="col-sm-8">

            Our system detected that your ip address has changed since your last login. We have sent a pin (6 digit
            code) to your email. Please enter it below.

            <form class="form" method="post">

                {form_errors form="login_pin"}

                <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>

                <div class="form-group">
                    <label>{$lang.pin}</label>
                    <input class="form-control" type="text" name="pin" required/>
                </div>

                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Login</button>
                </div>
            </form>
        </div>

    </div>
{include file="footer.tpl"}