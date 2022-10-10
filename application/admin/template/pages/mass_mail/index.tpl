{block name="head" append}
    <!-- Select2 -->
    <link href="{$admin_assets}/assets/plugins/select2/css/select2.min.css" rel="stylesheet"/>
{/block}

{block name="page_content"}
    <form class="form-horizontal" name="mass_mail" id="mass_mail" method="post">
        <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
        {include file="form_status.tpl" form="mass_mail"}
        {if $user}
            <div class="form-group">
                <label for="username"
                       class="control-label col-sm-3 text-warning">{$lang.label.username}</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="username"
                           value="{$user.username}" readonly/>
                </div>
            </div>
        {else}
            <div class="form-group">
                <label for="to" class="control-label col-md-3">{$lang.label.to}</label>
                <div class="col-md-9">
                    <select name="to" id="to" class="form-control" required>
                        <option value="specific_users">Specific Users (one or more users)
                        </option>
                        <option value="all_users" selected>All users</option>
                        <option value="deposit_users">All users which have made a deposit</option>
                        <option value="non_deposit_users">All users which haven't made a deposit
                        </option>
                        {foreach $packages as $value}
                            <option value="deposit_to_packageid_{$value.id}">All users which have made a
                                                                             deposit
                                                                             to {$value.name}</option>
                        {/foreach}
                    </select>
                </div>
            </div>
            <div class="form-group" id="select_users">
                <label for="users" class="control-label col-sm-3">{$lang.label.select_users}</label>
                <div class="col-sm-9">
                    <select name="users[]" id="users"
                            class="form-control select2-width-md select2-width-sm"
                            multiple="multiple" required>
                    </select>
                </div>
            </div>
        {/if}
        <div class="form-group">
            <label for="subject" class="control-label col-md-3">{$lang.label.subject}</label>
            <div class="col-md-9">
                <input type="text" class="form-control" name="subject"
                       id="subject" value="{$mail_data.subject}"
                       required/>
            </div>
        </div>
        <div class="form-group">
            <label for="description"
                   class="control-label col-sm-3">{$lang.label.message}</label>
            <div class="col-md-9">
                <textarea name="html_content" required id="html_content" class="form-control" placeholder="......">{$mail_data.html_content}</textarea>
            </div>
        </div>
        <hr>
            <button type="submit" class="btn btn-primary">{$lang.label.send}</button> &nbsp;
            <button type="button" class="btn btn-success"
                    onclick="selected_action('mass_mail', 'test')">{$lang.label.test_mail}</button>
    </form>
{/block}

{block name="foo" append}
    <!-- Select2 -->
    <script src="{$admin_assets}/assets/plugins/select2/js/select2.min.js"></script>
    <!-- ckeditor js -->
    <script src="{$admin_assets}/assets/plugins/ckeditor/ckeditor.js" type="text/javascript"></script>
    <script type="text/javascript">
        {literal}
        $(document).ready(function () {
            $("#to").change(function () {
                if ($(this).children(":selected").val() == 'specific_users') {
                    $('#select_users').show();
                    $('#users').removeAttr('disabled').attr({'required': 'true'});
                }
                else {
                    $('#users').removeAttr('required').attr({'disabled': 'true'});
                    $('#select_users').hide();
                }
            });
            $('#users').select2({
                multiple: true,
                minimumInputLength: 2,
                allowClear: true,
                placeholder: 'Choose specific users....',
                id: function(i) {
                    console.log(i);
                    return i;
                },
                ajax: {
                    type: 'post',
                    url: dqs_admin_url + '/users/search',
                    allowClear: true,
                    dataType: 'json',
                    delay: 250,
                    params: {
                        contentType: "application/json"
                    },
                    data: function(term, page) {
                        //Code for dummy ajax response
                        return {
                            name: term.term,
                            selected_users: $('#users').val(),
                            type: 'multiple',
                            delay: 0
                        };
                    },
                    processResults: function (data) {
                        console.log(data);
                        return {
                            results: data
                        };
                    },
                    cache: false
                },
                formatResult: function(i) {
                    console.log("formatresult: "+i);
                    return '<div>' + i.name + '(' + i.email + ')' + '</div>';
                }, // Formats results in drop down
                formatSelection: function(i) {
                    console.log("formatSelection: "+i);
                    return '<div>' + i.name + '(' + i.email + ')' + '</div>';
                },
                escapeMarkup: function(m) {
                    return m;
                }
            });
            CKEDITOR.replace('html_content', {
                height: '300px',
                fullPage: true,
                allowedContent: true
            });
            $('#to').trigger('change');
        });
        {/literal}
    </script>
{/block}