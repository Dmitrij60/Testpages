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
    <form class="form">
        <p><input type="text" name="name" class="feedback-input" placeholder="Login" id=""></p>
        <p><input type="text" name="email" class="feedback-input" placeholder="Password" id=""></p>
        <input type="submit" name="" value="Log in" class="button-submit">
        <div class="easy"></div>
    </form>
</main>


<?php if (file_exists('./blocks/footer.php')) include './blocks/footer.php'; ?>


<script type="text/javascript" src="script.js"></script>
</body>
</html>