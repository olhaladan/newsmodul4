<?php
/* Smarty version 3.1.32, created on 2018-10-06 19:42:30
  from 'C:\xampp\htdocs\mvc-master\Views\main.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32',
  'unifunc' => 'content_5bb8f406ef7b07_21348651',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '96992fed96291adfce7565c6e51c28ee2ab9df44' => 
    array (
      0 => 'C:\\xampp\\htdocs\\mvc-master\\Views\\main.tpl',
      1 => 1538847627,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5bb8f406ef7b07_21348651 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_8429999335bb8f406e61478_14060817', 'body');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, 'layout.tpl');
}
/* {block 'body'} */
class Block_8429999335bb8f406e61478_14060817 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'body' => 
  array (
    0 => 'Block_8429999335bb8f406e61478_14060817',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="row">
        <div class="col-md-3">
            <ul class="nav nav-pills nav-stacked">
                <li role="presentation" class="active"><a href="/category/show/0">All</a></li>
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['categories']->value, 'category');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['category']->value) {
?>
                    <li role="presentation">
                        <a href="/category/show/<?php echo $_smarty_tpl->tpl_vars['category']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['category']->value['name'];?>
</a>
                    </li>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
            </ul>
        </div>
        <div class="col-md-9">
            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['posts']->value, 'post');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['post']->value) {
?>
                <div class="card mb-3">
                    <h3 class="card-header"><?php echo $_smarty_tpl->tpl_vars['post']->value['headline'];?>
</h3>
                    <div class="card-footer text-muted">
                        <?php echo $_smarty_tpl->tpl_vars['post']->value['date'];?>

                    </div>
                    <div class="card-body">
                        <h6 class="card-subtitle text-muted"> <?php echo substr($_smarty_tpl->tpl_vars['post']->value['text'],0,200);?>
...</h6>
                    </div>
                    <img style="height: 200px; width:300px; display: block;" src="<?php echo $_smarty_tpl->tpl_vars['post']->value['link'];?>
" alt="Card image">
                    <div class="card-body">
                        <a href="/category/page/<?php echo $_smarty_tpl->tpl_vars['post']->value['id'];?>
" class="card-link">READ</a>
                    </div>
                </div>
                            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
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
<?php
}
}
/* {/block 'body'} */
}
