{include file="header.tpl"}

<h4>{$lang.referral_link}</h4>
<code>{$user.reflink}</code>
<hr/>

<h4>{$lang.banners}</h4>

<img src="images/banners/banner-leaderboard.gif"/>  <br/> <br/>

{$lang.embed_code} (728x90 Banner)
<xmp>
    <a href="{$user.reflink}"><img src="{$base_url}/images/banners/banner-leaderboard.gif"/></a>
</xmp>

<hr/>

<img src="images/banners/banner-full.gif"/>  <br/> <br/>

{$lang.embed_code} (468x60 Banner)
<xmp>
    <a href="{$user.reflink}"><img src="{$base_url}/images/banners/banner-full.gif"/></a>
</xmp>
<hr/>
<img src="images/banners/banner-square.gif"/>  <br/> <br/>

{$lang.embed_code} (125x125 Banner)
<xmp>
    <a href="{$user.reflink}"><img src="{$base_url}/images/banners/banner-square.gif"/></a>
</xmp>

<hr/>
<img src="images/banners/banner-skyscraper.gif"/>  <br/> <br/>

{$lang.embed_code} (160x600 Banner)
<xmp>
    <a href="{$user.reflink}"><img src="{$base_url}/images/banners/banner-skyscraper.gif"/></a>
</xmp>

<style>
    xmp {

        margin-bottom: 10px;
        overflow: auto;
        width: auto;
        background-color: #eee;
        padding: 10px;
        max-height: 600px;
        font-size: 12px;
    }
</style>

{include file="footer.tpl"}
