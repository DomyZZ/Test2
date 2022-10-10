{extends file="users/manage.tpl"}

{block name="manage_user"}
    {if $user_ips}
        <div class="table-responsive">
            <table class="table table-striped footable">
                <thead>
                    <tr>
                        <th>{$lang.label.ip}</th>
                        <th>{$lang.label.last_access}</th>
                    </tr>
                </thead>
                <tbody>
                    {foreach $user_ips as $value}
                        <tr>
                            <td class="width-md-130">{$value.ip}</td>
                            <td class="width-md-180">{$value.date|dtformat:'d-M-Y H:i:s'}</td>
                        </tr>
                    {/foreach}
                </tbody>
            </table>
        </div>
    {else}
        <div class="alert alert-warning ">
            <i class="fa fa-exclamation-triangle"></i> {$lang.error.no_access_yet}
        </div>
    {/if}
{/block}