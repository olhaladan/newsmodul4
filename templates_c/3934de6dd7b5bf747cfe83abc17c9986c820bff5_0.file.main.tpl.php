<?php
/* Smarty version 3.1.32, created on 2018-10-06 20:56:33
  from 'C:\xampp\htdocs\mvc-master\Views\admin\main.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32',
  'unifunc' => 'content_5bb905616b93c7_29743211',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '3934de6dd7b5bf747cfe83abc17c9986c820bff5' => 
    array (
      0 => 'C:\\xampp\\htdocs\\mvc-master\\Views\\admin\\main.tpl',
      1 => 1538851462,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5bb905616b93c7_29743211 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>



<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_3561793425bb905616b87b5_92791415', 'body');
?>


<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, '../layout.tpl');
}
/* {block 'body'} */
class Block_3561793425bb905616b87b5_92791415 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'body' => 
  array (
    0 => 'Block_3561793425bb905616b87b5_92791415',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <a href="/admin/category"> Categories </a>
    <a href="/admin/post"> Posts </a>
<?php
}
}
/* {/block 'body'} */
}
