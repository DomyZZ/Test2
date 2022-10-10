<div class="form-group">
    <label for="name"
           class="control-label">{$lang.label.processor_name}</label>
    <input type="text" required
           class="form-control input-sm"
           name="name"
           id="name_{$proc.nick}" value="{$proc.name}"/>
</div>
<div class="form-group">
    <label for="payment_details"
           class="control-label">{$lang.label.payment_details}</label>
    <textarea class="form-control input-md-9 custom_p_details" rows="8" name="payment_details[p_info]"
              id="p_info_{$proc.nick}" required
              placeholder="Payment Address ....">{$proc.payment_details.p_info}</textarea>
</div>
<div class="form-group">
    <label class="control-label">{$lang.label.dep_wdr_fields}</label>
    <table class="table table-bordered table-auto">
        <thead>
            <tr>
                <th colspan="2" class="text-center"
                    style="border-right: 0; background-color: #f9f9f9;">{$lang.label.deposit}</th>
                <th colspan="2" class="text-center"
                    style="border-left: 0; background-color: #f9f9f9;">{$lang.label.withdrawal}</th>
            </tr>
        </thead>
        <tbody>
            {for $row=0 to 9}
                <tr>
                    <td class="text-center"
                        style="background-color: #fff !important;">
                        <input type="checkbox"
                               name="deposit_ids[{$row}]"
                               id="deposit_ids_{$proc.nick}_{$row}"
                               value="true" {($proc.payment_details.deposit_fields[$row])?'checked':''}
                               onclick="change_fields('deposit_ids_{$proc.nick}_{$row}', 'deposit_fields_{$proc.nick}_{$row}')">
                    </td>
                    <td style="background-color: #fff !important;">
                        <input type="text"
                               class="form-control input-sm"
                               name="deposit_fields[{$row}]"
                               id="deposit_fields_{$proc.nick}_{$row}" {($proc.payment_details.deposit_fields[$row])?'':'disabled'}
                               value="{$proc.payment_details.deposit_fields[$row]}"/>
                    </td>
                    <td class="text-center"
                        style="background-color: #fff !important;">
                        <input type="checkbox"
                               name="withdraw_ids[{$row}]"
                               id="withdraw_ids_{$proc.nick}_{$row}"
                               value="true" {($proc.payment_details.withdraw_fields[$row])?'checked':''}
                               onclick="change_fields('withdraw_ids_{$proc.nick}_{$row}', 'withdraw_fields_{$proc.nick}_{$row}')">
                    </td>
                    <td style="background-color: #fff !important;">
                        <input type="text"
                               class="form-control input-sm"
                               name="withdraw_fields[{$row}]"
                               id="withdraw_fields_{$proc.nick}_{$row}" {($proc.payment_details.withdraw_fields[$row])?'':'disabled'}
                               value="{$proc.payment_details.withdraw_fields[$row]}"/>
                    </td>
                </tr>
            {/for}
        </tbody>
    </table>
</div>