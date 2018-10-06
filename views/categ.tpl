{extends file='main.tpl'}

{block name=categ}
    <div class="row">
        <div class="col-md-3">
            <ul class="nav nav-pills nav-stacked">
                <li role="presentation"><a href="/">All</a></li>
                {foreach $categories as $category}
                    <li role="presentation"  class="active">
                        <a href="/category/show/{$category['id']}">{$category['name']}</a>
                    </li>
                {/foreach}
            </ul>
        </div>
        <div class="col-md-9">
            {foreach $posts as $post}
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="{$post['link']}" alt=""></a>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a href="#">{$post['headline']}</a>
                            </h4>
                            <p class="card-text">{$post['text']}</p>
                        </div>
                        <div class="card-footer">
                            Link
                        </div>
                    </div>
                </div>

            {/foreach}
        </div>
    </div>
{/block}