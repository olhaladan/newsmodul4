<?php
/* Smarty version 3.1.32, created on 2018-10-06 14:23:58
  from 'C:\xampp\htdocs\mvc-master\Views\slider.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32',
  'unifunc' => 'content_5bb8a95eba7b99_67130793',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '93be27cf28e09658b28b1db5444e3cff4b57981f' => 
    array (
      0 => 'C:\\xampp\\htdocs\\mvc-master\\Views\\slider.tpl',
      1 => 1538828636,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5bb8a95eba7b99_67130793 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_15208543185bb8a95eb8e9a1_55344379', 'body');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, 'layout.tpl');
}
/* {block 'body'} */
class Block_15208543185bb8a95eb8e9a1_55344379 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'body' => 
  array (
    0 => 'Block_15208543185bb8a95eb8e9a1_55344379',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

<div class="col-md-3">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['categories']->value, 'post');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['post']->value) {
?>
                <?php if ($_smarty_tpl->tpl_vars['post']->value === reset($_smarty_tpl->tpl_vars['categories']->value)) {?>
            <div class="item active">
                <a href="category/show/0"> <img src="<?php echo $_smarty_tpl->tpl_vars['post']->value['link'];?>
" style="opacity: 0.5;height: 200px;width: 300px;" alt="<?php echo $_smarty_tpl->tpl_vars['post']->value['headline'];?>
">

                <div class="carousel-caption">
                    <h3 style="color: black"><?php echo $_smarty_tpl->tpl_vars['post']->value['headline'];?>
</h3>
                    <p style="color: black"><?php echo $_smarty_tpl->tpl_vars['post']->value['text'];?>
</p>
                </div></a>
            </div>
                <?php } else { ?>
                    <div class="item">
                        <a href="category/show/0"> <img src="<?php echo $_smarty_tpl->tpl_vars['post']->value['link'];?>
" style="opacity: 0.5;height: 200px;width: 300px;" alt="<?php echo $_smarty_tpl->tpl_vars['post']->value['headline'];?>
">

                        <div class="carousel-caption">
                            <h3 style="color: black"><?php echo $_smarty_tpl->tpl_vars['post']->value['headline'];?>
</h3>
                            <p style="color: black"><?php echo $_smarty_tpl->tpl_vars['post']->value['text'];?>
</p>
                        </div></a>
                    </div>
            <?php }?>
            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
<?php
}
}
/* {/block 'body'} */
}
