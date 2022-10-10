{include file="header.tpl"}

{if $dt.rows}

    {foreach $dt.rows as $row}

        <small class="text-muted" style="font-size: 80%">{$row.date|dtformat:"jS M, Y"}</small>
        <h3 style="margin-top: 10px;"> <a href="news/view/{$row.uid}">{$row.title}</a></h3>
        <p>{$row.sm_description}</p>
        <a class="mt-2" href="news/view/{$row.uid}">Read more ..</a>
        {if !$row@last}
            <hr />
        {/if}
    {/foreach}

    {include file="pagination.tpl"}
{else}
    <div class="alert alert-danger">
        {$lang.no_news}
    </div>
{/if}

{include file="footer.tpl"}