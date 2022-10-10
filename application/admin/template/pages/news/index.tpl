{block name="page_content"}
    {if $logged_id == 1 || isset($permissions['news_add'])}
        <a href="{$admin_url}/news/add"><i class="fa fa-plus"></i> {$lang.label.add_news}</a>
        <hr>
    {/if}
    {include file="form_status.tpl" form="news_action"}
    {if $dt.rows}
        <div class="table-responsive">
            <div class="dataTables_wrapper dt-bootstrap no-footer">
                <table class="table table-striped dataTable footable">
                    <thead>
                        <tr>
                            <th onclick="location.href='{$admin_url}/users?{'sort'|bind_query:'date'}'"
                                class="{($dt.sort_by=='date')?{'sorting_'|cat:$dt.sort_order}:'sorting'}">{$lang.label.date}
                            </th>
                            <th>{$lang.label.title}</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach $dt.rows as $row}
                            <tr>
                                <td width="15%">{$row.date|dtformat:'d-M-Y'}</td>
                                <td>
                                    <a href="{$admin_url}/news/{$row.uid}/edit" data-toggle="tooltip"
                                       title="{$lang.label.edit}">{$row.title}</a>
                                </td>
                                <td class="text-center" width="8%">
                                    <a href="{$admin_url}/news/{$row.uid}/edit" data-toggle="tooltip" data-placement="left"
                                       title="{$lang.label.edit}" class="btn btn-sm btn-info"><i
                                                class="fa fa-pencil"></i>
                                    </a>
                                    {if $logged_id == 1 || isset($permissions['news_delete'])}
                                        <a href="{$admin_url}/news/{$row.uid}/delete" data-toggle="tooltip" data-placement="left"
                                           onclick="return confirm('{$lang.msg.confirm_news_delete}');"
                                           title="{$lang.label.delete}" class="btn btn-sm btn-danger"><i
                                                    class="fa fa-trash-o"></i></a>
                                    {/if}
                                </td>
                            </tr>
                        {/foreach}
                    </tbody>
                </table>
                {include file="pagination.tpl" page_link="news"}
            </div>
        </div>
    {else}
        <div class="alert alert-warning">
            <i class="fa fa-exclamation-triangle"></i> {$lang.error.no_data_found}
        </div>
    {/if}
{/block}