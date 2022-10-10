<div id="api_custom_{$proc.nick}" class="hide">
    <table class="table table-bordered table-striped-left">
        <tbody>
            {if $proc.nick == "pm"}
                <tr>
                    <td>{$lang.label.account_id}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][account_id]" id="account_id_{$proc.nick}" disabled/>
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.usd_account}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][payer_account_usd]" id="payer_account_usd_{$proc.nick}" disabled/>
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.login_password}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][login_pass]" id="login_pass_{$proc.nick}" disabled/>
                    </td>
                </tr>
            {elseif $proc.nick == "pr"}
                <tr>
                    <td>{$lang.label.account_id}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][account_id]" id="account_id_{$proc.nick}" disabled/>
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.api_id}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][api_id]" id="api_id_{$proc.nick}" disabled/>
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.api_key}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][api_key]" id="api_key_{$proc.nick}" disabled/>
                    </td>
                </tr>
            {elseif $proc.nick == "ok"}
                <tr>
                    <td>{$lang.label.wallet_id}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][wallet_id]" id="wallet_id_{$proc.nick}" disabled/>
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.api_password}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][api_pass]" id="api_pass_{$proc.nick}" disabled/>
                    </td>
                </tr>
            {elseif $proc.nick == "pz"}
                <tr>
                    <td>{$lang.label.account_email}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][account_api_email]" id="account_api_email_{$proc.nick}" disabled/>
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.api_password}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][api_pass]" id="api_pass_{$proc.nick}" disabled/>
                    </td>
                </tr>
            {elseif $proc.type == "crypto"}
                <tr>
                    <td>{$lang.label.payment_system}</td>
                    <td>
                        <select name="{$proc.nick}[api][payment_system]" id="payment_system_{$proc.nick}"
                                class="form-control input-sm" required disabled
                                onchange="custom_crypto_details('{$proc.nick}')">
                            <option value="coinpayments">CoinPayments</option>
                            {if $proc.nick=="ltc"}
                                <option value="blockio">Block.io</option>
                               <option value="forwardblock">ForwardBlock</option>
                            {elseif $proc.nick=="btc"}
                                <option value="blockio">Block.io</option>
                                <option value="forwardblock">ForwardBlock</option>
                                {*<option value="blocktrail">Blocktrail</option>*}
                               {* <option value="apibtc">ApiBtc</option>*}
                            {elseif $proc.nick=="bch"}
                               {* <option value="blocktrail">Blocktrail</option>*}
                            {/if}
                            {if $proc.nick!="usdt"}
                            <option value="paykassa">Paykassa</option>
                            {/if}
                        </select>
                    </td>
                </tr>
                <tr class="coinpayments_details">
                    <td>{$lang.label.transaction_fee}</td>
                    <td>
                        <input type="text" class="form-control input-sm input_coinpayments"
                               name="{$proc.nick}[api][cp_transaction_fee]" id="cp_transaction_fee_{$proc.nick}" disabled/>
                    </td>
                </tr>
                <tr class="coinpayments_details">
                    <td>{$lang.label.public_key}</td>
                    <td>
                        <input type="text" class="form-control input-sm input_coinpayments"
                               name="{$proc.nick}[api][cp_public_key]" id="cp_public_key_{$proc.nick}" required disabled/>
                    </td>
                </tr>
                <tr class="coinpayments_details">
                    <td>{$lang.label.private_key}</td>
                    <td>
                        <input type="text" class="form-control input-sm input_coinpayments"
                               name="{$proc.nick}[api][cp_private_key]" id="cp_private_key_{$proc.nick}" required disabled/>
                    </td>
                </tr>
                <tr class="blockio_details hide">
                    <td>{$lang.label.network_fees}</td>
                    <td>
                        <select name="{$proc.nick}[api][blio_network_fees]" id="blio_network_fees_{$proc.nick}"
                                class="form-control input-sm input_blockio" disabled>
                            <option value="low">Low</option>
                            <option value="medium" selected>Medium</option>
                            <option value="high">High</option>
                        </select>
                    </td>
                </tr>
                <tr class="blockio_details hide">
                    <td>{$lang.label.api_key}</td>
                    <td>
                        <input type="text" class="form-control input-sm input_blockio"
                               name="{$proc.nick}[api][blio_api_key]" id="blio_api_key_{$proc.nick}" required disabled/>
                    </td>
                </tr>
                <tr class="blockio_details hide">
                    <td>{$lang.label.secret_pin}</td>
                    <td>
                        <input type="text" class="form-control input-sm input_blockio"
                               name="{$proc.nick}[api][blio_secret_pin]" id="blio_secret_pin_{$proc.nick}" required disabled/>
                    </td>
                </tr>
                <tr class="forwardblock_details hide">
                    <td>{$lang.label.api_key}</td>
                    <td>
                        <input type="text" class="form-control input-sm input_forwardblock"
                               name="{$proc.nick}[api][fb_api_key]" id="fb_api_key_{$proc.nick}" required disabled/>
                    </td>
                </tr>
                <tr class="forwardblock_details hide">
                    <td>{$lang.label.hot_wallet_id}</td>
                    <td>
                        <input type="text" class="form-control input-sm input_forwardblock"
                               name="{$proc.nick}[api][fb_hot_wallet_id]" id="fb_hot_wallet_id_{$proc.nick}" required disabled/>
                    </td>
                </tr>
                <tr class="forwardblock_details hide">
                    <td>{$lang.label.hot_wallet_master_pass}</td>
                    <td>
                        <input type="text" class="form-control input-sm input_forwardblock"
                               name="{$proc.nick}[api][fb_hot_wallet_master_pass]" id="fb_hot_wallet_master_pass_{$proc.nick}" required disabled/>
                    </td>
                </tr>
                <tr class="apibtc_details hide">
                    <td>{$lang.label.wallet_token}</td>
                    <td>
                        <input type="text" class="form-control input-sm input_apibtc"
                               name="{$proc.nick}[api][wallet_token]" id="wallet_token_{$proc.nick}" required disabled/>
                    </td>
                </tr>
                <tr class="blocktrail_details hide">
                    <td>{$lang.label.network_fees}</td>
                    <td>
                        <select name="{$proc.nick}[api][blocktrail_network_fees]" id="blocktrail_network_fees_{$proc.nick}"
                                class="form-control input-sm input_blocktrail" disabled>
                            <option value="optimal">Optimal</option>
                            <option value="low">Low Priority</option>
                        </select>
                    </td>
                </tr>
                <tr class="blocktrail_details hide">
                    <td>{$lang.label.api_key}</td>
                    <td>
                        <input type="text" class="form-control input-sm input_blocktrail"
                               name="{$proc.nick}[api][blocktrail_api_key]" id="blocktrail_api_key_{$proc.nick}" required disabled/>
                    </td>
                </tr>
                <tr class="blocktrail_details hide">
                    <td>{$lang.label.api_secret}</td>
                    <td>
                        <input type="text" class="form-control input-sm input_blocktrail"
                               name="{$proc.nick}[api][blocktrail_api_secret]" id="blocktrail_api_secret_{$proc.nick}" required disabled/>
                    </td>
                </tr>
                <tr class="blocktrail_details hide">
                    <td>{$lang.label.wallet_identifier}</td>
                    <td>
                        <input type="text" class="form-control input-sm input_blocktrail"
                               name="{$proc.nick}[api][blocktrail_wallet_identifier]" id="blocktrail_wallet_identifier_{$proc.nick}" required disabled/>
                    </td>
                </tr>
                <tr class="blocktrail_details hide">
                    <td>{$lang.label.wallet_password}</td>
                    <td>
                        <input type="text" class="form-control input-sm input_blocktrail"
                               name="{$proc.nick}[api][blocktrail_wallet_password]" id="blocktrail_wallet_password_{$proc.nick}" required disabled/>
                    </td>
                </tr>
                <tr class="paykassa_details hide">
                    <td>{$lang.label.merchant_id}</td>
                    <td>
                        <input type="text" class="form-control input-sm input_paykassa"
                               name="{$proc.nick}[api][pk_merchant_id]" id="paykassa_merchant_id_{$proc.nick}" required disabled/>
                    </td>
                </tr>
                <tr class="paykassa_details hide">
                    <td>{$lang.label.api_id}</td>
                    <td>
                        <input type="text" class="form-control input-sm input_paykassa"
                               name="{$proc.nick}[api][pk_api_id]" id="paykassa_api_id_{$proc.nick}" required disabled/>
                    </td>
                </tr>
                <tr class="paykassa_details hide">
                    <td>{$lang.label.api_password}</td>
                    <td>
                        <input type="text" class="form-control input-sm input_paykassa"
                               name="{$proc.nick}[api][pk_api_password]" id="paykassa_api_password_{$proc.nick}" required disabled/>
                    </td>
                </tr>
            {elseif $proc.nick == "stp"}
                <tr>
                    <td>{$lang.label.account_username}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][account_username]" id="account_username_{$proc.nick}" disabled/>
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.api_name}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][api_name]" id="api_name_{$proc.nick}" disabled/>
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.api_password}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][api_pass]" id="api_pass_{$proc.nick}" disabled/>
                    </td>
                </tr>
            {elseif $proc.nick == "adc"}
                <tr>
                    <td>{$lang.label.account_email}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][account_email]" id="account_email_{$proc.nick}" disabled/>
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.usd_wallet}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][wallet]" id="wallet_{$proc.nick}" disabled/>
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.api_name}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][api_name]" id="api_name_{$proc.nick}" disabled/>
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.api_password}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][api_pass]" id="api_pass_{$proc.nick}" disabled/>
                    </td>
                </tr>
            {elseif $proc.nick == "nxm"}
                <tr>
                    <td>{$lang.label.account_email}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][account_id]" id="account_id_{$proc.nick}" disabled/>
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.usd_account}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][payer_account_usd]" id="payer_account_usd_{$proc.nick}" disabled/>
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.account_password}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][login_pass]" id="login_pass_{$proc.nick}" disabled/>
                    </td>
                </tr>
            {elseif $proc.nick == "pm-eur"}
                <tr>
                    <td>{$lang.label.account_id}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][account_id]" id="account_id_{$proc.nick}" disabled/>
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.eur_account}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][payer_account_eur]" id="payer_account_eur_{$proc.nick}" disabled/>
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.login_password}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][login_pass]" id="login_pass_{$proc.nick}" disabled/>
                    </td>
                </tr>
            {elseif $proc.nick == "pr-eur"}
                <tr>
                    <td>{$lang.label.account_id}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][account_id]" id="account_id_{$proc.nick}" disabled/>
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.api_id}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][api_id]" id="api_id_{$proc.nick}" disabled/>
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.api_key}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][api_key]" id="api_key_{$proc.nick}" disabled/>
                    </td>
                </tr>
            {elseif $proc.nick == "ok-eur"}
                <tr>
                    <td>{$lang.label.wallet_id}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][wallet_id]" id="wallet_id_{$proc.nick}" disabled/>
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.api_password}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][api_pass]" id="api_pass_{$proc.nick}" disabled/>
                    </td>
                </tr>
            {elseif $proc.nick == "pz-eur"}
                <tr>
                    <td>{$lang.label.account_email}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][account_api_email]" id="account_api_email_{$proc.nick}" disabled/>
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.api_password}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][api_pass]" id="api_pass_{$proc.nick}" disabled/>
                    </td>
                </tr>
            {elseif $proc.nick == "stp-eur"}
                <tr>
                    <td>{$lang.label.account_username}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][account_username]" id="account_username_{$proc.nick}" disabled/>
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.api_name}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][api_name]" id="api_name_{$proc.nick}" disabled/>
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.api_password}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][api_pass]" id="api_pass_{$proc.nick}" disabled/>
                    </td>
                </tr>
            {elseif $proc.nick == "adc-eur"}
                <tr>
                    <td>{$lang.label.account_email}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][account_email]" id="account_email_{$proc.nick}" disabled/>
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.usd_wallet}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][wallet]" id="wallet_{$proc.nick}" disabled/>
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.api_name}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][api_name]" id="api_name_{$proc.nick}" disabled/>
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.api_password}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][api_pass]" id="api_pass_{$proc.nick}" disabled/>
                    </td>
                </tr>
            {elseif $proc.nick == "nxm-eur"}
                <tr>
                    <td>{$lang.label.account_email}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][account_id]" id="account_id_{$proc.nick}" disabled/>
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.eur_account}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][payer_account_eur]" id="payer_account_eur_{$proc.nick}" disabled/>
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.account_password}</td>
                    <td>
                        <input type="text" class="form-control input-sm" required
                               name="{$proc.nick}[api][login_pass]" id="login_pass_{$proc.nick}" disabled/>
                    </td>
                </tr>
            {/if}
        </tbody>
        <tfoot>
            <tr>
                <td colspan="2" style="background: none; text-align: center">
                    <a href="javascript:void(0)" onclick="test_api('{$proc.nick}')">{$lang.label.test_api}</a>
                </td>
            </tr>
        </tfoot>
    </table>
</div>