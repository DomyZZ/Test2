{block name="breadcrumb"}
    <li>
        <a href="{$admin_url}/ticket_departments">{$lang.breadcrumb.ticket_departments}</a>
    </li>
    <li class="active">{$lang.breadcrumb.edit}</li>
{/block}

{block name="page_content"}
    <form class="form-horizontal" name="edit_ticket_department" id="edit_ticket_department" method="post">
        <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
        {include file="form_status.tpl" form="edit_ticket_department"}
        <div class="form-group">
            <label for="name" class="control-label col-md-2">{$lang.label.name} <span
                        class="required">*</span></label>
            <div class="col-md-10">
                <input type="text" class="form-control" name="name"
                       id="name" value="{$tic_dept.name}"
                       required/>
            </div>
        </div>
        <div class="form-group">
            <label for="status" class="control-label col-md-2">{$lang.label.status} <span
                        class="required">*</span></label>
            <div class="col-md-10">
                <select class="form-control" name="status" id="status" required>
                    {foreach $all_status as $key=>$val}
                        <option value="{$key}" {($tic_dept.status==$key)?'selected':''}>{$val}</option>
                    {/foreach}
                </select>
            </div>
        </div>
        <hr>
            <button type="submit" class="btn btn-primary">{$lang.label.update}</button>
    </form>
{/block}