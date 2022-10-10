{if isset($status) && $status.form == $form}
    {if $status.type == 'success'}
    <div class="alert alert-success alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span>
        </button>
        <i class="fa fa-check"></i> {$status.msg}
    </div>
    {elseif $status.type == 'error'}
    <div class="alert alert-danger alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span>
        </button>
        <ul class="list-unstyled">
            {foreach $status.msg as $error}
                <li>{$error}</li>
            {/foreach}
        </ul>
    </div>
    {elseif $status.type == '2fa'}
        <div class="alert alert-success alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span>
            </button>
            <i class="fa fa-check"></i> {$status.msg}
        </div>
    {/if}
{/if}