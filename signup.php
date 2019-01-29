<?php
require "./blocks/dbredbin.php";
//если кликнули на button
    $data = $_POST; 
	if ( isset($data['do_signup']) )   //нажатие кнопки
    {
    // проверка формы на пустоту полей
		$errors = array();
		if ( trim($data['login']) == '' )
		{
			$errors[] = 'Введите логин';
		}

		if ( trim($data['email']) == '' )
		{
			$errors[] = 'Введите Email';
		}

		if ( $data['password'] == '' )
		{
			$errors[] = 'Введите пароль';
		}

		if ( $data['password_2'] != $data['password'] )
		{
			$errors[] = 'Повторный пароль введен не верно!';
		}

		//проверка на существование одинакового логина
		if ( R::count('users', "login = ?", array($data['login'])) > 0)
		{
			$errors[] = 'Пользователь с таким логином уже существует!';
		}
    
    //проверка на существование одинакового email
		if ( R::count('users', "email = ?", array($data['email'])) > 0)
		{
			$errors[] = 'Пользователь с таким Email уже существует!';
		}
		if ( empty($errors) )
		{
			//ошибок нет, теперь регистрируем
			$user = R::dispense('users');
			$user->login = $data['login'];
			$user->email = $data['email'];
			$user->password = password_hash($data['password'], PASSWORD_DEFAULT); //пароль нельзя хранить в открытом виде, мы его шифруем при помощи функции password_hash для php > 5.6
			R::store($user);
			echo '<div style="color:dreen;">Вы успешно зарегистрированы!</div><hr>';
		}else
		{
			echo '<div id="errors" style="color:red;">' .array_shift($errors). '</div><hr>';
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
    	<?php if(file_exists('./blocks/header.php')) include './blocks/header.php'; ?>
    	
    	<main>

<form class="form" action="signup.php" method="POST">
		<p><input type="text" name="login" class="feedback-input" placeholder="Login" value="<?php echo @$data['login']; ?>" id=""></p>
        <p><input type="email" name="email" class="feedback-input" placeholder="Email" value="<?php echo @$data['email']; ?>" id=""></p>
         <p><input type="password" name="password" class="feedback-input" placeholder="Password" id=""></p>
          <p><input type="password" name="password_2" class="feedback-input" placeholder="Repeat password" id=""></p>
        <input type="submit" name="do_signup" value="Registretion" class="button-submit">
        <div class="easy"></div>
	</form>


    	</main>
    	<?php if(file_exists('./blocks/footer.php')) include './blocks/footer.php'; ?>

        <script type="text/javascript" src="script.js"></script>
        <script type="text/javascript" src="script.js"></script>
    </body>
</html>