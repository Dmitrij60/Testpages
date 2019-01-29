<header>
    <div class="logo">
        <a href="index.php"><img class="graficlogo" src="./img/logo.png" alt="logo"></a>
    </div>
    <div class="reg">
        <div class="reg-status">
            <?php if (isset ($_SESSION['logged_user'])) : ?>
            <p>Hello, <?php echo $_SESSION['logged_user']->login; ?>!</p><br/>
        </div>
        <div class="reg-button">
            <p><a href="logout.php">Log out</a></p>
        </div>
        <?php else : ?>
    </div>
    <div class="reg-button">
        <p><a href="signup.php">Sign up</a></p>
    </div>
    <div class="reg-button">
        <p><a href="login.php">Log in</a></p>
        <?php endif; ?>
    </div>
    </div>

    <nav>
        <div class="topnav" id="myTopnav">
            <a href="index.php">HOME</a>
            <a href="projects.php">PROJECTS</a>
            <a href="Contacts.php">CONTACTS</a>
            <a href="About.php">ABOUT</a>
            <a href="Blog.php">BLOG</a>
            <a href="Services.php">SERVICES</a>
            <a href="location.php">LOCATION</a>
            <a id="menu" href="#" class="icon">&#9776;</a>
        </div>

    </nav>
</header>
	

