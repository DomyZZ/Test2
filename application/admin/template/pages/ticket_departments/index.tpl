{block name="page_content"}
    {include file="form_status.tpl" form="tic_dept"}
    {if $logged_id == 1 || isset($permissions['ticket_departments_add'])}
        <form class="form-filter form-inline" name="add_tic_dept" id="add_tic_dept" method="post"
              action="{$admin_url}/ticket_departments/add">
            <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <input type="text" name="name" id="name"
                               class="form-control input-sm input-1-wd" placeholder="Name ....."
                               required>
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

    {if $tic_depts}
        <div class="row">
            <div class="col-md-4">
                <div class="table-responsive">
                    <div class="dataTables_wrapper dt-bootstrap no-footer">
                        <table class="table table-striped dataTable">
                            <thead>
                                <tr>
                                    <th>{$lang.label.name}</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach $tic_depts as $row}
                                    <tr>
                                        <td>
                                            <a href="{$admin_url}/ticket_departments/{$row.id}/edit"
                                               data-toggle="tooltip"
                                               title="{$lang.label.edit}">{$row.name}</a>
                                        </td>
                                        <td width="25%">
                                            <span class="text-{$row.status}">{$row.status|ucfirst}</span>
                                        </td>
                                        <td width="2%" class="text-center">
                                            <a href="{$admin_url}/ticket_departments/{$row.id}/edit"
                                               data-toggle="tooltip" data-placement="left"
                                               title="{$lang.label.edit}" class="btn btn-xs btn-info"><i
                                                        class="fa fa-pencil"></i>
                                            </a>
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