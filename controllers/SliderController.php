<?php
/**
 * Created by PhpStorm.
 * User: Olha
 * Date: 06.10.2018
 * Time: 10:34
 */

class SliderController
{
    public function index()
    {
        global $smarty;
        $smarty->assign('categories', CategoryModel::getFew());
        $smarty->display('slider.tpl');
    }
}