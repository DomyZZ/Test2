<div class="row">
    <div class="col-sm-3">
        <div class="dataTables_length">
            <label>{$lang.label.show} <select name="dataTableExample2_length" class="form-control input-sm" onchange="window.location.href=this.options[this.selectedIndex].value">
                    <option value="{$admin_url}/{$page_link}?{'count'|bind_query:'5'}" {($dt.count==5)?'selected':''}>5</option>
                    <option value="{$admin_url}/{$page_link}?{'count'|bind_query:'25'}" {($dt.count==25)?'selected':''}>25</option>
                    <option value="{$admin_url}/{$page_link}?{'count'|bind_query:'50'}" {($dt.count==50)?'selected':''}>50</option>
                    <option value="{$admin_url}/{$page_link}?{'count'|bind_query:'100'}" {($dt.count==100)?'selected':''}>100</option>
                </select> {$lang.label.entries}</label>
            </div>
    </div>
    <div class="col-sm-6">
        <div class="dataTables_paginate paging_simple_numbers">
            {$dt.pagination}
        </div>
    </div>
    <div class="col-sm-3">
        <div class="dataTables_info">
            Showing {$dt.page} {$lang.label.to|strtolower} {$dt.total_pages} {$lang.label.of} {$dt.total_rows} {$lang.label.entries}
        </div>
    </div>
</div>