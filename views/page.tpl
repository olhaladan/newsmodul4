{extends file='layout.tpl'}

{block name=body}
    <input type="button" onclick="history.back();" value="Назад"/>
{foreach $posts as $post}

    <div class="card mb-3">
        <img style="height: 200px; width:300px; display: block;" src="{$post['link']}" alt="Card image">
        <h3 class="card-header">{$post['headline']}</h3>
        <div class="card-footer text-muted">
            {$post['date']}
        </div>
        <div class="card-body">
            <h6 class="card-subtitle text-muted"> {$post['text']}...</h6>
        </div>

    </div>
{/foreach}
    {foreach $messes as $mess}
        <div class="card border-secondary mb-3" style="max-width: 20rem;">
            <div class="card-header"><h4>COMENTS</h4></div>
            <div class="card-body">
                <p class="card-title">Тема: {$mess['theme']}</p>
                <p class="card-text">Текст: {$mess['text']}</p>
                <p class="card-text">Дата: {$mess['date']}</p>
            </div>
            <div class="card-footer text-muted">
                <p class="card-text">ID пользователя: {$mess['user_id']}</p>
                <p class="card-text">Лайки: {$mess['range_plus']}</p>
                <p class="card-text">Дизлайки: {$mess['range_min']}</p>
                <p class="card-text">&#x2295;Модератором проверено</p>
            </div>
        </div>
    {/foreach}
{/block}