{block name="breadcrumb"}
    <li>
        <a href="{$admin_url}/testimonials">{$lang.breadcrumb.testimonials}</a>
    </li>
    <li class="active">{$lang.breadcrumb.edit}</li>
{/block}

{block name="page_content"}
    <form class="form-horizontal" name="edit_testimonial" id="edit_testimonial" method="post">
        <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>
        {include file="form_status.tpl" form="edit_testimonial"}
        <div class="form-group">
            <label class="control-label col-md-3">{$lang.label.status}</label>
            <div class="col-md-9">
                    <div class="radio-inline">
                        <input type="radio" value="approved" name="status" id="status_approved"
                               required {($testimonial.t_status=="approved")?'checked=""':''}>
                        <label for="status_approved">{$lang.label.approved}</label>
                    </div>
                    <div class="radio-inline">
                        <input type="radio" value="unapproved" name="status" id="status_unapproved"
                               required {($testimonial.t_status=="unapproved")?'checked=""':''}>
                        <label for="status_unapproved">{$lang.label.unapproved}</label>
                    </div>
            </div>
        </div>
        <div class="form-group">
            <label for="date" class="control-label col-md-3">{$lang.label.date}</label>
            <div class="col-md-9">
                <input type="text" class="form-control" required id="date" readonly
                       value="{$testimonial.date|dtformat:'jS M, Y H:i:s'}"/>
            </div>
        </div>
        <div class="form-group">
            <label for="username" class="control-label col-md-3">{$lang.label.username}</label>
            <div class="col-md-9">
                <input type="text" class="form-control input-md-5" required id="username" readonly
                       value="{$testimonial.username}"/>
            </div>
        </div>
        <div class="form-group">
            <label for="title" class="control-label col-md-3">{$lang.label.rating}</label>
            <div class="col-md-9">
                <select class="form-control" name="rating" id="rating">
                    {foreach $ratings as $key=>$val}
                        <option value="{$key}" {($testimonial.rating==$key)?'selected':''}>{$val}</option>
                    {/foreach}
                </select>
            </div>
        </div>
        <div class="form-group">
            <label for="title" class="control-label col-md-3">{$lang.label.title}</label>
            <div class="col-md-9">
                <input type="text" class="form-control input-md-8" required name="title"
                       id="title"
                       value="{$testimonial.title}"/>
            </div>
        </div>
        <div class="form-group">
            <label for="description" class="control-label col-md-3">{$lang.label.description}</label>
            <div class="col-md-9">
                                <textarea name="description" required rows="10"
                                          id="description" class="form-control"
                                          placeholder="......">{$testimonial.description}</textarea>
            </div>
        </div>
        <hr>
        <button type="submit" class="btn btn-primary">{$lang.label.update}</button>
    </form>
{/block}