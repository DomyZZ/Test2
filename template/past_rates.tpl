<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
          crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">

    <title>{$title}</title>

    <style>
        body {
            font-family: 'Open Sans', sans-serif;
            font-size: 13px;
            padding-top: 10px;
        }
        

        table {
            margin-bottom: 0px !important;
        }

        .table td, .table th
        {
            padding: 0.5rem 1rem !important;
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
                {infobox_past_calendar_rates package="{$package.id}" days="10" assign_var="mod_past_rates"}
                <ul class="list-group">
                    <li class="list-group-item list-group-item-primary"><b>{$lang.past_rates} - {$package.name}</b></li>
                    <table class="table table-bordered">
                        <thead>
                            <tr class="bg-light">
                                <th class="text-center">{$lang.date}</th>
                                <th class="text-center">{$lang.rate}</th>
                            </tr>
                        </thead>
                        <tbody>
                        {foreach $mod_past_rates as $mpr}
                            <tr>
                                <td width="50%" class="text-center">
                                    {$mpr.date}
                                </td>
                                <td width="50%" class="text-center">
                                    <b>{$mpr.rate}%</b>
                                </td>
                            </tr>
                        {/foreach}
                        </tbody>
                    </table>
                </ul>
            {/if}

        </div>
    </div>
</div>

</body>
</html>