<html>
<head>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha384-tsQFqpEReu7ZLhBV2VZlAu7zcOV+rXbYlF2cqB8txI/8aZajjp4Bqd+V6D5IgvKT" crossorigin="anonymous"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>
    {*<script>
        Window.onunload = function()
        {
            return confirm('Вы хотите покинуть сайт?')
        }
        window.onbeforeunload = function(){
            return confirm('Точно хотите выйти?');
        }
    </script>*}
    <link href="../libs/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
{*    <script src="//netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>*}
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
                {if isset($smarty.session.user) && $smarty.session.user.admin}
                    <li><a href="/admin">Admin <span class="sr-only">(current)</span></a></li>
                {/if}
            </ul>
            <ul class="nav navbar-nav navbar-right">
                {if !isset($smarty.session.user)}
                    <li><a href="/auth/login">Sign In</a></li>
                    <li><a href="/auth/register">Sign Up</a></li>
                {/if}

                {if isset($smarty.session.user)}
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">{$smarty.session.user.login}<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="/auth/logout">Logout</a></li>
                        </ul>
                    </li>
                {/if}
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<div class="container">
    {block name=body}{/block}
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

<script>
    setTimeout(function() { $("#elem").show('slow'); }, 15000);
    $('.btn').on('click',function () {
        $('#elem').css('display','none');
    })
    $('.close').on('click',function () {
            $('#elem').css('display','none');
        })
</script>
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

<script>
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
</script>

<script src="vendor/jquery/jquery.min.js"></script>
<script src="../libs/bootstrap.bundle.min.js"></script>
</body>
</html>