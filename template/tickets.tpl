{include file="header.tpl"}


<div class="form-filter">
    <ul class="nav nav-pills">
        <li class="nav-item">
            <a class="nav-link {(!isset($dt.filter.status))?'active':''}" href="tickets">{$lang.all}</a>
        </li>
        <li class="nav-item">
            <a class="nav-link {($dt.filter.status=='open')?'active':''}" href="tickets?status=open">{$lang.open}</a>
        </li>
        <li class="nav-item">
            <a class="nav-link {($dt.filter.status=='answered')?'active':''}"
               href="tickets?status=answered">{$lang.answered}</a>
        </li>
        <li class="nav-item">
            <a class="nav-link {($dt.filter.status=='closed')?'active':''}"
               href="tickets?status=closed">{$lang.closed}</a>
        </li>
    </ul>
</div>
<hr/>


{if $dt.rows}
    <div class="table-responsive">
        <table class="table table-bordered dataTable">
            <thead>
            <tr>
                <th width="10%">{$lang.id}</th>
                <th width="10%">{$lang.department}</th>
                <th width="40%">{$lang.subject}</th>
                <th width="10%">{$lang.status}</th>
                <th width="15%">{$lang.last_updated}</th>

            </tr>
            </thead>
            <tbody>
            {foreach $dt.rows as $row}
                <tr>
                    <td>
                        {$row.uid}
                    </td>
                    <td>
                        {$row.ticket_dept_name}
                    </td>
                    <td>
                        {if $row.status=="answered"}
                            <b><a href="ticket/{$row.uid}">{$row.subject}</a></b>
                        {else}
                            <a href="ticket/{$row.uid}">{$row.subject}</a>
                        {/if}

                    </td>
                    <td>
                        {if $row.status=='open'}
                            <span class="text-success">{ucfirst($row.status)}</span>
                        {/if}
                        {if $row.status=='answered'}
                            <span class="text-warning">{ucfirst($row.status)}</span>
                        {/if}
                        {if $row.status=='closed'}
                            <span class="text-muted">{ucfirst($row.status)}</span>
                        {/if}

                    </td>
                    <td>{$row.modified_date|dtformat}</td>
                </tr>
            {/foreach}
            </tbody>
        </table>
    </div>
    {include file="pagination.tpl"}
{else}
    <div class="alert alert-danger">
        {$lang.no_tickets}
    </div>
{/if}

{include file="footer.tpl"}