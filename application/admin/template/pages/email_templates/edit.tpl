{block name="breadcrumb"}
    <li>
        <a href="{$admin_url}/email_templates">{$lang.breadcrumb.email_templates}</a>
    </li>
    <li class="active">{$lang.breadcrumb.edit}</li>
{/block}

{block name="page_content"}
    <form class="form-horizontal" name="edit_email_tmpl" id="edit_email_tmpl"
          method="post" action="{$admin_url}/email_templates/{$email_tmpl.id}/edit">
        <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
        <h5 class="title-1">
                {$lang.legend.email_template} (#{$email_tmpl.id})
                <sub>
                    <a href="{$admin_url}/email_templates">
                        <i class="fa fa-arrow-circle-left"></i> {$lang.label.back_email_templates}
                    </a>
                </sub>
           </h5>
        {include file="form_status.tpl" form="edit_email_tmpl"}
        <div class="form-group">
            <label for="name" class="control-label col-md-3">{$lang.label.name}</label>
            <div class="col-md-9">
                <input type="text" class="form-control" required name="name"
                       id="name"
                       value="{$email_tmpl.name}"/>
            </div>
        </div>
        <div class="form-group">
            <label for="subject" class="control-label col-md-3">{$lang.label.subject}</label>
            <div class="col-md-9">
                <input type="text" class="form-control" required name="subject"
                       id="subject"
                       value="{$email_tmpl.subject}"/>
            </div>
        </div>
        <div class="form-group">
            <label for="html_content" class="control-label col-md-3">{$lang.label.message}</label>
            <div class="col-md-9">
                                <textarea name="html_content" required
                                          id="html_content" class="form-control"
                                          placeholder="......">{$email_tmpl.html_content}</textarea>
            </div>
        </div>
        <hr>
            <button type="submit" class="btn btn-primary">{$lang.label.update}</button> &nbsp;
            <button type="button" class="btn btn-success"
                    onclick="selected_action('edit_email_tmpl', 'test')">{$lang.label.test_mail}</button>
    </form>
{/block}

{block name="foo" append}
    <!-- ckeditor js -->
    <script src="{$admin_assets}/assets/plugins/ckeditor/ckeditor.js" type="text/javascript"></script>
{literal}
    <script>
        $(document).ready(function () {
            "use strict";
            CKEDITOR.replace('html_content', {
                height: '300px',
                fullPage: false,
                allowedContent: true,
                toolbarGroups: [
                    {name: 'document', groups: ['mode', 'document']},
                    {name: 'clipboard', groups: ['clipboard', 'undo']},
                    {name: 'basicstyles', groups: ['basicstyles']},
                    {name: 'paragraph', groups: ['list', 'indent', 'blocks', 'align', 'paragraph']},
                    '/',
                    {name: 'links', groups: ['links']},
                    { name: 'insert', groups: [ 'insert' ] },
                ]
            });
        });
    </script>
{/literal}
{/block}