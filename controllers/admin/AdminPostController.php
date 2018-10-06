<?php
/**
 * Created by PhpStorm.
 * User: Olha
 * Date: 06.10.2018
 * Time: 21:42
 */

class AdminPostController
{
    public function index()
    {
        global $smarty;
        $smarty->assign('posts', CategoryModel::getAllAllPost());
        $smarty->display("admin/posts.tpl");
    }

    public function update()
    {

        $headline = $_POST['headline'];
        $text = $_POST['text'];
        $date = $_POST['date'];
        $link = $_POST['link'];


        $post->setName($name)->setWeight($weight)->save();
        header("Location: /admin/category");
    }

    public function remove()
    {
        global $params;
        $id = (int) array_shift($params);

        $category = CategoryModel::findById($id);
        if (!$category) {
            header("Location: /admin/category?error=Category with id = $id does not exist");
            exit;
        }

        $category->delete();
        header("Location: /admin/category");
    }

    public function create()
    {
        if (!isset($_POST['weight']) || !isset($_POST['name']))
        {
            header("Location: /admin/category?error=wrong data provided");
            exit;
        }

        $name = $_POST['name'];
        $weight = $_POST['weight'];
        $category = new CategoryModel();
        $category
            ->setName($name)
            ->setWeight($weight)
            ->save();

        header("Location: /admin/category");
    }
}