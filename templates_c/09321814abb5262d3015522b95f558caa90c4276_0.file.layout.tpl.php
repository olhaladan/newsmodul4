<?php
/* Smarty version 3.1.32, created on 2018-10-06 19:42:31
  from 'C:\xampp\htdocs\mvc-master\Views\layout.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32',
  'unifunc' => 'content_5bb8f4070c3071_44746678',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '09321814abb5262d3015522b95f558caa90c4276' => 
    array (
      0 => 'C:\\xampp\\htdocs\\mvc-master\\Views\\layout.tpl',
      1 => 1538847652,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5bb8f4070c3071_44746678 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, false);
?>
<html>
<head>
    <?php echo '<script'; ?>
 src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha384-tsQFqpEReu7ZLhBV2VZlAu7zcOV+rXbYlF2cqB8txI/8aZajjp4Bqd+V6D5IgvKT" crossorigin="anonymous"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.js"><?php echo '</script'; ?>
>
        <link href="../libs/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <?php echo '<script'; ?>
 src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"><?php echo '</script'; ?>
>
</head>
<body >
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header"">
            <a class="navbar-brand" style="color: darkmagenta;" href="/category/show/0">DayNews</a>
            <a href="/" class="navbar-brand" class="dropdown-toggle" data-toggle="dropdown">Меню<span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
                <li><a href="/slider">Slider</a></li>
                <li><a href="/">Еще подпункт</a></li>
                <li class="dropdown-toggle" data-toggle="dropdown">Меню<span class="caret"></span>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="/">Подпункт</a></li>
                        <li><a href="/">Еще подпункт</a></li>
                        <li><a href="/">Еще что-то</a></li>
                    </ul>
                </li>
            </ul>

        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="display: inline;">
            <ul class="nav navbar-nav">
                <?php if (isset($_SESSION['user']) && $_SESSION['user']['admin']) {?>
                    <li><a href="/admin">Admin <span class="sr-only">(current)</span></a></li>
                <?php }?>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <?php if (!isset($_SESSION['user'])) {?>
                    <li><a href="/auth/login">Sign In</a></li>
                    <li><a href="/auth/register">Sign Up</a></li>
                <?php }?>

                <?php if (isset($_SESSION['user'])) {?>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?php echo $_SESSION['user']['login'];?>
<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="/auth/logout">Logout</a></li>
                        </ul>
                    </li>
                <?php }?>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<div class="container">
    <?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_13506037435bb8f4070c1ce0_70203164', 'body');
?>

</div>

<div id="elem" style="display: none; position: fixed;
    top: 50%;
    left: 50%;
    margin-left: -250px;
    margin-top: -150px;
    width: 500px;
    height: 200px;
    background: lightgray;
    padding: 25px;">
    <button  class="close" style="color: black;float: right;">Закрыть окно</button><br>
    <h2>Подписка на обновления</h2>

    <p>Получайте самые последние новости на свой e-mail</p>
    <form>
        <input type="email" placeholder="Email адрес">
        <button  class="btn" style="color: darkmagenta;margin-left: 20px;">Получать</button>
    </form>
</div>

<?php echo '<script'; ?>
>
    setTimeout(function() { $("#elem").show('slow'); }, 15000);
    $('.btn').on('click',function () {
        $('#elem').css('display','none');
    })
    $('.close').on('click',function () {
            $('#elem').css('display','none');
        })
<?php echo '</script'; ?>
>
<div class="exitblock" style="display:none;
    position:fixed;
    top: 50%;
    left: 50%;
    margin-left: -250px;
    margin-top: -150px;
    background: darkgrey;
    padding: 25px;">

    <h1>Уже уходите???</h1>
    <p>Почитайте еще статьи на сайте!</p>

    <div class="closeblock" style="cursor:pointer;
         line-height:60px;
         font-size:82px;
         transform: rotate(45deg);
         text-align:center;
         top:20px;
         right:30px;
         color: #337AB7; " >+</div>
</div>

<?php echo '<script'; ?>
>
    $(document).mouseleave(function(e){
        if (e.clientY < 10) {
            $(".exitblock").fadeIn("fast");
        }
    });
    $(document).click(function(e) {
        if (($(".exitblock").is(':visible')) && (!$(e.target).closest(".exitblock .modaltext").length)) {
            $(".exitblock").remove();
        }
    });
<?php echo '</script'; ?>
>

<?php echo '<script'; ?>
 src="vendor/jquery/jquery.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="../libs/bootstrap.bundle.min.js"><?php echo '</script'; ?>
>
</body>
</html><?php }
/* {block 'body'} */
class Block_13506037435bb8f4070c1ce0_70203164 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'body' => 
  array (
    0 => 'Block_13506037435bb8f4070c1ce0_70203164',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
}
}
/* {/block 'body'} */
}
