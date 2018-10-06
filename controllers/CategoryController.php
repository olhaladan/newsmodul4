<?php
/**
 * Created by PhpStorm.
 * User: ПК
 * Date: 08.08.2018
 * Time: 20:32
 */

class CategoryController
{
    public function add()
    {
        die("I WILL ADD CATEGORY");
    }

    public function show()
    {
        global $smarty;
        global $params;
        $id = (int) array_shift($params);
        $smarty->assign('categories', CategoryModel::getAll());
        $smarty->assign('posts', CategoryModel::getAllPost($id));
        $smarty->display('main.tpl');
    }
       public function page()
    {
        global $smarty;
        global $params;
        $id = (int) array_shift($params);
        $smarty->assign('posts', CategoryModel::getPost($id));
        $smarty->assign('messes', CategoryModel::getMess($id));
        $smarty->display('page.tpl');
    }

}

