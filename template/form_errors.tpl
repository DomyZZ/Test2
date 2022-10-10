{if isset($status) && $status["form"] == $form}
    {if $status.type=="error"}
        <div class="alert alert-dismissable alert-danger">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            {foreach $status.msg as $error}
                <div>{$error}</div>
            {/foreach}
        </div>
    {/if}
{/if}

