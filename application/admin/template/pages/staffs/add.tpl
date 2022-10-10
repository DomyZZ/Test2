{block name="breadcrumb"}
    <li>
        <a href="{$admin_url}/staffs">{$lang.breadcrumb.staffs}</a>
    </li>
    <li class="active">{$lang.breadcrumb.add}</li>
{/block}

{block name="page_content"}
    <form class="form-horizontal" name="add_staff" id="add_staff" method="post">
        <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
        {include file="form_status.tpl" form="add_staff"}
        <div class="form-group">
            <label for="username" class="control-label col-md-3">{$lang.label.username} <span
                        class="required">*</span></label>
            <div class="col-md-9">
                <input type="text" class="form-control input-sm input-md-4" name="username"
                       id="username" placeholder="john678" value="{set_value("username")}"
                       required/>
            </div>
        </div>
        <div class="form-group">
            <label for="email" class="control-label col-md-3">{$lang.label.email} <span
                        class="required">*</span></label>
            <div class="col-md-9">
                <input type="email" class="form-control input-sm input-md-4" name="email" id="email"
                       value="{set_value("email")}"
                       placeholder="aaaaaaaa@zzz.yyy" required/>
            </div>
        </div>
        <div class="form-group">
            <label for="password" class="control-label col-md-3">{$lang.label.password} <span
                        class="required">*</span></label>
            <div class="col-md-9">
                <input type="text" class="form-control input-sm input-md-4" name="password"
                       id="password" placeholder="**********"
                       required/>
            </div>
        </div>
        <div class="form-group">
            <label for="password" class="control-label col-md-3">{$lang.label.role} <span
                        class="required">*</span></label>
            <div class="col-md-9">
                <select class="form-control input-sm" name="type" id="type" required>
                    {foreach $roles as $role}
                        <option value="{$role.type}">{$role.name}</option>
                    {/foreach}
                </select>
            </div>
        </div>
        <hr>
        <button type="submit" class="btn btn-primary">{$lang.label.save}</button>
    </form>
{/block}