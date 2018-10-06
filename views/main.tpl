{extends file='layout.tpl'}

{block name=body}
    <div class="row">
        <div class="col-md-3">
            <ul class="nav nav-pills nav-stacked">
                <li role="presentation" class="active"><a href="/category/show/0">All</a></li>
                {foreach $categories as $category}
                    <li role="presentation">
                        <a href="/category/show/{$category['id']}">{$category['name']}</a>
                    </li>
                {/foreach}
            </ul>
        </div>
        <div class="col-md-9">
            {foreach $posts as $post}
                <div class="card mb-3">
                    <h3 class="card-header">{$post['headline']}</h3>
                    <div class="card-footer text-muted">
                        {$post['date']}
                    </div>
                    <div class="card-body">
                        <h6 class="card-subtitle text-muted"> {substr($post['text'],0,200)}...</h6>
                    </div>
                    <img style="height: 200px; width:300px; display: block;" src="{$post['link']}" alt="Card image">
                    <div class="card-body">
                        <a href="/category/page/{$post['id']}" class="card-link">READ</a>
                    </div>
                </div>
                {*<div class="col-lg-4 col-md-6 mb-4">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="{$post['link']}" alt="" style="height: 200px;width: 300px;"></a>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a href="#">{$post['headline']}</a>
                            </h4>
                            <p class="card-text">{$post['text']}</p>
                        </div>
                        <div class="card-footer">
                            {$post['date']}
                        </div>
                    </div>
                </div>*}
            {/foreach}
            <div>
                <ul class="pagination" >
                    <li class="page-item">
                        <a class="page-link" href="#">&laquo;</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">1</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">2</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">3</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">4</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">5</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">&raquo;</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
{/block}