<?php

class MainController
{
    public function index()
    {
        global $id;
        global $smarty;
        $smarty->assign('categories', CategoryModel::getAll());
        $smarty->assign('posts', CategoryModel::getAllPost($id));
        $smarty->display('main.tpl');
    }
}