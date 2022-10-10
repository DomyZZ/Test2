{block name="page_content"}
    {include file="form_status.tpl" form="tic_help_topic"}
    {if $logged_id == 1 || isset($permissions['ticket_help_topics_add'])}
        <form class="form-filter form-inline" name="add_tic_help_topic" id="add_tic_help_topic"
              method="post" action="{$admin_url}/ticket_help_topics/add">
            <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <input type="text" name="title" id="title"
                               class="form-control input-sm input-1-wd" placeholder="Title ....."
                               required>
                    </div>
                    <div class="form-group">
                        <select name="department_id" id="department_id"
                                class="form-control input-sm" required>
                            <option value="">-- Select --</option>
                            {foreach $tic_depts as $val}
                                <option value="{$val.id}">{$val.name}</option>
                            {/foreach}
                        </select>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-sm btn-purple btn-filter">
                            {$lang.label.add}
                        </button>
                    </div>
                </div>
            </div>
        </form>
        <hr>
    {/if}

    {if $tic_help_topics}
        <div class="row">
            <div class="col-md-6">
                <div class="table-responsive">
                    <div class="dataTables_wrapper dt-bootstrap no-footer">
                        <table class="table table-striped dataTable">
                            <thead>
                                <tr>
                                    <th>{$lang.label.title}</th>
                                    <th>{$lang.label.department}</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach $tic_help_topics as $row}
                                    <tr>
                                        <td>
                                            <a href="{$admin_url}/ticket_help_topics/{$row.h_topic_id}/edit"
                                               data-toggle="tooltip"
                                               title="{$lang.label.edit}">{$row.title}</a>
                                        </td>
                                        <td>
                                            <a href="{$admin_url}/ticket_departments/{$row.department_id}/edit"
                                               data-toggle="tooltip"
                                               title="{$lang.label.edit} {$lang.label.department}" class="color-inherit">{$row.name}</a>
                                        </td>
                                        <td class="text-center" width="20%">
                                            <a href="{$admin_url}/ticket_help_topics/{$row.h_topic_id}/edit"
                                               data-toggle="tooltip"
                                               title="{$lang.label.edit}" class="btn btn-sm btn-info"><i
                                                        class="fa fa-pencil"></i>
                                            </a>
                                            {if $logged_id == 1 || isset($permissions['ticket_help_topics_delete'])}
                                                <a href="{$admin_url}/ticket_help_topics/{$row.h_topic_id}/delete"
                                                   data-toggle="tooltip"
                                                   onclick="return confirm('{$lang.msg.confirm_tic_h_topic_delete}');"
                                                   title="{$lang.label.delete}" class="btn btn-sm btn-danger"><i
                                                            class="fa fa-trash-o"></i></a>
                                            {/if}
                                        </td>
                                    </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    {else}
        <div class="alert alert-warning">
            <i class="fa fa-exclamation-triangle"></i> {$lang.error.no_data_found}
        </div>
    {/if}
{/block}