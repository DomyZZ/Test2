{block name="page_content"}
    <form class="form-filter form-inline" name="add_holiday" id="add_holiday" method="post"
          action="{$admin_url}/holidays/add">
        <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <input type="text" name="h_date" id="h_date" autocomplete="off"
                           class="form-control input-sm input-1" placeholder="{time()|dtformat:'d-m-Y'}" required>
                </div>
                <div class="form-group">
                    <input type="text" name="description" id="description"
                           class="form-control input-sm input-2-wd" placeholder="Description ....." required>
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
    {include file="form_status.tpl" form="holidays"}
    {if $dt.rows}
        <div class="table-responsive">
            <div class="dataTables_wrapper dt-bootstrap no-footer">
                <table class="table table-striped dataTable footable">
                    <thead>
                        <tr>
                            <th onclick="location.href='{$admin_url}/holidays?{'sort'|bind_query:'date'}'"
                                class="{($dt.sort_by=='date')?{'sorting_'|cat:$dt.sort_order}:'sorting'}">{$lang.label.date}</th>
                            <th>{$lang.label.description}</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach $dt.rows as $row}
                            <tr>
                                <td width="26%">{$row.h_date|dtformat:'d-M-Y'}</td>
                                <td>{$row.description}</td>
                                <td class="text-center" width="2%">
                                    <a href="{$admin_url}/holidays/{$row.id}/delete" data-toggle="tooltip"
                                       onclick="return confirm('{$lang.msg.confirm_holiday_delete}');"
                                       title="Delete Holiday" class="btn btn-xs btn-danger"><i
                                                class="fa fa-trash-o"></i></a>
                                </td>
                            </tr>
                        {/foreach}
                    </tbody>
                </table>
                {include file="pagination.tpl" page_link="holidays"}
            </div>
        </div>
    {else}
        <div class="alert alert-warning">
            <i class="fa fa-exclamation-triangle"></i> {$lang.error.no_data_found}
        </div>
    {/if}
{/block}

{block name="foo" append}
    <script type="text/javascript">
        {literal}
        jQuery(function ($) {
            "use strict"; // Start of use strict

            $("#h_date").datepicker({format: 'dd-mm-yyyy'});
        });
        {/literal}
    </script>
{/block}