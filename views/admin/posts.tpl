{extends file='layout.tpl'}

{block name=body}
    <table class="table table-bordered">
        <thead>
        <th>ID</th>
        <th>Headline</th>
        <th>Text</th>
        <th>Data</th>
        <th>Img link</th>
        </thead>
        <tbody>
        {foreach $posts as $post}
            <tr>
                <form method="POST" action="/admin/post/update/{$post['id']}">
                    <td>{$category['id']}</td>
                    <td><input type="text" name="name" value="{$category['name']}" class="form-control"></td>
                    <td><input type="number" name="weight" value="{$category['weight']}" class="form-control"></td>
                    <td><input type="submit" value="UPDATE" class="btn btn-warning"></td>
                </form>
                <td>
                    <a href="/admin/category/remove/{$category['id']}" class="btn btn-danger">Remove</a>
                </td>
            </tr>
        {/foreach}
        </tbody>
    </table>
    <h3>Create new:</h3>
    <form action="/admin/category/create" method="POST" style="width: 300px">
        <input type="text" name="name" placeholder="Category name" class="form-control">
        <input type="number" name="weight" placeholder="Category weight" class="form-control">
        <input type="submit" class="btn btn-success" value="Create">
    </form>
{/block}