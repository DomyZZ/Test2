{block name="breadcrumb"}
    <li>
        <a href="{$admin_url}/representatives">{$lang.breadcrumb.representatives}</a>
    </li>
    <li class="active">{$lang.breadcrumb.add}</li>
{/block}

{block name="head" append}
    <!-- Select2 -->
    <link href="{$admin_assets}/assets/plugins/select2/css/select2.min.css" rel="stylesheet"/>
{/block}
{block name="page_content"}
    <form class="form-horizontal" name="add_representative" id="add_representative" method="post">
        <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
        {include file="form_status.tpl" form="add_representative"}
		<h3 class="title">{$lang.legend.basic_details}</h3>
        <div class="form-group">
            <label for="user_id" class="control-label col-md-3">{$lang.label.username}</label>
            <div class="col-md-9">
                <select name="user_id" id="user_id" class="form-control inline-block" style="width: 100%" required></select>
            </div>
        </div>
        <div class="form-group">
            <label for="country_id" class="control-label col-md-3">{$lang.label.country}</label>
            <div class="col-md-9">
                <select name="country_id" id="country_id"
                        class="form-control" required>
                    <option value="">-- Select --</option>
                    {foreach $countries as $value}
                        <option value="{$value.id}">{$value.name}</option>
                    {/foreach}
                </select>
            </div>
        </div>
        <div class="form-group">
            <label for="languages" class="control-label col-sm-3">{$lang.label.languages}</label>
            <div class="col-sm-9">
                <select name="languages[]" id="languages"
                        class="form-control select2-width-md select2-width-sm"
                        multiple="multiple">
                    {foreach $languages as $value}
                        <option value="{$value}">{$value}</option>
                    {/foreach}
                </select>
            </div>
        </div>
		<h3 class="title">{$lang.legend.contact_details}</h3>
        {foreach $contact_types as $ico=>$type}
            <div class="form-group">
                <label for="contact_{$type}" class="control-label col-md-3">{$lang.label.$type}</label>
                <div class="col-md-9">
                    <div class="input-group">
                        <input type="text" class="form-control" name="contacts[{$type}]"
                               id="contact_{$type}"/>
                        <span class="input-group-addon"><i class="fa fa-{$ico}"></i></span>
                    </div>
                </div>
            </div>
        {/foreach}
        <hr>
        <div class="form-group">
            <label for="level" class="control-label col-md-3 text-danger">{$lang.label.level}</label>
            <div class="col-md-9">
                <select name="level" id="level"
                        class="form-control" required>
                    {foreach $representative_levels as $rep_level}
                    <option value="{$rep_level.id}">Level {$rep_level.id}</option>
                    {/foreach}
                </select>
            </div>
        </div>
        <hr>
            <button type="submit" class="btn btn-primary">{$lang.label.save}</button>
    </form>
{/block}

{block name="foo" append}
    <!-- Select2 -->
    <script src="{$admin_assets}/assets/plugins/select2/js/select2.min.js"></script>
    <script type="text/javascript">
        {literal}
        $(document).ready(function () {
            $('#languages').select2({
                placeholder: 'Choose specific language....',
                allowClear: true
            });
            $('#user_id').select2({
                placeholder: "Select an user",
                minimumInputLength: 2,
                allowClear: true,
                ajax: {
                    url: dqs_admin_url + '/users/search',
                    dataType: 'json',
                    type: "GET",
                    quietMillis: 250,
                    data: function (term, page) {
                        return {
                            name: term.term
                        };
                    },
                    processResults: function (data) {
                        return {
                            results: data
                        };
                    }
                }
            });
        });

        {/literal}
    </script>
{/block}