<?php
/* Smarty version 3.1.32, created on 2018-10-06 20:34:45
  from 'C:\xampp\htdocs\mvc-master\Views\page.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32',
  'unifunc' => 'content_5bb900458ab491_15220872',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd04bb324f39172f23c970423fa85f67d33e87fe0' => 
    array (
      0 => 'C:\\xampp\\htdocs\\mvc-master\\Views\\page.tpl',
      1 => 1538850884,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5bb900458ab491_15220872 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_4418845635bb90045896c17_47646566', 'body');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, 'layout.tpl');
}
/* {block 'body'} */
class Block_4418845635bb90045896c17_47646566 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'body' => 
  array (
    0 => 'Block_4418845635bb90045896c17_47646566',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <input type="button" onclick="history.back();" value="Назад"/>
<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['posts']->value, 'post');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['post']->value) {
?>

    <div class="card mb-3">
        <img style="height: 200px; width:300px; display: block;" src="<?php echo $_smarty_tpl->tpl_vars['post']->value['link'];?>
" alt="Card image">
        <h3 class="card-header"><?php echo $_smarty_tpl->tpl_vars['post']->value['headline'];?>
</h3>
        <div class="card-footer text-muted">
            <?php echo $_smarty_tpl->tpl_vars['post']->value['date'];?>

        </div>
        <div class="card-body">
            <h6 class="card-subtitle text-muted"> <?php echo $_smarty_tpl->tpl_vars['post']->value['text'];?>
...</h6>
        </div>

    </div>
<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['messes']->value, 'mess');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['mess']->value) {
?>
        <div class="card border-secondary mb-3" style="max-width: 20rem;">
            <div class="card-header"><h4>COMENTS</h4></div>
            <div class="card-body">
                <p class="card-title">Тема: <?php echo $_smarty_tpl->tpl_vars['mess']->value['theme'];?>
</p>
                <p class="card-text">Текст: <?php echo $_smarty_tpl->tpl_vars['mess']->value['text'];?>
</p>
                <p class="card-text">Дата: <?php echo $_smarty_tpl->tpl_vars['mess']->value['date'];?>
</p>
            </div>
            <div class="card-footer text-muted">
                <p class="card-text">ID пользователя: <?php echo $_smarty_tpl->tpl_vars['mess']->value['user_id'];?>
</p>
                <p class="card-text">Лайки: <?php echo $_smarty_tpl->tpl_vars['mess']->value['range_plus'];?>
</p>
                <p class="card-text">Дизлайки: <?php echo $_smarty_tpl->tpl_vars['mess']->value['range_min'];?>
</p>
                <p class="card-text">&#x2295;Модератором проверено</p>
            </div>
        </div>
    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
}
}
/* {/block 'body'} */
}
