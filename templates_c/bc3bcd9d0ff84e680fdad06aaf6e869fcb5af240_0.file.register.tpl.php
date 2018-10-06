<?php
/* Smarty version 3.1.32, created on 2018-10-05 11:32:37
  from 'C:\xampp\htdocs\mvc-master\Views\register.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32',
  'unifunc' => 'content_5bb72fb57093c7_93888363',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'bc3bcd9d0ff84e680fdad06aaf6e869fcb5af240' => 
    array (
      0 => 'C:\\xampp\\htdocs\\mvc-master\\Views\\register.tpl',
      1 => 1538731954,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5bb72fb57093c7_93888363 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_6238518615bb72fb57087e5_30617289', 'body');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, 'layout.tpl');
}
/* {block 'body'} */
class Block_6238518615bb72fb57087e5_30617289 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'body' => 
  array (
    0 => 'Block_6238518615bb72fb57087e5_30617289',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <h3> Register </h3>
    <form>
        <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Email">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
        </div>
        <button type="submit" class="btn btn-success">Register</button>
    </form>

    Already have an account? <a href="/auth/login">Login</a>
<?php
}
}
/* {/block 'body'} */
}
