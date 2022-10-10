{block name="page_subtitle"}
    <small>(#{$ticket.uid})</small>{/block}

{block name="breadcrumb"}
    <li>
        <a href="{$admin_url}/tickets">{$lang.breadcrumb.tickets}</a>
    </li>
    <li class="active">{$lang.breadcrumb.manage}</li>
{/block}

{block name="page_content"}
    {include file="form_status.tpl" form="manage_ticket"}
    <div class="block">
        {$lang.label.subject}: <span style="font-size: 20px; font-weight: 500">{$ticket.subject}</span>
        <sup style="display: inline-block;font-size: 13px; margin-left: 5px">
            <ul class="list-unstyled list-inline">
                {if $ticket.tic_status == "closed"}
                    <li>
                        <a href="{$admin_url}/tickets/{$ticket.uid}/open" data-toggle="tooltip" class="text-success"
                           data-title="{$lang.label.reopen}">
                            <i class="fa fa-circle-o"></i>
                        </a>
                    </li>
                {else}
                    <li>
                        <a href="javascript:void(0)" onclick="edit_tic()" data-toggle="tooltip"
                           data-title="{$lang.label.edit}">
                            <i class="fa fa-pencil"></i>
                        </a>
                    </li>
                    <li>
                        <a href="{$admin_url}/tickets/{$ticket.uid}/close" data-toggle="tooltip" class="text-warning"
                           data-title="{$lang.label.close}">
                            <i class="fa fa-times-circle"></i>
                        </a>
                    </li>
                {/if}
                <li>
                    <a href="{$admin_url}/tickets/{$ticket.uid}/delete" data-toggle="tooltip" class="text-danger"
                       data-title="{$lang.label.delete}">
                        <i class="fa fa-trash"></i>
                    </a>
                </li>
            </ul>
        </sup>
    </div>
    <div>
        {$lang.label.status}: <b
                class="text-{$ticket.tic_status} text-muted">{$lang.label.{$ticket.tic_status}}</b>
                            &nbsp;
        {$lang.label.created_on}: <b class="text-muted">{$ticket.date|dtformat:'jS M,Y H:i:s'}</b>
                            &nbsp;
        {$lang.label.department}: <b class="text-muted">{$ticket.name}</b>
    </div>
    <hr>
    {if $ticket.tic_status != "closed"}
        <div class="hide" id="ed_tic">
            <form class="form-inline" name="edit_ticket" id="edit_ticket" method="post"
                  action="{$admin_url}/tickets/{$ticket.uid}/edit">
                <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
                <div class="form-group">
                    <label for="department">{$lang.label.department}</label>
                    <select name="department" id="department" class="form-control input-sm"
                            required>
                        {foreach $tic_depts as $val}
                            <option value="{$val.id}" {($ticket.department_id==$val.id)?'selected':''}>{$val.name}</option>
                        {/foreach}
                    </select>
                </div>
                <div class="form-group">
                    <label for="subject">{$lang.label.subject}</label>
                    <input type="text" class="form-control input-sm" size="40" name="subject" id="subject"
                           value="{$ticket.subject}"
                           required/>
                </div>
                <div class="form-group">
                    <input type="hidden" name="id" id="id" value="{$ticket.tic_id}">
                    <button type="submit"
                            class="btn btn-sm btn-purple">{$lang.label.update}</button>
                </div>
            </form>
            <hr>
        </div>
    {/if}
    <h5 class="title-1">
        <i class="fa fa-comments"
           style="font-size: 24px"></i> {$lang.legend.conversion_log}
    </h5>
    {if $dt.rows}
        <div class="dataTables_wrapper dt-bootstrap no-footer" style="margin: 0 10px 0 10px;">
            <ul class="messages">
                {foreach $dt.rows as $row}
                    {if $row.support_msg=='no'}
                        <li class="right">
                            <div class="image">
                                <img src="{$admin_assets}/assets/img/user-pic.png" alt="">
                            </div>
                            <div class="message">
                                <span class="caret"></span>
                                <span class="name">
                                                                <a href="{$admin_url}/users/{$row.userid}/profile"
                                                                   data-toggle="tooltip"
                                                                   title="{$lang.label.manage} {$lang.label.user}">{$row.username}</a>
                                                            </span>
                                <p>{$row.message|nl2br}</p>
                                <span class="time">{$row.date|dtformat:'jS M,Y H:i:s'}</span>
                            </div>
                        </li>
                    {else}
                        <li class="left">
                            <div class="image ng-scope">
                                <img src="{$admin_assets}/assets/img/admin-profile-pic.jpg"
                                     alt="">
                            </div>
                            <div class="message">
                                <a href="{$admin_url}/tickets/{$ticket.uid}/msg/{$row.msgid}/delete"
                                   data-toggle="tooltip" title="Delete this message"
                                   type="button" class="btn btn-danger btn-xs close-btn"
                                   style="float: right">
                                    <span>×</span>
                                </a>
                                <span class="caret"></span>
                                <span class="name">{$row.username|ucfirst}</span>
                                <p>{$row.message|nl2br}</p>
                                <span class="time">{$row.date|dtformat:'jS M,Y H:i:s'}</span>
                            </div>
                        </li>
                    {/if}
                {/foreach}
            </ul>
            <div class="row">
                <div class="col-sm-3">
                </div>
                <div class="col-sm-6">
                    <div class="dataTables_paginate paging_simple_numbers">
                        {$dt.pagination}
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="dataTables_info">
                        Showing {$dt.page} to {$dt.total_pages} of {$dt.total_rows} entries
                    </div>
                </div>
            </div>
            {if $ticket.tic_status!='closed'}
                <div class="row">
                    <div class="col-md-6">
                        <form name="reply_ticket" id="reply_ticket" method="post"
                              action="{$admin_url}/tickets/{$ticket.uid}/reply"
                              style="margin-top: 20px">
                            <input type="hidden" name="{$csrf_token.name}"
                                   value="{$csrf_token.hash}"/>
                            <div class="form-group">
                                <textarea class="form-control" rows="8" name="message" id="message" required placeholder="{$lang.label.reply_msg}...."></textarea>
                            </div>
                            <div class="form-group">
                                <input type="hidden" name="id" id="id" value="{$ticket.tic_id}">
                                <button type="submit"
                                        class="btn btn-purple">{$lang.label.reply}</button>
                            </div>
                        </form>
                    </div>
                </div>
            {/if}
        </div>
    {else}
        <div class="alert alert-warning">
            <i class="fa fa-exclamation-triangle"></i> {$lang.msg.no_conversation_logs_found}
        </div>
    {/if}
{/block}

{block name="foo" append}
    {if $ticket.tic_status != "closed"}
    {literal}
        <script type="text/javascript">
            function edit_tic() {
                if ($('#ed_tic').hasClass('hide')) {
                    $('#ed_tic').removeClass('hide');
                }
                else {
                    $('#ed_tic').addClass('hide');
                }
            }
        </script>
    {/literal}
    {/if}
{/block}