<?php
/* Smarty version 3.1.32, created on 2018-10-06 20:56:19
  from 'C:\xampp\htdocs\mvc-master\Views\login.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32',
  'unifunc' => 'content_5bb90553e99fb5_01278286',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '652d2c8e20f072c81a479a5a0fbd93d1808826b4' => 
    array (
      0 => 'C:\\xampp\\htdocs\\mvc-master\\Views\\login.tpl',
      1 => 1538852177,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5bb90553e99fb5_01278286 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_8746590775bb90553e99063_38019532', 'body');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, 'layout.tpl');
}
/* {block 'body'} */
class Block_8746590775bb90553e99063_38019532 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'body' => 
  array (
    0 => 'Block_8746590775bb90553e99063_38019532',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <h3> Login </h3>

    <form action="/auth/login" method="POST">
        <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input type="text" class="form-control" name="login" placeholder="Email">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" class="form-control" name="pass" placeholder="Password">
        </div>
            <button type="submit" class="btn btn-success">Login</button>
    </form>
    Have not account? <a href="/auth/register">Register</a>
<?php
}
}
/* {/block 'body'} */
}
