{block name="page_content"}
    <a href="{$admin_url}/staffs/add"><i
                class="fa fa-plus"></i> {$lang.label.add_staff}</a>
    <hr>
    {include file="form_status.tpl" form="staffs_action"}
    {if $staffs}
        <form class="form-filter" name="staffs_action" id="staffs_action" method="post"
              action="{$admin_url}/staffs/action">
            <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
            <div class="table-responsive">
                <div class="dataTables_wrapper dt-bootstrap no-footer">
                    <table class="table table-striped dataTable footable">
                        <thead>
                            <tr>
                                <th>
                                    {$lang.label.username}
                                </th>
                                <th>
                                    {$lang.label.role}
                                </th>
                                <th width="20%"></th>
                            </tr>
                        </thead>
                        <tbody>
                            {foreach $staffs as $row}
                                <tr>
                                    <td>{$row.username}</td>
                                    <td>
                                        <a href="{$admin_url}/staff_roles/{$row.type}/edit"
                                           data-toggle="tooltip"
                                           title="{$lang.label.edit_role}">{$row.name}
                                    </td>
                                    <td class="text-center">
                                        <a href="{$admin_url}/staffs/{$row.userid}/edit"
                                           data-toggle="tooltip" data-placement="left"
                                           title="{$lang.label.edit}" class="btn btn-sm btn-info"><i
                                                    class="fa fa-pencil"></i>
                                        </a>
                                        <a href="{$admin_url}/staffs/{$row.userid}/delete"
                                           data-toggle="tooltip" data-placement="left"
                                           title="{$lang.label.delete}" class="btn btn-sm btn-danger"
                                           onclick="return confirm('{$lang.msg.confirm_staff_delete}');">
                                            <i class="fa fa-trash-o"></i>
                                        </a>
                                    </td>
                                </tr>
                            {/foreach}
                        </tbody>
                    </table>
                </div>
            </div>
        </form>
    {else}
        <div class="alert alert-warning">
            <i class="fa fa-exclamation-triangle"></i> {$lang.error.no_data_found}
        </div>
    {/if}
{/block}