{block name="head" append}
    <!-- Select2 -->
    <link href="{$admin_assets}/assets/plugins/select2/css/select2.min.css" rel="stylesheet"/>
{/block}

{block name="page_content"}
    <form class="form-horizontal" name="send_bonus_penalty" id="send_bonus_penalty" method="post">
        <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
        {include file="form_status.tpl" form="send_bonus_penalty"}
        {if $post_fields}
            {foreach $post_fields as $key=>$value}
                {if $key=="users"}
                    {foreach $value as $id=>$user}
                        <input type="hidden" name="users[{$id}]" id="users_{$id}" value="{$user}">
                    {/foreach}
                {else}
                    <input type="hidden" name="{$key}" id="{$key}" value="{$value}">
                {/if}
            {/foreach}
            <div class="form-group">
                <label for="code"
                       class="control-label col-sm-3 text-danger">{$lang.label.confirm_code}</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" name="code" id="code" autocomplete="off"
                           placeholder="" required/>
                </div>
            </div>
        {else}
            <div class="form-group">
                <label class="control-label col-md-3">{$lang.label.type}</label>
                <div class="col-md-9">
                    <div class="radio-inline radio-success">
                        <input type="radio" value="bonus" name="type"
                               id="bonus"
                               required checked>
                        <label for="bonus"> {$lang.label.bonus} </label>
                    </div>
                    <div class="radio-inline radio-danger">
                        <input type="radio" value="penalty" name="type"
                               id="penalty"
                               required>
                        <label for="penalty">
                            {$lang.label.penalty} </label>
                    </div>
                </div>
            </div>
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
                            <option value="specific_users" selected>Specific Users (one or more users)
                            </option>
                            <option value="all_users">All users</option>
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
                <label for="processor" class="control-label col-md-3">{$lang.label.processor}</label>
                <div class="col-md-9">
                    <select name="processor" id="processor" class="form-control" required>
                        <option value="" selected>-- {$lang.label.select} --</option>
                        {foreach $processors as $value}
                            <option value="{$value.id}"
                                    id="{$value.curr_nick|strtoupper}">{$value.name}</option>
                        {/foreach}
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="amount" class="control-label col-md-3">{$lang.label.amount}</label>
                <div class="col-md-9">
                    <div class="input-group input-md-3">
                        <span class="input-group-addon">{$curr_symbol}</span>
                        <input type="text" class="form-control" name="amount"
                               id="amount"
                               required/>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="notify_email"
                       class="control-label col-md-3">{$lang.label.send_email_notify}</label>
                <div class="col-md-9">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" name="notify_email"
                                   id="notify_email"
                                   value="true" checked>
                        </label>
                    </div>
                </div>
            </div>
            <div id="for_bonus">
                <div class="form-group">
                    <label for="deposit_to_package"
                           class="control-label col-md-3">{$lang.label.deposit_to_package}</label>
                    <div class="col-md-9">
                        <div class="input-group">
                           <span class="input-group-addon"><input type="checkbox" name="deposit_to_package"
                                                                  id="deposit_to_package"
                                                                  value="true"></span>
                            <select name="package" id="package" class="form-control input-auto"
                                    disabled>
                                <option value="" selected>-- {$lang.label.select} --</option>
                                {foreach $packages as $value}
                                    <option value="{$value.id}">{$value.name}</option>
                                {/foreach}
                            </select>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="missing_deposit"
                           class="control-label col-md-3">{$lang.label.missing_deposit}</label>
                    <div class="col-md-9">
                        <div class="input-group">
                        <span class="input-group-addon"><input type="checkbox" name="missing_deposit"
                                                               id="missing_deposit"
                                                               value="true"></span>
                            <input type="text" disabled name="missing_payment_batch"
                                   id="missing_payment_batch"
                                   class="form-control input-auto inline-block"
                                   placeholder="{$lang.label.payment_batch}...." size="40">
                            <small id="missing_payment_batch_help"
                                   class="text-muted text-danger hide checkbox-inline">
                                * {$lang.msg.valid_payment_batch}</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="description"
                       class="control-label col-sm-3">{$lang.label.description}</label>
                <div class="col-md-9">
                                <textarea class="form-control input-md-8" rows="8" name="description"
                                          id="description" required></textarea>
                </div>
            </div>
            <div class="form-group">
                <label for="email"
                       class="control-label col-sm-3">{$lang.label.send_confirm_code}</label>
                <div class="col-md-4">
                    <div class="input-group">
                        <input type="text" class="form-control text-right"
                               style="padding-right: 2px !important;" name="email" id="email" value="admin"
                               placeholder="xxxx...." required/>
                        <span class="input-group-addon"
                              style="padding-left: 2px !important;">@{$site_host}</span>
                    </div>
                </div>
            </div>
        {/if}
        <hr>
        <button type="submit" class="btn btn-primary">{$lang.label.send}</button>
    </form>
{/block}

{block name="foo" append}
    {if empty($post_fields)}
        <!-- Select2 -->
        <script src="{$admin_assets}/assets/plugins/select2/js/select2.min.js"></script>
        <script type="text/javascript">
            {literal}
            $(document).ready(function () {

                $('input[type=radio][name=type]').change(function () {

                    if ($('input[type=radio][name=type]:checked').val() == 'bonus') {
                        $('#for_bonus').show();
                    } else {
                        $('#for_bonus').hide();
                        $('#deposit_to_package').removeAttr('checked').change();
                        $('#missing_deposit').removeAttr('checked').change();
                    }
                });
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
                $("#deposit_to_package").change(function () {
                    var res = $('#deposit_to_package:checked').val();

                    if (res) {
                        $('#package').removeAttr('disabled').attr({'required': 'true'});
                    }
                    else {
                        $('#package').removeAttr('required').attr({'disabled': 'true'});
                    }
                });
                $("#missing_deposit").change(function () {
                    var res = $('#missing_deposit:checked').val();

                    if (res) {
                        $('#missing_payment_batch').removeAttr('disabled').attr({'required': 'true'});
                        $('#missing_payment_batch_help').removeClass('hide');
                    }
                    else {
                        $('#missing_payment_batch').removeAttr('required').attr({'disabled': 'true'});
                        $('#missing_payment_batch_help').addClass('hide');
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
            });
            {/literal}
        </script>
    {/if}
{/block}