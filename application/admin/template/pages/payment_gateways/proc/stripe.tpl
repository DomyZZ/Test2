{if $settings == 'sci'}
    <div id="sci_stripe_{$proc.nick}" {($proc.payment_details.payment_system=='stripe')?'':'class="hide"'}>
        <div class="form-group">
            <label for="sci_stripe_{$proc.nick}_publishable_key"
                   class="control-label">{$lang.label.publishable_key}</label>
            <input type="text" class="form-control input-sm"
                   name="payment_details[stripe_publishable_key]"
                   id="sci_stripe_{$proc.nick}_publishable_key"
                   value="{$proc.payment_details.stripe_publishable_key}"/>
        </div>
        <div class="form-group">
            <label for="sci_stripe_{$proc.nick}_secret_key" class="control-label">{$lang.label.secret_key}</label>
            <input type="text" class="form-control input-sm inline-block"
                   name="payment_details[stripe_secret_key]"
                   id="sci_stripe_{$proc.nick}_secret_key" {($proc.payment_details.stripe_secret_key)?"disabled placeholder='**hidden**'":""} />
            <a href="javascript:void(0)" class="{($proc.payment_details.stripe_secret_key)?'':'hide'}"
               id="stripe_{$proc.nick}_set_new_sci_secret_key"
               onclick="set_new_pass('stripe_{$proc.nick}_set_new_sci_secret_key','stripe_{$proc.nick}_cancel_new_sci_secret_key','sci_stripe_{$proc.nick}_secret_key')">{$lang.label.set_new}</a>
            <a href="javascript:void(0)" class="hide" id="stripe_{$proc.nick}_cancel_new_sci_secret_key"
               onclick="cancel_new_pass('stripe_{$proc.nick}_set_new_sci_secret_key','stripe_{$proc.nick}_cancel_new_sci_secret_key','sci_stripe_{$proc.nick}_secret_key')">{$lang.label.cancel}</a>
        </div>
        <div class="form-group">
            <label for="sci_stripe_{$proc.nick}_webhook_signing_secret"
                   class="control-label">{$lang.label.webhook_signing_secret}</label>
            <input type="text" class="form-control input-sm inline-block"
                   name="payment_details[stripe_webhook_signing_secret]"
                   id="sci_stripe_{$proc.nick}_webhook_signing_secret" {($proc.payment_details.stripe_webhook_signing_secret)?"disabled placeholder='**hidden**'":""} />
            <a href="javascript:void(0)" class="{($proc.payment_details.stripe_webhook_signing_secret)?'':'hide'}"
               id="stripe_{$proc.nick}_set_new_sci_webhook_signing_secret"
               onclick="set_new_pass('stripe_{$proc.nick}_set_new_sci_webhook_signing_secret','stripe_{$proc.nick}_cancel_new_sci_webhook_signing_secret','sci_stripe_{$proc.nick}_webhook_signing_secret')">{$lang.label.set_new}</a>
            <a href="javascript:void(0)" class="hide" id="stripe_{$proc.nick}_cancel_new_sci_webhook_signing_secret"
               onclick="cancel_new_pass('stripe_{$proc.nick}_set_new_sci_webhook_signing_secret','stripe_{$proc.nick}_cancel_new_sci_webhook_signing_secret','sci_stripe_{$proc.nick}_webhook_signing_secret')">{$lang.label.cancel}</a>
        </div>
    </div>
    <!-- Modal Help -->
    <div id="help-sci-stripe-{$proc.nick}" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Stripe : via Website ({strtoupper($proc.curr_nick)}) SCI Documentation</h4>
                </div>
                <div class="modal-body">
                    <ol>
                        <li>Login to your stripe account. Go to Developers >
                            Api Keys.
                            <ul>
                                <li>Get your publishable key and secret key.
                                </li>
                                <li><b>Note:</b> If you want to do testing, toggle "View test data" in the row above and copy
                                    those publishable and secret key instead.
                                </li>
                            </ul>
                        </li>
                        <li>Go to Developers > Webhooks.
                            <ul>
                                <li>Click "Add endpoint".
                                </li>
                                <li>
                                    Set Endpoint Url to : <b>{$base_url}/payment/status/{$proc.nick}</b>
                                </li>
                                <li>
                                    Select "checkout.session.completed" for Events to send.
                                </li>
                                <li>
                                    Save the endpoint.
                                </li>
                                <li>
                                    Go back to your webhooks page. Get the webhook signing secret.
                                </li>
                            </ul>
                        </li>
                        <li>
                            Enter all details (Publishable Key, Secret Key and Webhook Signing Secret) in respective
                            fields in your sites's admin panel.
                        </li>

                    </ol>

                    <p>Note: If you are doing testing, you can find all test card data <a
                                href="https://stripe.com/docs/testing" target="_blank">here</a>. Make sure you use real api keys instead of test api keys after you are done with testing.</p>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
{/if}