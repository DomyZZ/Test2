{block name="page_content"}
    <form class="form-inline form-filter" name="testimonials" id="testimonials" method="get">
        <div class="row">
            <div class="col-md-12">
                <h5>{$lang.label.filter}</h5>
                <div class="form-group">
                    <label for="username" class="control-label">{$lang.label.username}</label>
                    <input type="text" name="username" id="username"
                           class="form-control input-sm" value="{$dt.filter.username}">
                </div>
                <div class="form-group">
                    <label for="rating" class="control-label">{$lang.label.rating}</label>
                    <select name="rating" id="rating" class="form-control input-sm">
                        <option value="">-- ANY --</option>
                        {foreach $ratings as $value}
                            <option value="{$value}" {($dt.filter.rating==$value)?'selected':''}>{$value}</option>
                        {/foreach}
                    </select>
                </div>
                <div class="form-group">
                    <label for="status" class="control-label">{$lang.label.status}</label>
                    <select name="status" id="status" class="form-control input-sm">
                        <option value="">-- ANY --</option>
                        {foreach $status as $key=>$value}
                            <option value="{$key}" {($dt.filter.status==$key)?'selected':''}>{$value}</option>
                        {/foreach}
                    </select>
                </div>
                <div class="form-group">
                    <label for="startdate" class="control-label">{$lang.label.start_date}</label>
                    <input type="text" autocomplete="off" name="startdate" id="startdate"
                           class="form-control input-sm" placeholder="Min"
                           value="{$dt.filter.startdate}">
                </div>
                <div class="form-group">
                    <label for="enddate" class="control-label">{$lang.label.end_date}</label>
                    <input type="text" autocomplete="off" name="enddate" id="enddate"
                           class="form-control input-sm" placeholder="Max"
                           value="{$dt.filter.enddate}">
                </div>
                <div class="form-actions">
                    <button type="submit" class="btn btn-sm btn-default"
                            onclick="dt_filter('testimonials')">
                        {$lang.label.filter}
                    </button>
                    <a href="javascript:void(0)" class="btn btn-link" onclick="dt_reset('testimonials')">
                        {$lang.label.reset_default}
                    </a>
                </div>
            </div>
        </div>
    </form>
    <hr>
    {include file="form_status.tpl" form="testimonials_action"}
    {if $dt.rows}
        <form class="form-filter" name="testimonials_action" id="testimonials_action" method="post"
              action="{$admin_url}/testimonials/action">
            <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
            <div class="row">
                <div class="col-md-12">
                    <h5>{$lang.label.actions}</h5>
                    <div class="form-inline">
                        <div class="form-group">
                            <label>{$lang.label.with_selected}: </label>
                        </div>
                        <div class="form-group">
                            <div class="form-control-static">
                                <a href="javascript:void(0)" class="text-success"
                                   onclick="selected_action('testimonials_action', 'approved')"><i
                                            class="fa fa-check"></i> {$lang.label.set_approved}</a>
                                |
                                <a href="javascript:void(0)" class="text-warning"
                                   onclick="selected_action('testimonials_action', 'unapproved')"><i
                                            class="fa fa-exclamation-triangle"></i> {$lang.label.set_unapproved}</a>
                                |
                                <a href="javascript:void(0)" class="text-danger"
                                   onclick="selected_action('testimonials_action', 'delete')"><i
                                            class="fa fa-times-circle"></i> {$lang.label.delete}</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
            <div class="table-responsive">
                <div class="dataTables_wrapper dt-bootstrap no-footer">
                    <table class="table table-striped dataTable footable">
                        <thead>
                            <tr>
                                <th width="1%" class="text-center">
                                    <input type="checkbox" name="select_all"
                                           id="select_all"
                                           value="true">
                                </th>
                                <th onclick="location.href='{$admin_url}/testimonials?{'sort'|bind_query:'date'}'"
                                    class="{($dt.sort_by=='date')?{'sorting_'|cat:$dt.sort_order}:'sorting'}">{$lang.label.date}
                                </th>
                                <th onclick="location.href='{$admin_url}/testimonials?{'sort'|bind_query:'username'}'"
                                    class="{($dt.sort_by=='username')?{'sorting_'|cat:$dt.sort_order}:'sorting'}">
                                    {$lang.label.username}
                                </th>
                                <th>{$lang.label.title}</th>
                                <th>{$lang.label.rating}</th>
                                <th width="5%"
                                    onclick="location.href='{$admin_url}/testimonials?{'sort'|bind_query:'status'}'"
                                    class="{($dt.sort_by=='status')?{'sorting_'|cat:$dt.sort_order}:'sorting'}">{$lang.label.status}</th>
                                <th width="2%"></th>
                            </tr>
                        </thead>
                        <tbody>
                            {foreach $dt.rows as $row}
                                <tr id="row_{$row.testi_id}">
                                    <td class="text-center" width="1%">
                                        <input type="checkbox" name="ids[]"
                                               onclick="selected_row('testimonial_{$row.testi_id}','row_{$row.testi_id}')"
                                               id="testimonial_{$row.testi_id}" class="row-check"
                                               value="{$row.testi_id}">
                                    </td>
                                    <td width="14%">
                                        {$row.date|dtformat:'d-M-Y H:i:s'}
                                    </td>
                                    <td>
                                        <a href="{$admin_url}/users/{$row.userid}/profile"
                                           data-toggle="tooltip"
                                           title="{$lang.label.manage} {$lang.label.user}" class="color-inherit">{$row.username}</a>
                                    </td>
                                    <td>
                                        <a href="{$admin_url}/testimonials/{$row.testi_id}/edit"
                                           data-toggle="tooltip"
                                           title="{$lang.label.edit}">{$row.title}</a>
                                    </td>
                                    <td class="text-center">{$row.rating}</td>
                                    <td>
                                        <span class="text-{$row.status}">{$row.status|ucfirst}</span>
                                    </td>
                                    <td class="text-center" width="8%">
                                        <a href="{$admin_url}/testimonials/{$row.testi_id}/edit"
                                           data-toggle="tooltip" data-placement="left"
                                           title="{$lang.label.edit}" class="btn btn-sm btn-info"><i
                                                    class="fa fa-pencil"></i>
                                        </a>
                                        {if $logged_id == 1 || isset($permissions['testimonials_delete'])}
                                            <a href="{$admin_url}/testimonials/{$row.testi_id}/delete"
                                               data-toggle="tooltip" data-placement="left"
                                               onclick="return confirm('{$lang.msg.confirm_testimonial_delete}');"
                                               title="{$lang.label.delete}" class="btn btn-sm btn-danger">
                                                <i
                                                        class="fa fa-trash-o"></i></a>
                                        {/if}
                                    </td>
                                </tr>
                            {/foreach}
                        </tbody>
                    </table>
                    {include file="pagination.tpl" page_link="testimonials"}
                </div>
            </div>
        </form>
    {else}
        <div class="alert alert-warning">
            <i class="fa fa-exclamation-triangle"></i> {$lang.error.no_data_found}
        </div>
    {/if}
{/block}