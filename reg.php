<?php
require './blocks/dbredbin.php';
?>

<?php if (isset ($_SESSION['logged_user'])) : ?>
    Авторизован! <br/>
    Привет, <?php echo $_SESSION['logged_user']->login; ?>!<br/>

    <a href="logout.php">Выйти</a>

<?php else : ?>
    Вы не авторизованы<br/>
    <a href="/login.php">Авторизация</a>
    <a href="/signup.php">Регистрация</a>
<?php endif; ?>


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
    <form class="form" action="save_user.php" method="post">
        <p><input type="text" name="login" class="feedback-input" placeholder="Login"
                  value="<?php echo @$data['login']; ?>" id=""></p>
        <p><input type="text" name="email" class="feedback-input" placeholder="Email" id=""></p>
        <p><input type="password" name="password" class="feedback-input" placeholder="Password" id=""></p>
        <p><input type="password" name="password_2" class="feedback-input" placeholder="Repeat password" id=""></p>

        <input type="submit" name="do_signup" value="Sign up" class="button-submit">
        <div class="easy"></div>
    </form>
</main>
<?php if (file_exists('./blocks/footer.php')) include './blocks/footer.php'; ?>

<script type="text/javascript" src="script.js"></script>
</body>
</html>