{include file="header.tpl"}
<div class="row">

    <div class="col-sm-8">

        <form class="form" method="post">
            {form_errors form="write_testimonial"}
            {form_success form="write_testimonial"}

            <input type="hidden" name="{$csrf_token.name}" value="{$csrf_token.hash}"/>

            <div class="form-group">
                <label>{$lang.rating}</label>
                <select class="form-control" name="rating" required>
                    {foreach $ratings as $key => $rating}
                        <option value="{$key}" {(set_value('rating'))?'selected':($key==5)?'selected':''}>{$rating}</option>
                    {/foreach}
                </select>
            </div>
            <div class="form-group">
                <label>{$lang.testi_title}</label>
                <input class="form-control" id="subject" name="title" required type="text">
            </div>
            <div class="form-group">
                <label>{$lang.description}</label>
                <textarea class="form-control" name="description" required id="description" rows="10" cols="60"
                ></textarea>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary">{$lang.submit}</button>
            </div>

        </form>

    </div>

</div>

<div class="row">
    <div class="col-sm-12">
        <h4 class="mt-4">Your Testimonials</h4>
        
        <ul class="list-group">
            {foreach $testimonials as $testimonial}
                <li class="list-group-item">
                    <span class="pull-right float-right label {($testimonial.status=='approved')?'text-success':'text-danger'}">{$testimonial.status}</span>
                    <span style="font-size: 70%">{$lang.rating}: {$ratings[$testimonial.rating]}</span>
                    <h5 style="margin-bottom: 10px">{$testimonial.title}</h5>
                    <span>{$testimonial.description}</span>
                    <small style="display: block" class="text-muted">{$testimonial.date|dtformat:'jS M, Y H:i:s'} </small>


                </li>
            {/foreach}
        </ul>
    </div>
</div>

{include file="footer.tpl"}