{include file="header.tpl"}

<div class="form-filter">
    <a href="apply_representative" class="btn btn-success">{$lang.apply_for_representative}</a>
    <hr/>
    <h5>{$lang.filter}</h5>

    <form class="form-inline" name="representatives" id="representatives" method="get">

        <select name="country" class="form-control  form-control-sm input-sm">
            <option value="">- all countries -</option>
            {foreach $countries as $country}
                <option value="{$country.name}" {($dt.filter.country==$country.name)?'selected':''}>{$country.name}</option>
            {/foreach}
        </select>

        <button type="submit" class="btn btn-primary btn-sm">
            {$lang.filter}
        </button>
        <a href="{$base_url}/representatives" class="btn btn-link btn-sm">
            {$lang.reset}
        </a>

    </form>
</div>

{if $dt.rows}
        <table class="table table-bordered ">

            <thead>
            <tr>
                <th>{$lang.name}</th>
                <th>{$lang.country}</th>
                <th>{$lang.languages}</th>
                <th>{$lang.contacts}</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            {foreach $dt.rows as $row}
                <tr>
                    <td>{$row.username}</td>
                    <td>{$row.country}</td>
                    <td>
                        {$languages = unserialize($row.languages)}
                        {if $languages}
                            {implode(", ",$languages)}
                        {/if}
                    </td>
                    <td>
                        {$contacts = unserialize($row.contacts)}
                        <ul class="list-unstyled">
                            {foreach $contacts as $contact => $value}
                                <li>{$contact|ucfirst} : {$value}</li>
                            {/foreach}
                        </ul>
                    </td>
                    <td>
                        <a href="{$base_url}/r/{$row.username}" class="btn btn-primary btn-sm btn-block">Join Now</a>
                    </td>
                </tr>
            {/foreach}
            </tbody>

        </table>
    {include file="pagination.tpl"}
{else}
    <div class="alert alert-danger">
        {$lang.no_representatives}
    </div>
{/if}

{include file="footer.tpl"}