{block name="breadcrumb"}
    <li>
        <a href="{$admin_url}/ticket_help_topics">{$lang.breadcrumb.ticket_help_topics}</a>
    </li>
    <li class="active">{$lang.breadcrumb.edit}</li>
{/block}

{block name="page_content"}
    <form class="form-horizontal" name="edit_ticket_help_topic" id="edit_ticket_help_topic" method="post">
        <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
        {include file="form_status.tpl" form="edit_ticket_help_topic"}
        <div class="form-group">
            <label for="name" class="control-label col-md-2">{$lang.label.title} <span
                        class="required">*</span></label>
            <div class="col-md-10">
                <input type="text" class="form-control" name="title"
                       id="title" value="{$tic_help_topic.title}"
                       required/>
            </div>
        </div>
        <div class="form-group">
            <label for="department_id" class="control-label col-md-2">{$lang.label.department} <span
                        class="required">*</span></label>
            <div class="col-md-10">
                <select class="form-control" name="department_id" id="department_id" required>
                    <option value="">-- Select --</option>
                    {foreach $tic_depts as $val}
                        <option value="{$val.id}" {($tic_help_topic.department_id==$val.id)?'selected':''}>{$val.name}</option>
                    {/foreach}
                </select>
            </div>
        </div>
        <hr>
        <button type="submit" class="btn btn-primary">{$lang.label.update}</button>
    </form>
{/block}