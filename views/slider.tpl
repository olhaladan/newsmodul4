{extends file='layout.tpl'}

{block name=body}
<div class="col-md-3">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            {foreach $categories as $post}
                {if $post === reset($categories)}
            <div class="item active">
                <a href="category/show/0"> <img src="{$post['link']}" style="opacity: 0.5;height: 200px;width: 300px;" alt="{$post['headline']}">

                <div class="carousel-caption">
                    <h3 style="color: black">{$post['headline']}</h3>
                    <p style="color: black">{$post['text']}</p>
                </div></a>
            </div>
                {else}
                    <div class="item">
                        <a href="category/show/0"> <img src="{$post['link']}" style="opacity: 0.5;height: 200px;width: 300px;" alt="{$post['headline']}">

                        <div class="carousel-caption">
                            <h3 style="color: black">{$post['headline']}</h3>
                            <p style="color: black">{$post['text']}</p>
                        </div></a>
                    </div>
            {/if}
            {/foreach}

        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
{/block}