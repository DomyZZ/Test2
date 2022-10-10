{block name="page_subtitle"}<small>{$staff_role.type}</small>{/block}

{block name="breadcrumb"}
    <li>
        <a href="{$admin_url}/staff_roles">{$lang.breadcrumb.staff_roles}</a>
    </li>
    <li class="active">{$lang.breadcrumb.edit}</li>
{/block}

{block name="page_content"}
    <form name="edit_staff_role" id="edit_staff_role" method="post">
        <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
        {include file="form_status.tpl" form="edit_staff_role"}
        <a href="#" onclick="select_all_links()">{$lang.label.select_all}</a>
        |
        <a href="#" onclick="unselect_all_links()">{$lang.label.unselect_all}</a>
        {assign var="i" value=0}
        {foreach $access_lists as $group=>$lists}
            {$i=$i+1}
            {if $i==1}
                <div class="row" style="margin-bottom: 10px">
            {/if}
            <div class="col-md-3">
                <h3 class="title select_all" id="{$group}" onclick="select_sub_links('{$group}')" style="cursor: pointer">{$group|replace:'_':' '}</h3>
                {foreach $lists as $k=>$v}
                    {assign var="list" value=$group|cat:"_"|cat:$k}
                    <div class="form-group">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="permissions[{$list}]" class="roles roles_{$group}"
                                       id="{$list}" {($staff_role['permissions'][$list])?'checked=""':''}
                                       value="true">
                                {$group|cat:'_'}{$v[2]}</label>
                        </div>
                    </div>
                {/foreach}
            </div>
            {if $i==4}
                {$i=0}
                </div>
            {/if}
        {/foreach}
        {if $i>0}
            </div>
        {/if}
        <div class="clearfix"></div>
        <hr>
        <input type="hidden" name="id" value="{$staff_role.id}"/>
        <button type="submit" class="btn btn-primary">{$lang.label.update}</button>
    </form>
{/block}

{block name="foo" append}
{literal}
    <script type="text/javascript">
        function select_all_links() {
            $(".roles").prop('checked', true);
        }
        function unselect_all_links() {
            $(".roles").prop('checked', false);
        }
        function select_sub_links(cl) {
            if($('#'+cl).hasClass('select_all')) {
                $('.roles_' + cl).prop('checked', true);
                $('#' + cl).removeClass('select_all').addClass('unselect_all');
            }
            else {
                $('.roles_' + cl).prop('checked', false);
                $('#' + cl).removeClass('unselect_all').addClass('select_all');
            }
        }
    </script>
{/literal}
{/block}