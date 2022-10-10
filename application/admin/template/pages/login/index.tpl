{block name="body"}
    <div class="wrapper">
        <div class="container" style="margin-top: 100px">

            <div class="row">
                <div class="col-md-offset-3 col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <i class="fa fa-lock"></i> {$lang.title.login}
                                <small class="block" style="margin-left: 12px; font-size: 80%">
                                    <strong>{$lang.label.login_sub_title}</strong>
                                </small>
                            </div>
                        </div>
                        <div class="panel-body">
                            <form id="loginform" name="loginform" method="post">
                                <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}" />
                                {include file="form_status.tpl" form="admin_login"}
                                <div class="form-group">
                                    <label class="control-label">{$lang.label.username}</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input id="username" type="text" class="form-control" name="username"
                                               autocomplete="off"
                                               placeholder="Username" required autofocus
                                               value="{set_value('username')}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">{$lang.label.password}</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-key"></i></span>
                                        <input id="pass" type="password" class="form-control" name="password"
                                               autocomplete="off"
                                               placeholder="******" required>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary">{$lang.label.login}</button>
                            </form>
                        </div>
                    </div>
                    <div>
                        Copyright © <b>Dqscript 2019-2020</b>.
                        <small>All rights reserved.</small>
                    </div>
                </div>
            </div>
        </div>
    </div>
{/block}