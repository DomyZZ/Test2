{include file="header.tpl"}

<style type="text/css">
    label {
        width: 100%;
    }
</style>

<div class="row">
    <div class="col-sm-12">
        {if $settings.general.disable_deposits}
            <div class="alert alert-danger">
                {$lang.deposit_disabled}
            </div>
        {else}
            <form class="form" method="post">
                {form_errors form="new_deposit"}
                {form_success form="new_deposit"}
                <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>

                {if !$confirmation}
                    <div class="form-group">
                        <label>{$lang.select_package}</label>
                        <div class="row">
                            {infobox_packages assign_var="mod_packages"}
                            {foreach $mod_packages as $package}
                                <div class="col-sm-4">
                                    <label for="package-{$package.id}">

                                        <ul class="list-group package">
                                            <li class="list-group-item list-group-item-secondary text-center">

                                                <input class="float-right mt-1" type="radio" name="package"
                                                       onchange="check_compounding()"
                                                       required id="package-{$package.id}"
                                                       value="{$package.id}" {($package.id==set_value('package'))?'checked':''}/>

                                                {$package.name}
                                            </li>
                                            <li class="list-group-item text-center">
                                                <h1 class="text-primary mb-0">
                                                    {if $package.rate_type=="fixed"}
                                                        {$package.plan_rate.rate}<sup>%</sup>
                                                    {else}
                                                        {$package.plan_rate.rate}<sup>%</sup>
                                                        -{$package.plan_rate.max_rate}<sup>%</sup>
                                                    {/if}

                                                </h1>
                                                <span>{ucfirst($package.formatted_earning_info)}</span>
                                            </li>
                                            <li class="list-group-item plan px-3 text"
                                                style="font-size: 90%">{$lang.amount_range} <span
                                                        class="float-right pull-right">{$lang.interest_rate}</span></li>
                                            {foreach $package.plans as $plan}
                                                <li class="list-group-item ">{$curr_symbol}{$plan.min_amount}
                                                    -
                                                    {if $plan.max_amount}
                                                        {$curr_symbol}{$plan.max_amount}
                                                    {else}
                                                        &#8734;
                                                    {/if}
                                                    {if $plan.bonus_value > 0}
                                                        <sup style="font-size: 80%">
                                                            +{$plan.bonus_value|truncdec:"2"}{($plan.bonus_type=="percentage")?"%":"{$curr_symbol}"}
                                                            bonus
                                                        </sup>
                                                    {/if}
                                                    <span class="float-right pull-right text-primary">{$plan.rate|clean}%</span>
                                                </li>
                                            {/foreach}
                                            <li class="list-group-item">
                                                {if $package.rate_type!='calendar'}
                                                    <a class="btn btn-primary btn-sm btn-block"
                                                       href="javascript:void(0)"
                                                       onclick="window.open('{$base_url}/calculator/{$package.id}','Calculator','width=350,height=330,left='+(screen.width/2-350/2)+',top='+(screen.height/2-330/2))">{$lang.calculate_profit}</a>
                                                {else}
                                                    <a class="btn btn-primary btn-sm btn-block"
                                                       href="javascript:void(0)"
                                                       onclick="window.open('{$base_url}/past_rates/{$package.id}','View Past Rates','width=350,height=490,left='+(screen.width/2-350/2)+',top='+(screen.height/2-490/2))">{$lang.view_past_rates}</a>
                                                {/if}
                                            </li>

                                        </ul>

                                    </label>
                                </div>
                            {/foreach}
                        </div>

                    </div>
                    <div class="form-group">
                        <label>{$lang.amount}</label>
                        <input type="text" name="amount" class="form-control" value="{set_value('amount')}"
                               required/>
                    </div>
                    {foreach $packages as $package}
                        {if $package.allow_compounding}
                            <div class="form-group package-compounding" id="package-compounding-{$package.id}"
                                 style="display: none">
                                {if $package.comp_val_type=="ranged"}
                                    <label>{$lang.compounding}</label>
                                    <input type="text" name="compounding" class="form-control"
                                           value="{set_value('compounding')}"/>
                                    ({$package.comp_ranged_val_min|clean}% - {$package.comp_ranged_val_max|clean}%)
                                {/if}
                                {if $package.comp_val_type=="solid"}
                                    <label>{$lang.compounding}</label>
                                    <select name="compounding" class="form-control">
                                        <option value="">0%</option>
                                        {foreach $package.comp_solid_vals as $solid_val}
                                            <option value="{$solid_val}">{$solid_val}%</option>
                                        {/foreach}
                                    </select>
                                {/if}
                            </div>
                        {/if}

                    {/foreach}
                    <div class="form-group">
                        <label>{$lang.pay_from}</label> <br/>

                        <table class="table table-bordered">
                            <tbody>
                            {if $settings.general.allow_dep_from_acc}
                                {foreach $processors as  $processor}
                                    {if $processor.balance > 0 }
                                        <tr>
                                            <td width="1%">
                                                <input type="radio" required
                                                       name="processor" {(set_value('processor') == "account-{$processor.id}")?"checked":''}

                                                       value="account-{$processor.id}">

                                            </td>
                                            <td width="1%"><img src="images/processors/{$processor.icon}"/></td>
                                            <td>

                                                {$lang.account_balance} : {$processor.name}
                                                ( {$curr_symbol}{$processor.balance|truncdec} )

                                            </td>
                                        </tr>
                                    {/if}
                                {/foreach}
                            {/if}

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
                    <h4>{$lang.confirm_deposit}</h4>
                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <th colspan="2">{$lang.deposit_details}</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>{$lang.package}</td>
                            <td>{$confirmation.package_name}</td>
                        </tr>
                        <tr>
                            <td>{$lang.deposit_amount}</td>
                            <td>{$curr_symbol}{$confirmation.deposit_amount}</td>
                        </tr>
                        {if !$confirmation.pay_from_balance}
                            <tr>
                                <td>{$lang.payment_amount}</td>
                                <td><b>{$confirmation.payment_amount} {$confirmation.payment_currency}</b></td>
                            </tr>
                        {/if}
                        <tr>
                            <td>{$lang.pay_from}</td>
                            <td>{$confirmation.proc_name} {($confirmation.pay_from_balance)?strtolower($lang.account_balance):""}</td>
                        </tr>

                        </tbody>
                    </table>
                    <div class="form-group">
                        <input type="hidden" name="processor" value="{$confirmation.proc_id}">
                        <input type="hidden" name="amount" value="{$confirmation.deposit_amount}">
                        <input type="hidden" name="package" value="{$confirmation.package_id}">
                        <input type="hidden" name="compounding" value="{$confirmation.compounding}">
                        <input type="hidden" name="pay_from_balance" value="{$confirmation.pay_from_balance}">
                        <input type="hidden" name="confirmation" value="true">
                        <button type="submit" class="btn btn-primary">{$lang.submit}</button>
                    </div>
                {/if}

            </form>
        {/if}

    </div>
</div>

<script type="text/javascript">

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
            if (typeof (processor_balance) !== 'undefined' && processor_balance !== null) {
                processor_balance.style.display = "block";
            }
        }
    }

    window.addEventListener("DOMContentLoaded", function () {
        check_compounding();
        check_balances();
    }, false);

</script>

{include file="footer.tpl"}