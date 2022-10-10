{include file="header.tpl"}

{if $dt.rows}
    {foreach $dt.rows as $row}
        <blockquote>
            <span style="font-size: 70%">{for $i = 1 to $row.rating}
                    <span class="glyphicon glyphicon-star text-info"></span>
                {/for} </span>
            <h3 style="margin-top: 10px;"> {$row.title}</h3>
            <p style="font-size: 85%">{$row.description}</p>
            <small class="text-muted" style="font-size: 80%">{$row.author}</small>
        </blockquote>
    {/foreach}

    {include file="pagination.tpl"}

{else}
    <div class="alert alert-danger">
        {$lang.no_testimonials}
    </div>
{/if}

{include file="footer.tpl"}