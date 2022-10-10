{block name="breadcrumb"}{/block}

{block name="page_content"}
    <div class="row dashboard-box">
        <div class="col-xs-12 col-sm-5 col-md-5">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title text-center">USERS</h3>
                </div>
                <div class="panel-body text-center">
                    <h2>{$total_users}</h2>

                    <h6 class="text-muted">( {$lang.label.users_today}: {$users_today} )</h6>
                </div>
                <div class="panel-footer text-center">
                    {$lang.label.active}: <a href="{$admin_url}/users?status=active"><b>{$active_users}</b></a> | {$lang.label.suspended}: <a href="{$admin_url}/users?status=suspended"><b>{$suspended_users}</b></a>
                                        | {$lang.label.blocked}:
                    <a href="{$admin_url}/users?status=blocked"><b>{$blocked_users}</b></a> | {$lang.label.deposited}: <a href="{$admin_url}/deposits"><b>{$deposited_users}</b></a>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-4 col-md-4">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title text-center">DEPOSITS</h3>
                </div>
                <div class="panel-body text-center">
                    <h2>{$curr_symbol}<span>{$total_deposits|truncdec}</span></h2>

                    <h6 class="text-muted">( {$lang.label.deposits_today}
                                           : {$curr_symbol}{$deposits_today|truncdec:$curr_decp} )</h6>
                </div>
                <div class="panel-footer text-center">
                    {$lang.label.active}:
                    <b>{$curr_symbol}{($total_funds['active_deposit'])?($total_funds['active_deposit']|truncdec:$curr_decp):0}</b>
                                        | {$lang.label.earnings}:
                    <b>{$curr_symbol}{($total_funds['earning'])?($total_funds['earning']|truncdec:$curr_decp):0}</b>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-3 col-md-3">
            <div class="panel panel-danger">
                <div class="panel-heading">
                    <h3 class="panel-title text-center">WITHDRAWALS</h3>
                </div>
                <div class="panel-body text-center">
                    <h2>{$curr_symbol}<span>{$total_withdrawals|truncdec}</span></h2>

                    <h6 class="text-muted">( {$lang.label.withdrawals_today}
                                           : {$curr_symbol}{$withdrawals_today|truncdec:$curr_decp}
                                           )</h6>
                </div>
                <div class="panel-footer text-center">
                    {$lang.label.pending}:
                    <b>{$curr_symbol}{($total_funds['pending_withdrawal'])?($total_funds['pending_withdrawal']|truncdec:$curr_decp):0}</b>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div style="float: left">
                {* <select class="form-control" name="processor" ng-required="true" onchange="get_financial_chart();">
                     <option value="">- {$lang.all_processors} -</option>
                     {foreach $processors as $value}
                         <option value="{$value.id}">{$value.name}</option>
                     {/foreach}
                 </select>*}
            </div>
            <div style="float: right; font-size: 16px">
                <div style="display: inline-block" id="date_range_deposits"></div>
                <div style="display:inline-block;margin-left: 10px" id="date_range_withdrawals"></div>
            </div>
        </div>
        <div class="col-md-12">
            <div id="container" style="height: 400px; min-width: 310px"></div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h3 class="title">{$lang.label.finances_in_details}</h3>
            {if $processors}
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr class="tr-color">
                                <th width="1%"></th>
                                <th colspan="2" class="text-center">{$lang.label.today}</th>
                                <th colspan="2" class="text-center">{$lang.label.this_week}</th>
                                <th colspan="2" class="text-center">{$lang.label.this_month}</th>
                                <th colspan="2" class="text-center">{$lang.label.this_year}</th>
                                <th colspan="2" class="text-center">{$lang.label.total}</th>
                            </tr>
                            <tr class="thead-bg-1">
                                <th></th>
                                <th class="text-center">{$lang.label.in}</th>
                                <th class="text-center">{$lang.label.out}</th>
                                <th class="text-center">{$lang.label.in}</th>
                                <th class="text-center">{$lang.label.out}</th>
                                <th class="text-center">{$lang.label.in}</th>
                                <th class="text-center">{$lang.label.out}</th>
                                <th class="text-center">{$lang.label.in}</th>
                                <th class="text-center">{$lang.label.out}</th>
                                <th class="text-center">{$lang.label.in}</th>
                                <th class="text-center">{$lang.label.out}</th>
                            </tr>
                        </thead>
                        <tbody>
                            {foreach $processors as $id=>$proc}
                                <tr>
                                    <td class="thead-bg-1 text-center">
                                        <a href="{$admin_url}/payment_gateways">
                                            <img src="{$admin_assets}/assets/img/processors/{$proc.icon}"
                                                 data-toggle="tooltip"
                                                 title="{$proc.name}"/>
                                        </a>
                                    </td>
                                    <td class="text-center">
                                        {if $finances['today']['add_funds'][$id]}
                                            {$curr_symbol}{$finances['today']['add_funds'][$id]|truncdec:$curr_decp}
                                        {else}
                                            <span style="color:#b3b3b3">--</span>
                                        {/if}
                                    </td>
                                    <td class="text-center">
                                        {if $finances['today']['completed_withdrawal'][$id]}
                                            {$curr_symbol}{$finances['today']['completed_withdrawal'][$id]|truncdec:$curr_decp}
                                        {else}
                                            <span style="color:#b3b3b3">--</span>
                                        {/if}
                                    </td>
                                    <td class="text-center">
                                        {if $finances['week']['add_funds'][$id]}
                                            {$curr_symbol}{$finances['week']['add_funds'][$id]|truncdec:$curr_decp}
                                        {else}
                                            <span style="color:#b3b3b3">--</span>
                                        {/if}
                                    </td>
                                    <td class="text-center">
                                        {if $finances['week']['completed_withdrawal'][$id]}
                                            {$curr_symbol}{$finances['week']['completed_withdrawal'][$id]|truncdec:$curr_decp}
                                        {else}
                                            <span style="color:#b3b3b3">--</span>
                                        {/if}
                                    </td>
                                    <td class="text-center">
                                        {if $finances['month']['add_funds'][$id]}
                                            {$curr_symbol}{$finances['month']['add_funds'][$id]|truncdec:$curr_decp}
                                        {else}
                                            <span style="color:#b3b3b3">--</span>
                                        {/if}
                                    </td>
                                    <td class="text-center">
                                        {if $finances['month']['completed_withdrawal'][$id]}
                                            {$curr_symbol}{$finances['month']['completed_withdrawal'][$id]|truncdec:$curr_decp}
                                        {else}
                                            <span style="color:#b3b3b3">--</span>
                                        {/if}
                                    </td>
                                    <td class="text-center">
                                        {if $finances['year']['add_funds'][$id]}
                                            {$curr_symbol}{$finances['year']['add_funds'][$id]|truncdec:$curr_decp}
                                        {else}
                                            <span style="color:#b3b3b3">--</span>
                                        {/if}
                                    </td>
                                    <td class="text-center">
                                        {if $finances['year']['completed_withdrawal'][$id]}
                                            {$curr_symbol}{$finances['year']['completed_withdrawal'][$id]|truncdec:$curr_decp}
                                        {else}
                                            <span style="color:#b3b3b3">--</span>
                                        {/if}
                                    </td>
                                    <td class="text-center">
                                        {if $fund_types[$id]['add_funds']!=0}
                                            {$curr_symbol}{$fund_types[$id]['add_funds']|truncdec:$curr_decp}
                                        {else}
                                            <span style="color:#b3b3b3">--</span>
                                        {/if}
                                    </td>
                                    <td class="text-center">
                                        {if $fund_types[$id]['completed_withdrawal']!=0}
                                            {$curr_symbol}{$fund_types[$id]['completed_withdrawal']|truncdec:$curr_decp}
                                        {else}
                                            <span style="color:#b3b3b3">--</span>
                                        {/if}
                                    </td>
                                </tr>
                            {/foreach}
                        </tbody>
                        <tfoot>
                            <tr>
                                <td class="text-center">{$lang.label.total|strtoupper}</td>
                                <td class="text-center text-bold">
                                    {if $finances['today']['add_funds']['total']}
                                        {$curr_symbol}{$finances['today']['add_funds']['total']|truncdec:$curr_decp}
                                    {/if}
                                </td>
                                <td class="text-center text-bold">
                                    {if $finances['today']['completed_withdrawal']['total']}
                                        {$curr_symbol}{$finances['today']['completed_withdrawal']['total']|truncdec:$curr_decp}
                                    {/if}
                                </td>
                                <td class="text-center text-bold">
                                    {if $finances['week']['add_funds']['total']}
                                        {$curr_symbol}{$finances['week']['add_funds']['total']|truncdec:$curr_decp}
                                    {/if}
                                </td>
                                <td class="text-center text-bold">
                                    {if $finances['week']['completed_withdrawal']['total']}
                                        {$curr_symbol}{$finances['week']['completed_withdrawal']['total']|truncdec:$curr_decp}
                                    {/if}
                                </td>
                                <td class="text-center text-bold">
                                    {if $finances['month']['add_funds']['total']}
                                        {$curr_symbol}{$finances['month']['add_funds']['total']|truncdec:$curr_decp}
                                    {/if}
                                </td>
                                <td class="text-center text-bold">
                                    {if $finances['month']['completed_withdrawal']['total']}
                                        {$curr_symbol}{$finances['month']['completed_withdrawal']['total']|truncdec:$curr_decp}
                                    {/if}
                                </td>
                                <td class="text-center text-bold">
                                    {if $finances['year']['add_funds']['total']}
                                        {$curr_symbol}{$finances['year']['add_funds']['total']|truncdec:$curr_decp}
                                    {/if}
                                </td>
                                <td class="text-center text-bold">
                                    {if $finances['year']['completed_withdrawal']['total']}
                                        {$curr_symbol}{$finances['year']['completed_withdrawal']['total']|truncdec:$curr_decp}
                                    {/if}
                                </td>
                                <td class="text-center text-bold">
                                    {if $total_funds['add_funds']}
                                        {$curr_symbol}{$total_funds['add_funds']|truncdec:$curr_decp}
                                    {/if}
                                </td>
                                <td class="text-center text-bold">
                                    {if $total_funds['completed_withdrawal']}
                                        {$curr_symbol}{$total_funds['completed_withdrawal']|truncdec:$curr_decp}
                                    {/if}
                                </td>
                            </tr>
                        </tfoot>
                    </table>
                </div>
            {else}
                <div class="alert alert-warning">
                    <i class="fa fa-exclamation-triangle"></i> {$lang.error.no_active_proc}
                </div>
            {/if}
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12 col-sm-4 col-md-4">
            <h3 class="title">{$lang.label.top} 20 {$lang.label.depositors}</h3>
            {if !empty($top_depositors)}
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th class="thead-bg-1">{$lang.label.username}</th>
                                <th class="thead-bg-1">{$lang.label.amount}</th>
                            </tr>
                        </thead>
                        <tbody>
                            {foreach $top_depositors as $depositor}
                                <tr>
                                    <td>
                                        <a href="{$admin_url}/users/{$depositor.user_id}/profile" data-toggle="tooltip"
                                           title="{$lang.label.manage} {$lang.label.user}">{$depositor.username}</a>
                                    </td>
                                    <td class="text-success">{$curr_symbol}{$depositor.dep_amount|truncdec}</td>
                                </tr>
                            {/foreach}
                        </tbody>
                    </table>
                </div>
            {else}
                <div class="alert alert-warning">
                    <i class="fa fa-exclamation-triangle"></i> {$lang.error.no_data_found}
                </div>
            {/if}
        </div>
        <div class="col-xs-12 col-sm-4 col-md-4">
            <h3 class="title">{$lang.label.top} 20 {$lang.label.referrers}</h3>
            {if !empty($top_referrers)}
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>{$lang.label.username}</th>
                                <th>{$lang.label.referrals}</th>
                                <th>{$lang.label.commissions}</th>
                            </tr>
                        </thead>
                        <tbody>
                            {foreach $top_referrers as $referrer}
                                <tr>
                                    <td>
                                        <a href="{$admin_url}/users/{$referrer.user_id}/profile" data-toggle="tooltip"
                                           title="{$lang.label.manage} {$lang.label.user}">{$referrer.username}</a>
                                    </td>
                                    <td>{$referrer.referral}</td>
                                    <td class="text-success">{$curr_symbol}{$referrer.ref_amount|truncdec}</td>
                                </tr>
                            {/foreach}
                        </tbody>
                    </table>
                </div>
            {else}
                <div class="alert alert-warning">
                    <i class="fa fa-exclamation-triangle"></i> {$lang.error.no_data_found}
                </div>
            {/if}
        </div>
        <div class="col-xs-12 col-sm-4 col-md-4">
            <h3 class="title">{$lang.label.last} 20 {$lang.label.deposits}</h3>
            {if !empty($last_deposits)}
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>{$lang.label.date}</th>
                                <th>{$lang.label.username}</th>
                                <th>{$lang.label.amount}</th>
                            </tr>
                        </thead>
                        <tbody>
                            {foreach $last_deposits as $deposit}
                                <tr>
                                    <td>{$deposit.start_date|dtformat:'timeago'}</td>
                                    <td>
                                        <a href="{$admin_url}/users/{$deposit.user_id}/profile" data-toggle="tooltip"
                                           title="{$lang.label.manage} {$lang.label.user}">{$deposit.username}</a>
                                    </td>
                                    <td class="text-success">{$curr_symbol}{$deposit.amount|truncdec}</td>
                                </tr>
                            {/foreach}
                        </tbody>
                    </table>
                </div>
            {else}
                <div class="alert alert-warning">
                    <i class="fa fa-exclamation-triangle"></i> {$lang.error.no_data_found}
                </div>
            {/if}
        </div>
    </div>
    <div class="row help">
        <div class="col-md-12">
            <ul class="list-group list-group-documentation">
                <li class="list-group-item list-group-item-info"><i class="fa fa-question-circle-o"></i> Documentation
                </li>
                <li class="list-group-item">
                    <div class="row">
                        <div class="col-md-4">
                            <h5 class="list-group-item-heading title">Users</h5>
                            <p class="list-group-item-text"><b>Total Users</b> - Total number of users.</p>
                            <p class="list-group-item-text"><b>Active Users</b> - No. of users with atleast one deposit.
                            </p>
                            <p class="list-group-item-text"><b>Suspended Users</b> - No. of users who are not allowed to
                                                                                   deposit, withdraw, internal transfer.
                            </p>
                        </div>
                        <div class="col-md-4">
                            <h5 class="list-group-item-heading title">Deposits</h5>
                            <p class="list-group-item-text"><b>Total Deposits</b> - Sum total of active/expired deposits
                                                                                  to packages.</p>
                            <p class="list-group-item-text"><b>Active Deposits</b> - Sum total of deposits which are
                                                                                   currently active and producing
                                                                                   earnings.</p>
                            <p class="list-group-item-text"><b>Earnings</b> - Sum total of earnings from the active
                                                                            deposits.</p>
                        </div>
                        <div class="col-md-4">
                            <h5 class="list-group-item-heading title">Withdrawals</h5>
                            <p class="list-group-item-text"><b>Total Withdrawals</b> - Sum total of completed
                                                                                     withdrawals.</p>
                            <p class="list-group-item-text"><b>Pending Withdrawals</b> - Sum total of withdrawals which
                                                                                       are waiting to be processed.</p>
                        </div>
                    </div>

                </li>
                <li class="list-group-item">
                    <h5 class="list-group-item-heading title">Funds In/Out</h5>
                    <p class="list-group-item-text"><b>Funds In</b> - Sum total of funds which were added by users
                                                                    either for depositing directly to package or just
                                                                    added to account balance from external processors.
                                                                    This does not include the deposits/re-deposits to
                                                                    packages from account balance.</p>
                    <p class="list-group-item-text"><b>Funds Out</b> - Sum total of funds which went out of the system
                                                                     as completed withdrawals .</p>
                </li>

            </ul>
        </div>
    </div>
{/block}

