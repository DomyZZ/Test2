<div class="row pagination-footer">
    <div class="col-sm-3 text-left">
        {if $dt.pagination}
            <div class="btn-group">
                <a href="{$base_url}/{$cur_page}?{'count'|bind_query:'5'}"
                   class="btn btn-secondary {($dt.count==5)?'active':''}">
                    5
                </a>
                <a href="{$base_url}/{$cur_page}?{'count'|bind_query:'25'}"
                   class="btn btn-secondary {($dt.count==25)?'active':''}">
                    25
                </a>
                <a href="{$base_url}/{$cur_page}?{'count'|bind_query:'50'}"
                   class="btn btn-secondary {($dt.count==50)?'active':''}">
                    50
                </a>
                <a href="{$base_url}/{$cur_page}?{'count'|bind_query:'100'}"
                   class="btn btn-secondary {($dt.count==100)?'active':''}">
                    100
                </a>
            </div>
        {/if}
    </div>
    <div class="col-sm-6 text-center">
        <div style="margin: 0 auto; display: table">{$dt.pagination}</div>
    </div>
    <div class="col-sm-3 text-right">
                                <span class="text-muted">Page <span class="text-bold">{$dt.page}</span>
                                                          of <span class="text-bold">{$dt.total_pages}</span>,
                                                          of <span class="text-bold">{$dt.total_rows}</span> entries
                                </span>
    </div>

</div>