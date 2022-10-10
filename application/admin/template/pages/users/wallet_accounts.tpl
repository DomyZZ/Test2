{extends file="users/manage.tpl"}

{block name="manage_user"}
    {if $wallets}
        <form name="manage_wallet_accounts" id="manage_wallet_accounts" method="post"
              action="{$admin_url}/users/{$user.id}/wallet_accounts">
            <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
            {include file="form_status.tpl" form="manage_wallet_accounts"}
            <div class="table-responsive">
                <table class="table">
                    <thead>
                        <tr>
                            <th width="1%"></th>
                            <th>{$lang.label.account}</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach $wallets as $wallet}
                            <tr>
                                <td class="text-center">
                                    <a href="{$adminbase}/payment-gateways">
                                        <img src="{$admin_assets}/assets/img/processors/{$wallet.icon}"
                                             rel="tooltip"
                                             title="{$wallet.name}"/>
                                    </a>
                                </td>
                                <td>
                                    {if $wallet['p_type'] == 'custom'}
                                        {if is_array($wallet.account)}
                                            {foreach $wallet.account as $key=>$val}
                                                <span style="float: left; margin-left: 5px; display: block; font-weight: 600">{$val.name}
                                                    :</span>
                                                <input type="text" class="form-control"
                                                       style="margin-bottom: 5px"
                                                       name="accounts[{$wallet.proc}][{$key}][value]"
                                                       id="account_{$wallet.proc}_{$key}" value="{$val.value}"/>
                                            {/foreach}
                                        {else}
                                            <span class="text-danger">-- No withdraw fields set in payment gateways --</span>
                                        {/if}
                                    {else}
                                        {if $wallet.nick == 'xrp'}
                                            <input type="text" class="form-control inline-block" style="width: 70%"
                                                   name="accounts[{$wallet.proc}]"
                                                   id="account_{$wallet.proc}" value="{$wallet.account}">
                                            <input type="text" class="form-control inline-block" style="width: 25%; float: right"
                                                   name="tags[{$wallet.proc}]" placeholder="Tag"
                                                   id="tag_{$wallet.proc}" value="{$wallet.tag}"/>
                                            {else}
                                        <input type="text" class="form-control"
                                               name="accounts[{$wallet.proc}]"
                                               id="account_{$wallet.proc}" value="{$wallet.account}">
                                        {/if}
                                    {/if}
                                </td>
                            </tr>
                        {/foreach}
                    </tbody>
                </table>
            </div>
            <button type="submit" class="btn btn-primary">{$lang.label.update}</button>
        </form>
    {else}
        <div class="alert alert-warning">
            <i class="fa fa-exclamation-triangle"></i> {$lang.error.no_active_proc}
        </div>
    {/if}
{/block}