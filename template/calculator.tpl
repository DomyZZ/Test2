<!doctype html>
<html lang="en">
<head>
    <base href="{$base_url}/">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
          crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">

    <title>{$title}</title>

    <style>
        body {
            padding-top: 10px;
            font-family: "Open Sans", "sans-serif";
            font-size: 13px;
        }
        
        * {
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }

        label {
            margin-top: 7px;
            font-weight: normal;
        }

        ul {
            margin-bottom: 0px;
        }

        table {
            margin-bottom: 0px !important;
        }

        .table th
        {
            background: #0a2640;
            color: #fff;
            padding: 8px 10px
        }

        .table td {
            vertical-align: middle;
            padding: 4px 10px
        }


    </style>

</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-sm-12">

            {if !$package}
                <div class="alert alert-danger">{$language.invalid_package}</div>
            {else}
                    <form class="form" method="post">

                        {include file="form_errors.tpl" form="calculator"}

                        <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>

                        <ul class="list-group">
                            <li class="list-group-item list-group-item-primary"><b>{$lang.calculator} - {$package.name}</b></li>
                            <table class="table table-bordered">
                                
                                <tbody>

                                <tr>
                                    <td width="50%">
                                        <label>{$lang.deposit_amount} ({$curr_symbol})

                                        </label>
                                    </td>
                                    <td>
                                        <input type="text" name="amount" class="form-control form-control-sm input-sm"
                                               value="{set_value('amount')}" required>
                                    </td>
                                </tr>
                                {if $package.package_duration == "forever"}
                                    <tr>
                                        <td>
                                            <label>Deposit Duration ({$package.earning_interval_unit})</label>
                                        </td>
                                        <td>
                                            <input type="text" name="duration" class="form-control form-control-sm input-sm"
                                                   value="{set_value('duration')}" required>
                                        </td>
                                    </tr>
                                {/if}
                                {if $package.allow_compounding}
                                    <tr>
                                        <td><label>{$lang.compounding}</label></td>
                                        <td>
                                            {if $package.comp_val_type=="ranged"}
                                                <input type="text" name="compounding" class="form-control form-control-sm input-sm"
                                                       value="{set_value('compounding')}"
                                                       value="{set_value('compounding')}"/>
                                                ({$package.comp_ranged_val_min|clean}% - {$package.comp_ranged_val_max|clean}%)
                                            {/if}
                                            {if $package.comp_val_type=="solid"}
                                                <select name="compounding" class="form-control form-control-sm input-sm">
                                                    <option value="">0%</option>
                                                    {foreach $package.comp_solid_vals as $solid_val}
                                                        <option value="{$solid_val}" {(set_value('compounding')==$solid_val)?'selected':''}>{$solid_val}
                                                            %
                                                        </option>
                                                    {/foreach}
                                                </select>
                                            {/if}
                                        </td>
                                    </tr>
                                {/if}
                                <tr>
                                    <td>
                                        <label>{$lang.total_return}</label>
                                    </td>
                                    <td>

                                        {if $result.total_return}
                                            <b>{$curr_symbol}{$result.total_return}</b>
                                        {else}
                                            <span class="text-danger">--</span>
                                        {/if}

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>{$lang.net_profit}</label>
                                    </td>
                                    <td>
                                        {if $result.net_profit}
                                            <b>{$curr_symbol}{$result.net_profit}</b>
                                        {else}
                                            <span class="text-danger">--</span>
                                        {/if}
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <button class="btn btn-success btn-sm btn-block">{$lang.calculate}</button>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </ul>

                    </form>
            {/if}

        </div>
    </div>
</div>

</body>


</html>