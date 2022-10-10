{include file="header.tpl"}

{if $news}
    <small class="text-muted" style="font-size: 80%">{$news.date|dtformat:"jS M, Y"}</small>
    <h2>{$news.title}</h2>
    {$news.description}
{else}
    <div class="alert alert-danger">{$lang.no_news_found_with_id}</div>
{/if}



{include file="footer.tpl"}