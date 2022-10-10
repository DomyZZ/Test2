{block name="page_content"}
    <form class="form-horizontal" name="manage_admin_profile" id="manage_admin_profile" method="post">
        <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
        {include file="form_status.tpl" form="manage_admin_profile"}
        <div class="form-group">
            <label for="username" class="control-label col-md-3">{$lang.label.username} <span
                        class="required">*</span></label>
            <div class="col-md-9">
                <input type="text" class="form-control input-sm input-md-3" name="username"
                       id="username"
                       placeholder="john678" value="{$admin.username}"
                       required/>
            </div>
        </div>
        <div class="form-group">
            <label for="email" class="control-label col-md-3">{$lang.label.email} <span
                        class="required">*</span></label>
            <div class="col-md-9">
                <input type="email" class="form-control input-sm input-md-3" name="email" id="email"
                       placeholder="aaaaaaaa@zzz.yyy" required value="{$admin.email}"/>
            </div>
        </div>
        <div class="form-group">
            <label for="password" class="control-label col-md-3">{$lang.label.password}</label>
            <div class="col-md-9">
                <input type="text" class="form-control input-sm input-auto inline-block"
                       name="password" required
                       id="password" disabled placeholder="**hidden**"/>
                <a href="javascript:void(0)" id="set_new_password"
                   onclick="set_new_pass('set_new_password','cancel_new_password','password')">{$lang.label.set_new}</a>
                <a href="javascript:void(0)" class="hide" id="cancel_new_password"
                   onclick="cancel_new_pass('set_new_password','cancel_new_password','password')">{$lang.label.cancel}</a>
            </div>
        </div>
        <div class="form-group">
            <label for="allow_multiple_log_sess" class="control-label col-md-3">{$lang.label.allow_multiple_sess}</label>
            <div class="col-md-9">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="allow_multiple_log_sess"
                               id="allow_multiple_log_sess" value="true" {($admin.allow_multiple_log_sess)?'checked':''}>
                    </label>
                </div>
            </div>
        </div>
        <hr>
        <div class="form-group">
            <label class="control-label col-md-3 text-danger">{$lang.label.admin_current_password}</label>
            <div class="col-md-9">
                <input type="password" class="form-control input-sm input-md-3"
                       name="current_password"
                       id="current_password" required/>
            </div>
        </div>
        <hr>
            <button type="submit" class="btn btn-primary">{$lang.label.update}</button>
    </form>
{/block}