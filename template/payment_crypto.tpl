{include file="header.tpl"}

<div class="row">
    <div class="col-sm-12" align="center">

        {if $payment.status=="inactive"}
            <img
                    src="https://chart.googleapis.com/chart?cht=qr&chs=300x300&chl={strtolower($payment.proc_name)}:{$payment.address}?amount={$payment.amount}&choe=UTF-8&chld=L|0"
                    alt="QR Image"/>
            <div class=" alert alert-info" style="margin: 20px 0px">
                {$lang.pay_to_details|sprintf:{$payment.proc_name}}
            </div>
            <p>Payment times out in <span id="time"></span> minutes.</p>
        {/if}


        {if $payment.status=="timedout"}
            <div class=" alert alert-danger" style="margin: 20px 0px">Sorry! Your payment timed out. Please try
                depositing again.
            </div>
        {/if}

        {if $payment.status == "underpaid"}
            <div class=" alert alert-danger" style="margin: 20px 0px">Underpayment Detected!
            </div>
            <p>{$lang.underpayment_notice}</p>
            <table class="table table-bordered">
                <tr>
                    <td>{$lang.payment_id}</td>
                    <td>{$payment.id}</td>
                </tr>
                <tr>
                    <td>{$lang.payment_address}</td>
                    <td>{$payment.address}</td>
                </tr>
                <tr>
                    <td>{$lang.payment_amount}</td>
                    <td>{$payment.amount} {$payment.curr_nick}</td>
                </tr>
                <tr>
                    <td>{$lang.paid_amount}</td>
                    <td class="text-danger">{$payment.paid_amount|clean} {$payment.curr_nick}</td>
                </tr>
                <tr>
                    <td>{$lang.txid}</td>
                    <td>{$payment.txid}</td>
                </tr>
            </table>
        {/if}

        {if $payment.status == "waiting"}
            <div class=" alert alert-warning" style="margin: 20px 0px">{$lang.crypto_payment_status_waiting}
            </div>
        {/if}

        {if $payment.status == "completed"}
            <div class=" alert alert-success" style="margin: 20px 0px;">{$lang.crypto_payment_status_completed}</div>
        {/if}

        {if $payment.status != "timedout" && $payment.status != "underpaid"}
            <table class="table table-bordered">

                <tbody>
                <tr>
                    <td>{$lang.payment_address}</td>
                    <td><code>{$payment.address}</code></td>
                </tr>
                {if $payment.tag}
                    <tr>
                        <td>{$lang.payment_tag}</td>
                        <td><code>{$payment.tag}</code></td>
                    </tr>
                {/if}
                <tr>
                    <td>{$lang.payment_amount}</td>
                    <td><code>{$payment.amount}</code> {$payment.curr_nick}</td>
                </tr>
                {if $payment.status=="waiting"}
                    <tr>
                        <td>{$lang.txid}</td>
                        <td>{$payment.txid}</td>
                    </tr>
                    {if $explorer_link}
                        <tr>
                            <td>{$lang.confirmations}</td>
                            <td><a href="{$explorer_link}" target="_blank">{$lang.check_here}</a></td>
                        </tr>
                    {/if}

                {/if}

                {if $payment.status=="completed"}
                    <tr>
                        <td>{$lang.txid}</td>
                        <td>{$payment.txid}</td>
                    </tr>
                {/if}

                </tbody>
            </table>
        {/if}

        {if $payment.status=="inactive"}
            <script type="text/javascript">
                var timeout = setTimeout("location.reload(true);", 20000);

                function resetTimeout() {
                    clearTimeout(timeout);
                    timeout = setTimeout("location.reload(true);", 20000);
                }
            </script>
            <script type="text/javascript">
                function startTimer(duration, display) {
                    var timer = duration, minutes, seconds;
                    setInterval(function () {
                        minutes = parseInt(timer / 60, 10)
                        seconds = parseInt(timer % 60, 10);

                        minutes = minutes < 10 ? "0" + minutes : minutes;
                        seconds = seconds < 10 ? "0" + seconds : seconds;

                        if (minutes <= 0 && seconds <= 0) return;

                        display.textContent = minutes + ":" + seconds;

                        if (--timer <= 0) {
                            timer = 0;
                        }
                    }, 1000);
                }

                window.onload = function () {
                    var fiveMinutes = 60 * {$payment_timeout},
                        display = document.querySelector('#time');
                    startTimer(fiveMinutes, display);
                };

            </script>
        {/if}

    </div>
</div>

{include file="footer.tpl"}