{block name="page_content"}
    <div class="row">
        <div class="col-md-5">
            <div class="table-responsive">
                <div class="dataTables_wrapper dt-bootstrap no-footer">
                    <table class="table table-striped dataTable">
                        <thead>
                            <tr>
                                <th></th>
                                <th>{$lang.label.name}</th>
                            </tr>
                        </thead>
                        <tbody>
                            {foreach $email_tmpls as $em_tmpl}
                                <tr>
                                    <td width="2%" class="text-center"><span
                                                class="label label-success">{$em_tmpl.id}</span></td>
                                    <td>
                                        <a href="{$admin_url}/email_templates/{$em_tmpl.id}/edit" data-toggle="tooltip" title="{$lang.label.edit}">{$em_tmpl.name}</a>
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