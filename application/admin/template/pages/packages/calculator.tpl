<div class="row" id="calculator">
    <div class="col-md-6">
        <h3 class="title">{$lang.legend.earning_calculator}</h3>
        <table class="table table-bordered table-striped-left">
            <tbody>
                {*<tr>
                    <td>{$lang.label.from}</td>
                    <td id="from_date">
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.to}</td>
                    <td id="to_date" class="text-success">
                    </td>
                </tr>*}
                <tr>
                    <td>{$lang.label.amount}</td>
                    <td>
                        <div class="input-group">
                            <div class="input-group-addon input-sm">{$curr_symbol}</div>
                            <input type="text" name="calc_amount" id="calc_amount" onkeyup="calculate()"
                                   class="form-control input-sm">
                        </div>
                    </td>
                </tr>
                <tr id="c_compound" class="hide">
                    <td>{$lang.label.compound}</td>
                    <td>
                        <div class="input-group">
                            <input type="text" name="calc_compound" id="calc_compound" onkeyup="calculate()"
                                   class="form-control input-sm" value="0">
                            <div class="input-group-addon input-sm">%</div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.principal}</td>
                    <td id="calc_principal" class="text-danger">
                        --
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.earning_count}</td>
                    <td id="calc_period" class="text-danger">
                        --
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.rate}</td>
                    <td id="calc_rate" class="text-danger">
                        --
                    </td>
                </tr>
                <tr>
                    <td>{$lang.label.total} {$lang.label.return}</td>
                    <td id="calc_earnings" class="text-danger">
                        --
                    </td>
                </tr>
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="2" style="background: none">
                        <button type="button" class="btn btn-xs btn-success"
                                onclick="calculate()">{$lang.label.calculate}</button>
                    </td>
                </tr>
            </tfoot>
        </table>
    </div>
</div>