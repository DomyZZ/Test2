{include file="header.tpl"}
<div class="row">
    <div class="col-sm-8">
        <form class="form" method="post">

            {include file="form_success.tpl" form="apply_representative" }
            {include file="form_errors.tpl" form="apply_representative" }
            <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>

            <h4>{$lang.general_details}</h4>
            <hr/>

            <div class="form-group">
                <label>{$lang.country}</label>
                <select class="form-control" name="country" required>
                    <option value="">--select--</option>
                    {foreach $countries as $country}
                        <option value="{$country.id}" {($country.id == set_value('country'))?'selected':''}>{$country.name}</option>
                    {/foreach}
                </select>

            </div>

            <div class="form-group">
                <label>{$lang.languages}</label>
                <select class="form-control" name="languages[]" required multiple
                        style="width:200px; height: 400px !important;">
                    <option value="">--select--</option>
                    {foreach $languages as $language}
                        <option value="{$language}" {(set_value('languages') && in_array($language,set_value('languages')))?'selected':''}>{$language}</option>
                    {/foreach}
                </select>

            </div>

            <br />

            <h4>{$lang.contact_details} (Enter atleast 1)</h4>
            <hr/>

            {foreach $contact_types as $contact_type}
                <div class="form-group">
                    <label>{$contact_type|ucfirst}</label>
                    <input class="form-control" type="text" name="contacts[{$contact_type}]"
                           value="{set_value('contacts[{$contact_type}]')}"/>

                </div>
            {/foreach}

            <div class="form-group">
                <button class="btn btn-primary">{$lang.apply}</button>
            </div>

        </form>

    </div>

</div>
{include file="footer.tpl"}