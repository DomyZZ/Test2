{include file="header.tpl"}
<div class="row">

    <div class="col-sm-12">

        {if $status == "failed"}
            <div class="alert alert-danger">
                {$lang.payment_failed}
            </div>
        {/if}

        {if $status  == "successful"}
            <div class="alert alert-success">
                {$lang.payment_successful}
            </div>
        {/if}


    </div>

</div>
{include file="footer.tpl"}