{block name="foo" append}
    <!-- Highstock js -->
    <script src="{$admin_assets}/assets/plugins/highstock/highstock.js"></script>
    <script src="{$admin_assets}/assets/plugins/highstock/exporting.js"></script>
    <script src="{$admin_assets}/assets/plugins/highstock/export-data.js"></script>

    <script type="text/javascript">
        var dec_places = "{$curr_decp}";
        var curr_symbol = "{$curr_symbol}";
        var date_range_deposits = '--';
        var date_range_withdrawals = '--';

        {literal}
        $(document).ready(function () {

            Highcharts.stockChart('container', {
                title: {
                    text: 'Funds In/Funds Out'
                },
                subtitle: {
                    text: 'Click and drag to zoom in.',
                    useHTML: true
                },

                chart: {
                    type: 'line',
                    zoomType: 'xy',
                    resetZoomButton: {
                        position: {
                            x: 0,
                            y: 0
                        },
                        theme: {
                            fill: 'white',
                            stroke: 'silver',
                            r: 0,
                            states: {
                                hover: {
                                    fill: '#41739D',
                                    style: {
                                        color: 'white'
                                    }
                                }
                            }
                        }
                    }
                },

                time: {
                    useUTC: false
                },

                rangeSelector: {
                    inputEnabled: true,
                    selected: 0,
                    buttons: [{
                        type: 'day',
                        count: 1,
                        text: '1d'
                    }, {
                        type: 'day',
                        count: 3,
                        text: '3d'
                    }, {
                        type: 'week',
                        count: 1,
                        text: '1w'
                    }, {
                        type: 'month',
                        count: 1,
                        text: '1m'
                    }, {
                        type: 'month',
                        count: 3,
                        text: '3m'
                    }, {
                        type: 'month',
                        count: 6,
                        text: '6m'
                    }, {
                        type: 'year',
                        count: 1,
                        text: '1y'
                    }, {
                        type: 'all',
                        text: 'All'
                    }]
                },

                navigator: {
                    enabled: true,
                    series: {
                        data: []
                    }
                },

                legend: {
                    enabled: true
                },

                tooltip: {
                    crosshairs: [
                        {
                            width: 1,
                            dashStyle: 'dash',
                            color: '#898989'
                        },
                        {
                            width: 1,
                            dashStyle: 'dash',
                            color: '#898989'
                        }
                    ]
                },

                scrollbar: {
                    enabled: false
                },

                xAxis: {
                    events: {
                        afterSetExtremes: function (e) {
                            var sum = 0,
                                str = '',
                                t,
                                chartOb = this;

                            $.each(chartOb.series, function (key, value) {
                                sum = 0;
                                var xData = chartOb.series[key].processedXData;
                                var yData = chartOb.series[key].processedYData;

                                $.each(xData, function (key1, xValue) {
                                    if (xValue >= chartOb.min && xValue <= chartOb.max)
                                        sum += yData[key1];
                                });
                                var sum_amount = (Math.round(sum * 100) / 100);
                                var amount = sum_amount.toFixedDown(dec_places);
                                str += amount + " " + value.name + " | ";
                                if (key == 0) {
                                    if (amount > 0)
                                        date_range_deposits = amount;
                                    else
                                        date_range_deposits = 0;
                                } else if (key == 1) {
                                    if (amount > 0)
                                        date_range_withdrawals = amount;
                                    else
                                        date_range_withdrawals = 0;
                                }

                                t = '<b style="color:#56af45">' + curr_symbol + date_range_deposits + '</b>/<b style="color:#e63a3a">' + curr_symbol + date_range_withdrawals + '</b>';

                                chartOb.chart.setTitle(null, {text: t})
                            });
                        }
                    }
                },

                yAxis: [
                    {
                        allowDecimals: true,
                        title: {
                            text: 'Amount',
                            style: {
                                color: '#80a3ca'
                            }
                        },
                        labels: {
                            format: '{value}',
                            style: {
                                color: '#80a3ca'
                            }
                        },
                        opposite: false
                    }
                ],
                series: [],
                useHighStocks: true
            });

            get_financial_chart();


            function get_financial_chart() {
                var chart = Highcharts.charts[0];
                chart.showLoading('Loading data from server...');
                var proc = $('#processor').val();
                if (!proc) {
                    proc = '';
                }
                $.ajax({
                    type: "GET",
                    dataType: "json",
                    url: dqs_admin_url + '/get_financial_chart?processor=' + proc,
                    success: function (data) {
                        /*chart_data = data.data;
                        createchart();*/
                        chart.addSeries(data.data[0]);
                        chart.addSeries(data.data[1]);
                        chart.xAxis[0].setExtremes(data.xMin, data.xMax);
                        chart.hideLoading();
                        //Highcharts.charts[0].redraw();
                    },
                    error: function () {
                        chart.showLoading('Failed! Loading data from server...');
                    }
                });
            }

        });
        {/literal}
    </script>
{/block}