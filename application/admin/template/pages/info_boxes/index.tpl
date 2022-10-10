{block name="page_content"}
    <form class="form-horizontal" name="info_boxes" id="info_boxes" method="post">
        <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
        {include file="form_status.tpl" form="info_boxes"}
        <div class="row">
            <div class="col-sm-12 col-md-6 col-md-padding-right-20">
                <h3 class="title">{$lang.legend.site_informations}</h3>
                <div class="table-responsive">
                    <table id="site_info_box" class="table table-striped-left">
                        <tbody>
                            <tr>
                                <td class="text-bold">{$lang.label.show_running_days}</td>
                                <td>
                                    <div class="radio-inline">
                                        <input type="radio" value="yes"
                                               name="infobox[show_running_days]"
                                               id="show_running_days_yes" {($settings.infobox.show_running_days=="yes")?'checked=""':''}>
                                        <label for="show_running_days_yes"> Yes </label>
                                    </div>
                                    <div class="radio-inline">
                                        <input type="radio" value="no"
                                               name="infobox[show_running_days]"
                                               id="show_running_days_no" {($settings.infobox.show_running_days=="no")?'checked=""':''}
                                               required>
                                        <label for="show_running_days_no"> No </label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-bold">{$lang.label.show_total_users}</td>
                                <td>
                                    <div class="radio-inline">
                                        <input type="radio" value="yes"
                                               name="infobox[show_total_users]"
                                               id="show_total_users_yes" {($settings.infobox.show_total_users=="yes")?'checked=""':''}>
                                        <label for="show_total_users_yes"> Yes </label>
                                    </div>
                                    <div class="radio-inline">
                                        <input type="radio" value="no"
                                               name="infobox[show_total_users]"
                                               id="show_total_users_no" {($settings.infobox.show_total_users=="no")?'checked=""':''}
                                               required>
                                        <label for="show_total_users_no"> No </label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-bold">{$lang.label.show_active_users}</td>
                                <td>
                                    <div class="radio-inline">
                                        <input type="radio" value="yes"
                                               name="infobox[show_active_users]"
                                               id="show_active_users_yes" {($settings.infobox.show_active_users=="yes")?'checked=""':''}>
                                        <label for="show_active_users_yes"> Yes </label>
                                    </div>
                                    <div class="radio-inline">
                                        <input type="radio" value="no"
                                               name="infobox[show_active_users]"
                                               id="show_active_users_no" {($settings.infobox.show_active_users=="no")?'checked=""':''}
                                               required>
                                        <label for="show_active_users_no"> No </label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-bold">{$lang.label.show_total_deposits}</td>
                                <td>
                                    <div class="radio-inline">
                                        <input type="radio" value="yes"
                                               name="infobox[show_total_deposits]"
                                               id="show_total_deposits_yes" {($settings.infobox.show_total_deposits=="yes")?'checked=""':''}>
                                        <label for="show_total_deposits_yes"> Yes </label>
                                    </div>
                                    <div class="radio-inline">
                                        <input type="radio" value="no"
                                               name="infobox[show_total_deposits]"
                                               id="show_total_deposits_no" {($settings.infobox.show_total_deposits=="no")?'checked=""':''}
                                               required>
                                        <label for="show_total_deposits_no"> No </label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-bold">{$lang.label.show_deposits_today}</td>
                                <td>
                                    <div class="radio-inline">
                                        <input type="radio" value="yes"
                                               name="infobox[show_deposits_today]"
                                               id="show_deposits_today_yes" {($settings.infobox.show_deposits_today=="yes")?'checked=""':''}>
                                        <label for="show_deposits_today_yes"> Yes </label>
                                    </div>
                                    <div class="radio-inline">
                                        <input type="radio" value="no"
                                               name="infobox[show_deposits_today]"
                                               id="show_deposits_today_no" {($settings.infobox.show_deposits_today=="no")?'checked=""':''}
                                               required>
                                        <label for="show_deposits_today_no"> No </label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-bold">{$lang.label.show_total_withdrawals}</td>
                                <td>
                                    <div class="radio-inline">
                                        <input type="radio" value="yes"
                                               name="infobox[show_total_withdrawals]"
                                               id="show_total_withdrawals_yes" {($settings.infobox.show_total_withdrawals=="yes")?'checked=""':''}>
                                        <label for="show_total_withdrawals_yes"> Yes </label>
                                    </div>
                                    <div class="radio-inline">
                                        <input type="radio" value="no"
                                               name="infobox[show_total_withdrawals]"
                                               id="show_total_withdrawals_no" {($settings.infobox.show_total_withdrawals=="no")?'checked=""':''}
                                               required>
                                        <label for="show_total_withdrawals_no"> No </label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-bold">{$lang.label.show_withdrawals_today}</td>
                                <td>
                                    <div class="radio-inline">
                                        <input type="radio" value="yes"
                                               name="infobox[show_withdrawals_today]"
                                               id="show_withdrawals_today_yes" {($settings.infobox.show_withdrawals_today=="yes")?'checked=""':''}>
                                        <label for="show_withdrawals_today_yes"> Yes </label>
                                    </div>
                                    <div class="radio-inline">
                                        <input type="radio" value="no"
                                               name="infobox[show_withdrawals_today]"
                                               id="show_withdrawals_today_no" {($settings.infobox.show_withdrawals_today=="no")?'checked=""':''}
                                               required>
                                        <label for="show_withdrawals_today_no"> No </label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-bold">{$lang.label.show_online_guests}</td>
                                <td>
                                    <div class="radio-inline">
                                        <input type="radio" value="yes"
                                               name="infobox[show_online_guests]"
                                               id="show_online_guests_yes" {($settings.infobox.show_online_guests=="yes")?'checked=""':''}>
                                        <label for="show_online_guests_yes"> Yes </label>
                                    </div>
                                    <div class="radio-inline">
                                        <input type="radio" value="no"
                                               name="infobox[show_online_guests]"
                                               id="show_online_guests_no" {($settings.infobox.show_online_guests=="no")?'checked=""':''}
                                               required>
                                        <label for="show_online_guests_no"> No </label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-bold">{$lang.label.show_online_users}</td>
                                <td>
                                    <div class="radio-inline">
                                        <input type="radio" value="yes"
                                               name="infobox[show_online_users]"
                                               id="show_online_users_yes" {($settings.infobox.show_online_users=="yes")?'checked=""':''}>
                                        <label for="show_online_users_yes"> Yes </label>
                                    </div>
                                    <div class="radio-inline">
                                        <input type="radio" value="no"
                                               name="infobox[show_online_users]"
                                               id="show_online_users_no" {($settings.infobox.show_online_users=="no")?'checked=""':''}
                                               required>
                                        <label for="show_online_users_no"> No </label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-bold">{$lang.label.show_newest_user}</td>
                                <td>
                                    <div class="radio-inline">
                                        <input type="radio" value="yes"
                                               name="infobox[show_newest_user]"
                                               id="show_newest_user_yes" {($settings.infobox.show_newest_user=="yes")?'checked=""':''}>
                                        <label for="show_newest_user_yes"> Yes </label>
                                    </div>
                                    <div class="radio-inline">
                                        <input type="radio" value="no"
                                               name="infobox[show_newest_user]"
                                               id="show_newest_user_no" {($settings.infobox.show_newest_user=="no")?'checked=""':''}
                                               required>
                                        <label for="show_newest_user_no"> No </label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-bold">{$lang.label.show_last_deposit}</td>
                                <td>
                                    <div class="radio-inline">
                                        <input type="radio" value="yes"
                                               name="infobox[show_last_deposit]"
                                               id="show_last_deposit_yes" {($settings.infobox.show_last_deposit=="yes")?'checked=""':''}>
                                        <label for="show_last_deposit_yes"> Yes </label>
                                    </div>
                                    <div class="radio-inline">
                                        <input type="radio" value="no"
                                               name="infobox[show_last_deposit]"
                                               id="show_last_deposit_no" {($settings.infobox.show_last_deposit=="no")?'checked=""':''}
                                               required>
                                        <label for="show_last_deposit_no"> No </label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-bold">{$lang.label.show_last_withdrawal}</td>
                                <td>
                                    <div class="radio-inline">
                                        <input type="radio" value="yes"
                                               name="infobox[show_last_withdrawal]"
                                               id="show_last_withdrawal_yes" {($settings.infobox.show_last_withdrawal=="yes")?'checked=""':''}>
                                        <label for="show_last_withdrawal_yes"> Yes </label>
                                    </div>
                                    <div class="radio-inline">
                                        <input type="radio" value="no"
                                               name="infobox[show_last_withdrawal]"
                                               id="show_last_withdrawal_no" {($settings.infobox.show_last_withdrawal=="no")?'checked=""':''}
                                               required>
                                        <label for="show_last_withdrawal_no"> No </label>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-md-padding-left-20">
                <h3 class="title">{$lang.legend.site_statistics}</h3>
                <div class="table-responsive">
                    <table id="site_stat_box" class="table table-striped-left">
                        <tbody>
                            <tr>
                                <td class="text-bold">{$lang.label.show_no_top_depositors}
                                    <small class="block text-muted text-normal">
                                        ({$lang.msg.set_zero_disabled})
                                    </small>
                                </td>
                                <td>
                                    <input type="text" class="form-control input-md-3"
                                           name="infobox[no_top_depositors]"
                                           id="no_top_depositors"
                                           value="{$settings.infobox.no_top_depositors}">
                                </td>
                            </tr>
                            <tr>
                                <td class="text-bold">{$lang.label.show_no_last_deposits}
                                    <small class="block text-muted text-normal">
                                        ({$lang.msg.set_zero_disabled})
                                    </small>
                                </td>
                                <td>
                                    <input type="text" class="form-control input-md-3"
                                           name="infobox[no_last_deposits]" id="no_last_deposits"
                                           value="{$settings.infobox.no_last_deposits}">
                                </td>
                            </tr>
                            <tr>
                                <td class="text-bold">{$lang.label.show_no_last_withdrawals}
                                    <small class="block text-muted text-normal">
                                        ({$lang.msg.set_zero_disabled})
                                    </small>
                                </td>
                                <td>
                                    <input type="text" class="form-control input-md-3"
                                           name="infobox[no_last_withdrawals]"
                                           id="no_last_withdrawals"
                                           value="{$settings.infobox.no_last_withdrawals}">
                                </td>
                            </tr>
                            <tr>
                                <td class="text-bold">{$lang.label.show_no_top_referrers}
                                    <small class="block text-muted text-normal">
                                        ({$lang.msg.set_zero_disabled})
                                    </small>
                                </td>
                                <td>
                                    <input type="text" class="form-control input-md-3"
                                           name="infobox[no_top_referrers]" id="no_top_referrers"
                                           value="{$settings.infobox.no_top_referrers}">
                                </td>
                            </tr>
                            <tr>
                                <td class="text-bold">{$lang.label.show_no_top_refcomm}
                                    <small class="block text-muted text-normal">
                                        ({$lang.msg.set_zero_disabled})
                                    </small>
                                </td>
                                <td>
                                    <input type="text" class="form-control input-md-3"
                                           name="infobox[no_top_refcomm]" id="no_top_refcomm"
                                           value="{$settings.infobox.no_top_refcomm}">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <h3 class="title">{$lang.legend.news}</h3>
                <div class="table-responsive">
                    <table id="news_box_settings" class="table table-striped-left">
                        <tbody>
                            <tr>
                                <td class="text-bold">{$lang.label.show_no_news}
                                    <small class="block text-muted text-normal">
                                        ({$lang.msg.set_zero_disabled})
                                    </small>
                                </td>
                                <td>
                                    <input type="text" class="form-control input-md-3"
                                           name="infobox[no_news]"
                                           id="no_news"
                                           value="{$settings.infobox.no_news}">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <h3 class="title">{$lang.legend.testimonials}</h3>
                <div class="table-responsive">
                    <table id="testimonials_box_settings"
                           class="table table-striped-left">
                        <tbody>
                            <tr>
                                <td class="text-bold">{$lang.label.show_no_testimonials}
                                    <small class="block text-muted text-normal">
                                        ({$lang.msg.set_zero_disabled})
                                    </small>
                                </td>
                                <td>
                                    <input type="text" class="form-control input-md-3"
                                           name="infobox[no_testimonials]"
                                           id="no_testimonials"
                                           value="{$settings.infobox.no_testimonials}">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <hr>
        <button type="submit" class="btn btn-primary">{$lang.label.update}</button>
    </form>
{/block}