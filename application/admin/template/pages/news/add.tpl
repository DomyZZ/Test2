{block name="breadcrumb"}
    <li>
        <a href="{$admin_url}/news">{$lang.breadcrumb.news}</a>
    </li>
    <li class="active">{$lang.breadcrumb.add}</li>
{/block}

{block name="page_content"}
    <form class="form-horizontal" name="add_news" id="add_news" method="post"
          action="{$admin_url}/news/add">
        <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
        {include file="form_status.tpl" form="add_news"}
        {foreach $langs as $value}		
                <h3 class="title">{$value|strtoupper} {$lang.legend.language}</h3>
            <div class="form-group">
                <label for="title_{$value}"
                       class="control-label col-md-3">{$lang.label.title} {($value=='en')?'<span class="required">*</span>':''}</label>
                <div class="col-md-9">
                    <input type="text" class="form-control" name="{$value}[title]"
                           id="title_{$value}" {($value=='en')?'required':''}/>
                </div>
            </div>
            <div class="form-group">
                <label for="sm_description_{$value}"
                       class="control-label col-md-3">{$lang.label.sm_description} {($value=='en')?'<span class="required">*</span>':''}</label>
                <div class="col-md-9">
                    <textarea name="{$value}[sm_description]" id="sm_description_{$value}" class="form-control"
                              rows="5" {($value=='en')?'required':''} style="max-width: 100%"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label for="description_{$value}"
                       class="control-label col-md-3">{$lang.label.description} {($value=='en')?'<span class="required">*</span>':''}</label>
                <div class="col-md-9">
                    <textarea name="{$value}[description]" id="description_{$value}" class="form-control"
                              placeholder="......" {($value=='en')?'required':''}></textarea>
                </div>
            </div>
        {/foreach}
        <hr>
        <button type="submit" class="btn btn-primary">{$lang.label.save}</button>
    </form>
{/block}

{block name="foo" append}
    <!-- ckeditor js -->
    <script src="{$admin_assets}/assets/plugins/ckeditor/ckeditor.js" type="text/javascript"></script>
{literal}
    <script>
        $(document).ready(function () {
            "use strict"; // Start of use strict
            // Replace the <textarea id="editor1"> with a CKEditor
            // instance, using default configuration.
            {/literal}
            {foreach $langs as $value}
            CKEDITOR.replace('{$value}[description]', {literal}{height: 350,fullPage: false,allowedContent: true}{/literal});
            {/foreach}
            {literal}
        });
    </script>
{/literal}
{/block}