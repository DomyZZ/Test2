{block name="page_content"}
    <div class="row">
        <div class="col-md-4">
    <div class="table-responsive">
        <div class="dataTables_wrapper dt-bootstrap no-footer">
            <table class="table table-striped dataTable">
                <thead>
                    <tr>
                        <th>{$lang.label.role}</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    {foreach $roles as $value}
                        <tr>
                            <td>
                                <a href="{$admin_url}/staff_roles/{$value.type}/edit"
                                   data-toggle="tooltip"
                                   title="{$lang.label.edit}">{$value.name}</a>
                            </td>
                            <td width="2%" class="text-center">
                                <a href="{$admin_url}/staff_roles/{$value.type}/edit"
                                   data-toggle="tooltip"
                                   title="{$lang.label.edit}" class="btn btn-xs btn-info"><i class="fa fa-pencil"></i>
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
{/block}