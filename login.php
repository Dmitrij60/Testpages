<?php
require "./blocks/dbredbin.php";
//если кликнули на button
$data = $_POST;
if (isset($data['do_login']))//нажатие кнопки
{
    $user = R::findOne('users', 'login = ?', array($data['login']));
    if ($user) {
        //логин существуетe
        if (password_verify($data['password'], $user->password)) {
            //если пароль совпадает, то нужно авторизовать пользователя
            $_SESSION['logged_user'] = $user;
            echo '<div style="color:green;">Вы авторизованы!</div><hr>';
        } else {
            $errors[] = 'Неверно введен пароль!';
        }

    } else {
        $errors[] = 'Пользователь с таким логином не найден!';
    }

    if (!empty($errors)) {
        //выводим ошибки авторизации
        echo '<div id="errors" style="color:red;">' . array_shift($errors) . '</div><hr>';
    }

}


?>


<!DOCTYPE html>
<html>
<head>
    <title>adapt</title>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
<?php if (file_exists('./blocks/header.php')) include './blocks/header.php'; ?>

<main>

    <form class="form" action="login.php" method="POST">
        <p><input type="text" name="login" class="feedback-input" placeholder="Login" id=""></p>
        <p><input type="password" name="password" class="feedback-input" placeholder="Password" id=""></p>
        <input type="submit" name="do_login" value="Log in" class="button-submit">
        <div class="easy"></div>
    </form>


</main>
<?php if (file_exists('./blocks/footer.php')) include './blocks/footer.php'; ?>

<script type="text/javascript" src="script.js"></script>
<script type="text/javascript" src="script.js"></script>
</body>
</html>