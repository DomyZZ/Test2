{include file="header.tpl"}

<div class="row">
    <div class="col-sm-6">

        <form class="form" method="post">
            {form_errors form="change_compounding"}

            <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>

            <div class="form-group">
                <label>{$lang.deposit_id}</label> <br /><b>{$deposit.uid}</b>
            </div>

            <div class="form-group">
                <label>{$lang.package}</label> <br /><b>{$package.name}</b>
            </div>
            
            {if $package.comp_val_type=="ranged"}
                <div class="form-group">
                    <label>{$lang.compounding}</label>
                    <input type="text" name="compounding" class="form-control"
                           value="{(set_value('compounding'))?set_value('compounding'):$deposit.compound}"/>
                    ({$package.comp_ranged_val_min|clean}% - {$package.comp_ranged_val_max|clean}%)
                </div>
            {/if}
            {if $package.comp_val_type=="solid"}
                <div class="form-group">
                    <label>{$lang.compounding}</label>
                    <select name="compounding" class="form-control">
                        {foreach $package.comp_solid_vals as $solid_val}
                            <option value="{$solid_val}" {($compound==$solid_val)?'selected':''}>{$solid_val}%</option>
                        {/foreach}
                    </select>
                </div>
            {/if}
            <div class="form-group">
                <button type="submit" class="btn btn-primary">{$lang.update}</button>
            </div>
        </form>
    </div>
</div>

{include file="footer.tpl"}