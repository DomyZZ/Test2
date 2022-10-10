$(document).ready(function () {
    "use strict"; // Start of use strict

    //back to top
    $('body').append('<div id="toTop" class="btn back-top"><span class="ti-arrow-up"></span></div>');
    $(window).on("scroll", function () {
        if ($(this).scrollTop() !== 0) {
            $('#toTop').fadeIn();
        } else {
            $('#toTop').fadeOut();
        }
    });
    $('#toTop').on("click", function () {
        $("html, body").animate({scrollTop: 0}, 600);
        return false;
    });


    $('#dq-tab a[data-toggle="tab"]').on('show.bs.tab', function (e) {
        window.location.hash = $(e.target).attr('href');
    });

    if ($("ul#dq-tab").length != 0) {

        $('#dq-tab').removeClass('hide');

        var activeTab = document.location.hash;
        if (activeTab) {
            $('a[href="' + activeTab + '"][data-toggle="tab"]').tab('show');
        }
        else {
            $("ul#dq-tab li:first").addClass("active").show();
            $("#dq-tab-content .tab-pane:first").addClass("active in");
        }

        $('#dq-tab-btn').removeClass('hide');
    }

    $("#startdate, #enddate").datepicker({format: 'dd-mm-yyyy'});

    $('.footable').footable({
        "sorting": {
            "enabled": false
        }
    });

    $('[data-toggle="tooltip"]').tooltip();

    $('#select_all').change(function () {
        if ($('#select_all:checked').val()) {
            $('.row-check').prop('checked', true);
        }
        else {
            $('.row-check').prop('checked', false);
        }
    });


});

function dt_filter(formID, type) {
    var elements = document.getElementById(formID).elements;

    for (var i = 0; i < elements.length; i++) {

        if (elements[i].type === 'text' || elements[i].type === 'date' || elements[i].type === 'select-one') {
            elements[i].value = elements[i].value.trim();
            if (elements[i].value.trim() === '') {
                elements[i].removeAttribute('name');
            }

        }
    }

    if (type) {
        var form = document.forms[formID];
        var input = document.createElement('input');
        input.type = 'hidden';
        input.name = 'export';
        input.value = type;
        form.appendChild(input);
    }
}

function dt_clear(formID) {
    var elements = document.getElementById(formID).elements;

    for (var i = 0; i < elements.length; i++) {

        if (elements[i].type === 'text' || elements[i].type === 'date' || elements[i].type === 'select-one') {
            elements[i].value = '';
        }
    }
}

function dt_reset(formID) {
    var uri;

    if (formID) {
        uri = document.getElementById(formID).action;
    }
    else {
        uri = window.location.toString();
    }

    if (uri.indexOf("?") > 0) {
        uri = uri.substring(0, uri.indexOf("?"));
    }

    location.href = uri;
}

function selected_action(form, action) {
    if (action == 'delete' && !confirm('Are you sure you want to ' + action + '?')) {
        return;
    }
    $('<input />').attr('type', 'hidden')
        .attr('name', "action")
        .attr('value', action)
        .appendTo('#' + form);
    $("#" + form).submit();
}

function update_tab_form(form) {
    var action = document.location.hash;
    $('#' + form).submit(function (eventObj) {
        $('<input />').attr('type', 'hidden')
            .attr('name', "action")
            .attr('value', action)
            .appendTo('#' + form);
        return true;
    });
}

function select_all_users_by_ip(row) {
    if ($('#all_users_' + row + ':checked').val()) {
        $('.user_' + row).prop('checked', true);
    }
    else {
        $('.user_' + row).prop('checked', false);
    }
}

function selected_row(id, row) {
    if ($('#' + id + ':checked').val()) {
        $('#' + row).addClass('selected');
    }
    else {
        $('#' + row).removeClass('selected');
    }
}

function set_new_pass(set_new_id, cancel_id, new_pass_id) {
    $('#' + set_new_id).addClass('hide');
    $('#' + cancel_id).removeClass('hide');
    $('#' + new_pass_id).removeAttr('disabled placeholder');
}

function cancel_new_pass(set_new_id, cancel_id, new_pass_id) {
    $('#' + cancel_id).addClass('hide');
    $('#' + set_new_id).removeClass('hide');
    $('#' + new_pass_id).attr({'disabled': 'true', 'placeholder': '**hidden**'}).val('');

}

function confirm_delete(str, url) {
    if (confirm(str)) {
        document.location.href = url;
    }
}

