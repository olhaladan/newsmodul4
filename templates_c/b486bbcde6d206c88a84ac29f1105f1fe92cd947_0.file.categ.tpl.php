<?php
/* Smarty version 3.1.32, created on 2018-10-05 22:14:29
  from 'C:\xampp\htdocs\mvc-master\Views\categ.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32',
  'unifunc' => 'content_5bb7c625442632_87714748',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'b486bbcde6d206c88a84ac29f1105f1fe92cd947' => 
    array (
      0 => 'C:\\xampp\\htdocs\\mvc-master\\Views\\categ.tpl',
      1 => 1538770423,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5bb7c625442632_87714748 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_2132073725bb7c625432f92_50647840', 'body');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, 'main.tpl');
}
/* {block 'body'} */
class Block_2132073725bb7c625432f92_50647840 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'body' => 
  array (
    0 => 'Block_2132073725bb7c625432f92_50647840',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="row">
        <div class="col-md-3">
            <ul class="nav nav-pills nav-stacked">
                <li role="presentation"><a href="/category/showAll">All</a></li>
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['categories']->value, 'category');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['category']->value) {
?>
                    <li role="presentation" class="active">
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
                <div class="card text-white bg-primary mb-3" style="max-width: 20rem;">
                    <div class="card-header"><?php echo $_smarty_tpl->tpl_vars['post']->value['date'];?>
</div>
                    <div class="card-body">
                        <h4 class="card-title"><?php echo $_smarty_tpl->tpl_vars['post']->value['headline'];?>
</h4>
                        <p class="card-text"><?php echo $_smarty_tpl->tpl_vars['post']->value['text'];?>
</p>
                    </div>
                </div>
            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
        </div>
    </div>
<?php
}
}
/* {/block 'body'} */
}
