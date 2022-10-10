{block name="head" append}
    <link href="{$admin_assets}/assets/plugins/elFinder/css/elfinder.min.css" rel="stylesheet" type="text/css"/>
    <link href="{$admin_assets}/assets/plugins/elFinder/css/theme.css" rel="stylesheet" type="text/css"/>
{/block}

{block name="page_content"}
    {if $demo_restriction}
        <div class="alert alert-sm alert-danger alert-dismissible" role="alert">
            {$lang.error.page_not_available_in_demo}
        </div>
    {else}
        <div id="elfinder"></div>
    {/if}
{/block}

{block name="foo" append}
    <!-- jquery-ui -->
    <script src="{$admin_assets}/assets/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
    <!-- Elfinder -->
    <script src="{$admin_assets}/assets/plugins/elFinder/js/elfinder.min.js" type="text/javascript"></script>
{literal}
    <script type="text/javascript">
        if ($('#elfinder').length > 0) {
            $('#elfinder').elfinder({
                url: dqs_admin_url + '/file_manager/init',
                defaultView: 'list',
                height: '600'
            });
        }
    </script>
{/literal}
{/block}