function calculate() {
    var package_duration = $('#package_duration').val();
    var package_duration_unit = $('#package_duration_unit').val();
    var interval_unit = 'days';
    var interval_diff = 'd';
    var interval_string = 'Days';
    var cperiod_abs = false;
    var cperiod_sp = false;
    var cperiod_expire = false;
    var i, inv_rate = 0, period = 0, num_plans = 10;
    var c_earnings = "N/A", c_principal = "N/A";
    var dec_places = parseInt(dqs_curr_decp);
    var max_date = '';
    var error = false;
    var return_principal = false;

    var min_date = moment().format('YYYY-MM-DD');

    var amnt_c = parseFloat($('#calc_amount').val());
    var inv_amnt = amnt_c.toFixedDown(dec_places);

    if ($('#forever:checked').val()) {
        package_duration = undefined;
        package_duration_unit = $('#earning_interval_unit').val();
    }
    else if ($('#maturity:checked').val()) {
        cperiod_expire = true;
    }

    if (package_duration_unit == 'minutes') {
        interval_unit = 'm';
        interval_diff = 'm';
        interval_string = " Minute(s) ";
        cperiod_sp = true;
    }
    else if (package_duration_unit == 'hours') {
        interval_unit = 'h';
        interval_diff = 'h';
        interval_string = " Hour(s) ";
        cperiod_sp = true;
    }
    else if (package_duration_unit == 'days') {
        interval_diff = 'd';
        interval_string = " Day(s) ";
    }
    else if (package_duration_unit == 'weeks') {
        //package_duration = package_duration * 7;
        interval_diff = 'w';
        interval_string = " Week(s) ";
    }
    else if (package_duration_unit == 'months') {
        //interval_unit = 'months';
        interval_diff = 'M';
        interval_string = " Month(s) ";
    }
    else if (package_duration_unit == 'years') {
        //interval_unit = 'years';
        interval_diff = 'y';
        interval_string = " Year(s) ";
    }

    if ($('#forever:checked').val()) {
        max_date = moment().add(24, 'months').format('YYYY-MM-DD');
    } else {
        max_date = moment().add(package_duration, interval_unit).format('YYYY-MM-DD');
        return_principal = $('#return_principal:checked').val();
    }

    if (max_date >= min_date) {

        var start = moment(min_date);
        var end = moment(max_date);
        if (package_duration_unit == 'hours' || package_duration_unit == 'minutes') {

            end = moment().add(package_duration, interval_unit);
        }

        var dr = moment.range(start, end);

        if (cperiod_abs) {
            //period = absFloor(dr.diff('w') / 2);
        }
        else if (cperiod_expire) {
            period = 1;
            package_duration = 1;
        }
        else {
            /*var diff_periods = dr.diff(interval_diff);
            if (cperiod_sp && ((diff_periods == 0 && max_date == min_date) || diff_periods > package_duration))
                diff_periods = package_duration;
            period = diff_periods;*/
        }

        console.log(package_duration);

        period = parseInt(package_duration);

        /*if (package_duration_unit == 'days') {
            period = period - count_disable_dates_from_periods(min_date, max_date);
        }*/

        // ......
        if (period >= 0) {

            var min_amount, max_amount, fixed_rate;

            for (i = 0; i < num_plans; i++) {
                min_amount = parseFloat($('#min_amount_' + i).val());
                max_amount = parseFloat($('#max_amount_' + i).val());
                fixed_rate = parseFloat($('#rate_' + i).val()).toFixedDown(dec_places);
                if (($('#plans_' + i + ':checked').val() || i == 0) && inv_amnt >= min_amount && (inv_amnt <= max_amount || !max_amount || max_amount == 0)) {
                    inv_rate = fixed_rate;
                    break;
                }
            }

            if (inv_rate >= 0 && inv_amnt > 0) {
                var amount = inv_amnt;
                var rate = inv_rate;

                if ($('#allow_compounding:checked').val()) {
                    var compound_rate = parseFloat($('#calc_compound').val());
                    compound_rate = (compound_rate.toFixedDown(2)) / 100;
                    var earnings = 0;
                    var amnt = 0;
                    rate = inv_rate / 100;
                    for (i = 1; i <= period; i++) {
                        amnt = amount * rate;
                        amount += amnt * compound_rate;
                        if (compound_rate != 1) {
                            earnings += amnt * (1 - compound_rate);
                        }
                        else {
                            earnings += amnt;
                        }
                    }

                    c_earnings = earnings.toFixedDown(dec_places);

                    c_principal = amount.toFixedDown(dec_places);
                }
                else {
                    var earn = (period * rate * amount) / 100;
                    c_earnings = earn.toFixedDown(dec_places);
                    c_principal = amount.toFixedDown(dec_places);
                }

                if(return_principal)
                {
                    c_earnings += inv_amnt;
                    c_earnings = c_earnings.toFixedDown(dec_places);
                }
            }
        }

        if (!(inv_rate >= 0) || !(inv_amnt > 0)) {
            error = true;
            c_earnings = "N/A";
            c_principal = "N/A";
        }
    }
    else {
        error = true;
    }

    /*$('#from_date').text(moment(min_date).format('DD-MMM-YYYY'));
    $('#to_date').text(moment(max_date).format('DD-MMM-YYYY'));*/

    if (inv_amnt) {
        if (!error) {
            $('#calc_principal').removeClass('text-danger');
            $('#calc_earnings').removeClass('text-danger');
        }

        $('#calc_period').removeClass('text-danger').text(period);
        $('#calc_rate').removeClass('text-danger').text(inv_rate + '%');
        $('#calc_principal').text(c_principal);
        $('#calc_earnings').text(c_earnings);
    }
    else {
        $('#calc_period').addClass('text-danger').text('--');
        $('#calc_rate').addClass('text-danger').text('--');
        $('#calc_principal').addClass('text-danger').text('--');
        $('#calc_earnings').addClass('text-danger').text('--');
    }
}

/*function count_disable_dates_from_periods(startDate, endDate) {
    var start = moment(startDate),
        end = moment(endDate),
        diff = end.diff(start, 'days'),
        count = 0;

    if (!start.isValid() || !end.isValid() || diff <= 0) {
        return count;
    }
    var d = end;
    for (var i = 0; i < diff; i++) {

        if ($("input[name='earning_days[" + d.format('ddd').toLowerCase() + "]']:checked").val() == undefined) {
            count++;
        }
        d = end.subtract(1, 'd');
    }
    return count;
}*/

String.prototype.ucfirst = function () {
    return this.charAt(0).toUpperCase() + this.substr(1);
}

function absFloor(number) {
    if (number < 0) {
        return Math.ceil(number);
    } else {
        return Math.floor(number);
    }
}

Number.prototype.toFixedDown = function (digits) {
    var re = new RegExp("(\\d+\\.\\d{" + digits + "})(\\d)"),
        m = this.toString().match(re);
    return m ? parseFloat(m[1]) : this.valueOf();
};