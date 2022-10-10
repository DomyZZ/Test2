<div class="form-group">

    {if $settings.general.captcha_type=="standard"}
        <div class="row">
            <div class="col-sm-4">{*{$captcha.image}*}
                <img id="captcha" src="{$base_url}/captcha" onclick="document.getElementById('captcha').src = '{$base_url}/captcha?' + Math.random(); return false" /> 
            </div>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="captcha"
                       value="" required>
            </div>
        </div>
    {/if}
    {if $settings.general.captcha_type=="google_recaptcha"}
        <div class="row">
            <div class="col-sm-12">
                <script src='https://www.google.com/recaptcha/api.js'></script>
                <div class="g-recaptcha" data-sitekey="{$captcha.site_key}"></div>
            </div>
        </div>
    {/if}

</div>