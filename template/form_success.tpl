{if isset($status) && $status["form"] == $form}
    {if $status.type=="success"}
        <div class="alert alert-dismissible alert-success ">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            {$status.msg}
        </div>
    {/if}
{/if}

