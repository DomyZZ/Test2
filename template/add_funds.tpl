{include file="header.tpl"}

<div class="row">
    <div class="col-sm-10">
        {if !$settings.general.allow_dep_acc_balance}
            <div class="alert alert-danger">
                {$lang.add_funds_disabled}
            </div>
        {else}
            <form class="form" method="post">
                {form_errors form="add_funds"}
                {form_success form="add_funds"}
                <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>

                {if !$confirmation}
                    <div class="form-group">
                        <label>{$lang.amount} ({$curr_symbol})</label>
                        <input type="text" name="amount" class="form-control" value="{set_value('amount')}"
                               required/>
                    </div>
                    <div class="form-group">
                        <label>{$lang.pay_from}</label> <br/>

                        <table class="table" >
                            <tbody>
                            {foreach $processors as  $processor}
                                <tr>
                                    <td width="1%">
                                        <input type="radio"

                                               name="processor"
                                               required {(set_value('processor') == $processor.id)?"checked":''}

                                               value="{$processor.id}">

                                    </td>
                                    <td width="1%"><img src="images/processors/{$processor.icon}"/></td>
                                    <td>

                                        {$processor.name}

                                    </td>
                                </tr>
                            {/foreach}

                            </tbody>
                        </table>

                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary">{$lang.submit}</button>
                    </div>
                {else}
                    <h4>{$lang.confirmation}</h4>
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th colspan="2">{$lang.add_funds_details}</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>{$lang.amount_to_add}</td>
                            <td>{$curr_symbol}{$confirmation.amount}</td>
                        </tr>
                        <tr>
                            <td>{$lang.payment_amount}</td>
                            <td><b>{$confirmation.payment_amount} {$confirmation.payment_currency}</b></td>
                        </tr>
                        <tr>
                            <td>{$lang.pay_from}</td>
                            <td>{$confirmation.proc_name} {($confirmation.pay_from_balance)?strtolower($lang.account_balance):""}</td>
                        </tr>

                        </tbody>
                    </table>
                    <div class="form-group">
                        <input type="hidden" name="processor" value="{$confirmation.proc_id}">
                        <input type="hidden" name="amount" value="{$confirmation.amount}">
                        <input type="hidden" name="confirmation" value="true">
                        <button type="submit" class="btn btn-primary">{$lang.submit}</button>
                    </div>
                {/if}

            </form>
        {/if}

    </div>
</div>

<script type="text/javascript">
    function show_amount_ranges() {

        var proc_obj = document.querySelector('input[name="processor"]:checked');

        if (proc_obj !== null) {

            var proc_id = proc_obj.value;

            var plan_amount_ranges = document.querySelectorAll('.plan-amount-ranges'),
                i = 0,
                l = plan_amount_ranges.length;

            for (i; i < l; i++) {
                plan_amount_ranges[i].style.display = 'none';
            }

            var plan_amount_range = document.querySelectorAll(".rate-" + proc_id);
            i = 0,
                l = plan_amount_range.length;

            for (i; i < l; i++) {
                plan_amount_range[i].style.display = 'inline-block';
            }
        }

    }

    function check_compounding() {

        var package_obj = document.querySelector('input[name="package"]:checked');

        if (package_obj !== null) {
            var package_id = package_obj.value;

            var package_compoundings = document.querySelectorAll('.package-compounding'),
                i = 0,
                l = package_compoundings.length;

            if (package_compoundings !== null) {
                for (i; i < l; i++) {
                    package_compoundings[i].style.display = 'none';
                }

                var package_compounding = document.getElementById("package-compounding-" + package_id);

                if (package_compounding !== null) {
                    package_compounding.style.display = "block";
                }
            }


        }


    }

    function check_balances() {
        var proc_obj = document.querySelector('input[name="processor"]:checked');

        if (proc_obj !== null) {
            var proc_id = proc_obj.value;

            var processor_balances = document.querySelectorAll('.processor_balances'),
                i = 0,
                l = processor_balances.length;

            for (i; i < l; i++) {
                processor_balances[i].style.display = 'none';
            }

            var processor_balance = document.getElementById('balance-' + proc_id);
            if (typeof(processor_balance) !== 'undefined' && processor_balance !== null) {
                processor_balance.style.display = "block";
            }
        }
    }

    window.addEventListener("DOMContentLoaded", function () {
        show_amount_ranges();
        check_compounding();
        check_balances();
    }, false);

</script>

{include file="footer.tpl"}