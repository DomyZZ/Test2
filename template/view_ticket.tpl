{include file="header.tpl"}


{if !$ticket}
    <div class="alert alert-danger">
        {$lang.invalid_ticket}
    </div>
{else}
    <div class="row">
        <div class="col-sm-6">
            <h4>Ticket #{$ticket_id}</h4>
            <small>Status:
                {if $ticket.status=="closed"}
                    <span class="label label-danger">Closed</span>
                {else}
                    <span class="label label-success">Open</span>
                {/if}
            </small>
        </div>
        <div class="col-sm-6 text-right">

            <ul class="list-unstyled" style="font-size: 90%; margin-top: 10px">
                <li>Created on : {$ticket.date|dtformat}</li>
                <li>{$lang.last_updated}
                    : <b>{($ticket.modified_date)?($ticket.modified_date|dtformat:"timeago"):'<span class="text-danger">Never</span>'}</b></li>
            </ul>

        </div>
    </div>
    <hr/>
    <div class="text-center">Subject: <b>{$ticket.subject}</b></div>
    <hr/>
    <div class="row">
        <div class="col-sm-12">
            <form class="form" method="post">

                {include file="form_errors.tpl" form="reply_ticket"}
                {include file="form_success.tpl" form="reply_ticket"}

                <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>

                <div class="form-group">
                    <label>{$lang.reply_message}:</label>
                    <textarea rows="10" cols="20" name="message" class="form-control">{set_value('message')}</textarea>
                </div>
                {if $settings.general.req_captcha && $settings.general.use_reply_ticket_captcha}
                    {include file="captcha.tpl"}
                {/if}
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">{$lang.submit_reply}</button>
                </div>
            </form>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <h4>Ticket Messages</h4>

            {if $dt.rows}
                <div class="table-responsive">
                    <table class="table">
                        <tbody>
                        {foreach $dt.rows as $row}
                            <tr>
                                <td>
                                    
                                    <b {($row.msg_user_type=="member")?"class='text-success'":"class='text-warning'"}>{$row.msg_user}</b> (<small>{$row.date|dtformat:"timeago"}</small>)
                                    <br/>
                                    <small>{$row.msg_user_type}</small>

                                </td>
                                <td>
                                    {$row.message}
                                </td>
                            </tr>
                        {/foreach}
                        </tbody>
                    </table>
                </div>
                <div class="row pagination-footer">

                </div>
            {else}
                <div class="alert alert-danger">
                    {$lang.no_ticket_messages}
                </div>
            {/if}

        </div>
    </div>
{/if}



{include file="footer.tpl"}