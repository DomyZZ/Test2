{include file="header.tpl"}

<div class="form-filter">

    <h5>{$lang.filter}</h5>

    <form class="form-inline" name="pending_withdrawals" id="pending_withdrawals" method="get"
          action="{$base_url}/pending_withdrawals">

        <input type="date" name="startdate" class="form-control form-control-sm input-sm" value="{$dt.filter.startdate}"  />
        <input type="date" name="enddate" class="form-control form-control-sm input-sm" value="{$dt.filter.enddate}" />
        <button type="submit" class="btn btn-primary btn-sm"
                onclick="dt_filter('pending_withdrawals')">
            {$lang.filter}
        </button>
        <a href="{$base_url}/pending_withdrawals" class="btn btn-link btn-sm">
            {$lang.reset}
        </a>

    </form>

</div>

{form_errors form="pending_withdrawals"}
{form_success form="pending_withdrawals"}

{if $dt.rows}
    <div class="table-responsive">
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>{$lang.id}</th>
                <th width="20%" class="sorting"><a
                            href="{$base_url}/pending_withdrawals?{'sort'|bind_query:'date'}">{$lang.date}</a>
                </th>
                <th class="text-right">{$lang.amount}</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            {foreach $dt.rows as $row}
                <tr>
                    <td width="15%">{$row.uid}
                        {if $settings.general.can_cancel_withdrawal}
                            <small><a class="d-block" onclick="return confirm('Do you really want to cancel this withdrawal?')"
                                      href="{$base_url}/pending_withdrawals/cancel/{$row.uid}">{$lang.cancel_withdrawal}</a>
                            </small>
                        {/if}

                    </td>
                    <td>
                        {$row.date|dtformat}
                    </td>
                    <td class="text-right" width="28%">
                        {$desc = unserialize($row.description_2)}
                        <b>{$row.amount|truncdec} {$curr_nick}</b>
                        {if $row.amount != $desc.recv_amount}
                            <br/>
                            <small>{$lang.you_will_get}: <b>{$desc.recv_amount|clean} {$curr_nick}</b>
                            </small>
                        {/if}
                        {if $curr_nick != $desc.recv_curr|strtoupper}
                            <br/>
                            <small>{$lang.you_will_get}:
                                <b>{$desc.pay_amount|clean} {$desc.recv_curr|strtoupper}</b>
                            </small>
                        {/if}

                    </td>
                    <td width="1%"><img src="images/processors/{$row.icon}"/></td>

                </tr>
            {/foreach}
            </tbody>
        </table>
    </div>
    {include file="pagination.tpl"}

{else}
    <div class="alert alert-danger">
        {$lang.no_pending_withdrawals}
    </div>
{/if}

{include file="footer.tpl"}