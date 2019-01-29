
<?php
$host = 'localhost'; // адрес сервера 
$database = 'nails'; // имя базы данных
$user = 'Admin'; // имя пользователя
$password = 'Djljrfyfk48'; // пароль





// подключаемся к серверу
$link = mysqli_connect($host, $user, $password, $database)
or die("Ошибка или нет " . mysqli_error($link));

// Подключаем кодировку utf-8 к базе
if (!mysqli_set_charset($link, "utf8")) {
    printf("Ошибка при загрузке набора символов utf8: %s\n", mysqli_error($link));
}
?>




