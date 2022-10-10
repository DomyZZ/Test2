{block name="page_content"}
    {if $logged_id == 1 || isset($permissions['users_add'])}
        <a href="{$admin_url}/users/add"><i class="fa fa-plus"></i> {$lang.label.add_user}</a>
        <hr>
    {/if}
    <form class="form-inline form-filter" name="users" id="users" method="get">
        <div class="row">
            <div class="col-md-12">
                <h5>{$lang.label.filter}</h5>
                <div class="form-group">
                    <label for="username" class="control-label">{$lang.label.username}</label>
                    <input type="text" name="username" id="username"
                           class="form-control input-sm" value="{$dt.filter.username}">
                </div>
                <div class="form-group">
                    <label for="email" class="control-label">{$lang.label.email}</label>
                    <input type="text" name="email" id="email"
                           class="form-control input-sm" value="{$dt.filter.email}">
                </div>
                <div class="form-group">
                    <label for="status" class="control-label">{$lang.label.status}</label>
                    <select name="status" id="status" class="form-control input-sm">
                        <option value="">-- ANY --</option>
                        {foreach $status as $key=>$value}
                            <option value="{$key}" {($dt.filter.status==$key)?'selected':''}>{$value}</option>
                        {/foreach}
                    </select>
                </div>
                <div class="form-actions">
                    <button type="submit" class="btn btn-sm btn-default"
                            onclick="dt_filter('users')">
                        {$lang.label.filter}
                    </button>
                    <a href="javascript:void(0)" class="btn btn-link" onclick="dt_reset('users')">
                        {$lang.label.reset_default}
                    </a>
                </div>
            </div>
        </div>
    </form>
    <hr>
    {include file="form_status.tpl" form="users_action"}
    {if $dt.rows}
        <div class="table-responsive">
            <div class="dataTables_wrapper dt-bootstrap no-footer">
                <table class="table table-striped dataTable footable">
                    <thead>
                        <tr>
                            <th onclick="location.href='{$admin_url}/users?{'sort'|bind_query:'username'}'"
                                class="{($dt.sort_by=='username')?{'sorting_'|cat:$dt.sort_order}:'sorting'}">
                                {$lang.label.username}
                            </th>
                            <th>{$lang.label.email}</th>
                            <th>{$lang.label.funds}</th>
                            <th width="5%">{$lang.label.status}</th>
                            <th class="text-center">{$lang.label.actions}</th>
                            <th data-breakpoints="all">{$lang.label.reg_date}</th>
                            <th data-breakpoints="all">{$lang.label.reg_ip}</th>
                            <th data-breakpoints="all">{$lang.label.earning}</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach $dt.rows as $row}
                            <tr>
                                <td>
                                    <a style="text-decoration: underline"
                                       href="{$admin_url}/users/{$row.userid}/profile"
                                       data-toggle="tooltip" class="text-bold"
                                       title="{$lang.label.manage} {$lang.label.user}">{$row.username}</a>

                                    {if $row.upline > 0}
                                        <br>
                                        <small style="margin-left: 25px">
                                            {$lang.label.upline}: <a href="{$admin_url}/users/{$row.upline}/profile"
                                                                     data-toggle="tooltip"
                                                                     title="{$lang.label.manage_upline_user}">
                                                {$row.upline_username}
                                            </a>
                                        </small>
                                    {/if}
                                </td>
                                <td>
                                    {$row.email}
                                </td>
                                <td>
                                    <ul class="list-inline">
                                        <li>
                                            {if $row.balance > 0}
                                                <a href="{$admin_url}/transactions?username={$row.username}"
                                                   data-toggle="tooltip" class="text-bold"
                                                   title="{$lang.label.view_transactions}">{$curr_symbol}{$row.balance|truncdec:$curr_decp}</a>
                                            {else}
                                                --
                                            {/if}
                                            <small style="display: block;">
                                                {$lang.label.balance}
                                            </small>
                                        </li>
                                        <li>
                                            {if $row.deposit > 0}
                                                <a href="{$admin_url}/deposits?username={$row.username}"
                                                   data-toggle="tooltip" class="text-bold"
                                                   title="{$lang.label.view_deposits}">{$curr_symbol}{$row.deposit|truncdec:$curr_decp}</a>
                                            {else}
                                                --
                                            {/if}
                                            <small style="display: block;">
                                                {$lang.label.deposits}
                                            </small>
                                        </li>
                                        <li>
                                            {if $row.deposit > 0}
                                                <a href="{$admin_url}/deposits?username={$row.username}&status=active"
                                                   data-toggle="tooltip" class="text-bold"
                                                   title="{$lang.label.view_deposits}">{$curr_symbol}{$row.active_deposit|truncdec:$curr_decp}</a>
                                            {else}
                                                --
                                            {/if}
                                            <small style="display: block;">
                                                {$lang.label.active_deposits}
                                            </small>
                                        </li>
                                        <li>
                                            {if $row.withdraw > 0}
                                                <a href="{$admin_url}/transactions?username={$row.username}&type=completed_withdrawal"
                                                   data-toggle="tooltip" class="text-bold"
                                                   title="{$lang.label.view_completed_wdr}">{$curr_symbol}{$row.withdraw|truncdec:$curr_decp}</a>
                                            {else}
                                                --
                                            {/if}
                                            <small style="display: block;">
                                                {$lang.label.withdrawals}
                                            </small>
                                        </li>
                                    </ul>
                                </td>
                                <td class="text-bold">
                                    <span class="text-{$row.status}">{$row.status|ucfirst}</span>
                                </td>
                                <td class="text-center">
                                    <a href="{$admin_url}/users/{$row.userid}/profile"
                                       class="label label-actions label-info" data-toggle="tooltip"
                                       title="{$lang.label.manage} {$lang.label.user}"><i class="fa fa-pencil"></i></a>
                                    <a href="{$admin_url}/users/{$row.userid}/mass_mail" class="label label-actions label-info"
                                       data-toggle="tooltip" title="{$lang.title.send_mail}"><i
                                                class="fa fa-envelope"></i></a>
                                    <a href="{$admin_url}/users/{$row.userid}/send_bonus_penalty"
                                       class="label label-actions label-info" data-toggle="tooltip"
                                       title="{$lang.title.send_bonus_penalty}"><i class="fa fa-dollar"></i></a>
                                </td>
                                <td width="80%">
                                    {$row.reg_date|dtformat:'d-M-Y H:i:s'}
                                </td>
                                <td>
                                    {$row.reg_ip}
                                </td>
                                <td>
                                    {if $row.earning > 0}
                                        {$curr_symbol}{$row.earning|truncdec:$curr_decp}
                                    {else}
                                        --
                                    {/if}
                                </td>
                            </tr>
                        {/foreach}
                    </tbody>
                </table>
                {include file="pagination.tpl" page_link="users"}
            </div>
        </div>
    {else}
        <div class="alert alert-warning">
            <i class="fa fa-exclamation-triangle"></i> {$lang.error.no_data_found}
        </div>
    {/if}
    <div class="row help">
        <div class="col-md-12">
            <ul class="list-group list-group-documentation">
                <li class="list-group-item list-group-item-info"><i class="fa fa-question-circle-o"></i> Documentation
                </li>
                <li class="list-group-item">
                    <p class="list-group-item-text">This page lists all users in the system. Users are categorized into
                                                    4 types:</p>
                    <ul class="list-unstyled">
                        <li><b class="text-success">Active</b> - This is the default user type and can do all member
                                                               operations in the system .
                        </li>
                        <li><b>Inactive</b> - This user type needs to verify their email addresses in order to be
                                            activated.
                        </li>
                        <li><b class="text-warning">Suspended</b> - This user type is not allowed to do any financial
                                                                  operation like deposit, withdrawal, internal transfer
                                                                  or exchange etc. They can however login to their
                                                                  account and do all other non-financial operations.
                        </li>
                        <li><b class="text-danger">Blocked</b> - This user type is completely barred from doing any kind
                                                               of activity in the system including login to account.
                        </li>
                    </ul>

                </li>
                <li class="list-group-item">
                    <h5 class="list-group-item-heading title">FILTER</h5>
                    <p class="list-group-item-text">You can search the users by their username, email and status. The
                                                    search feature matches all users which starts with the given
                                                    keyword. For e.g if you search for "abc" in username field, it will
                                                    output all users whose username starts with "abc" like abc123, abcd,
                                                    abc etc. Click on "Reset to default" to reset the filters.</p>
                </li>
                <li class="list-group-item">
                    <h5 class="list-group-item-heading title">ACTIONS</h5>
                    <p class="list-group-item-text">
                    <ul class="list-unstyled">
                        <li>- Click on a username to edit profile details, view funds of the user, view his referrals
                            and also set upline and many more.
                        </li>
                        <li>- Click on "+" to see other details of the user.</li>
                    </ul>
                    </p>
                </li>

            </ul>
        </div>
    </div>
{/block}