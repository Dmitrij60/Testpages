<?php

// подключаем БД
require_once 'blocks/db.php';
if (!empty($_GET['id'])){
	$id=$_GET['id'];
}


$stmt = $pdo->query("SELECT * FROM posts WHERE id = '$id'");
$row = $stmt->fetch();

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Blog</title>
	<link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet"> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
		<?php if(file_exists('./blocks/header.php')) include './blocks/header.php'; ?>
<main>
<?php
printf("
	<div class='post-container'>
	    <div class='post-header'>
	    	<div class='post-cover'>
				<img   src='%s'>
			</div>
        </div>
        <div class='post-body'>
            <div class='post-title'>
                <h1><p>%s</p></h1>
            </div>
            <div class='post-text'>
                <p>%s</p>
            </div>
            <div class='post-tags'>
                <ul>
				<li><a href=''>%s</a></li>
				<li><a href=''>tags</a></li>	
				<li><a href=''>tags2</a></li>						
				</ul>
            </div>
        </div>    
        <div class='post-footer'>
            <ul>
			<li class='post-date'>%s</li>
			</ul>
        </div>
    </div>
", $row['image'], $row['title'], $row['text'], $row['tags'], $row['date']);
?>
</main>
	<?php if(file_exists('./blocks/footer.php')) include './blocks/footer.php'; ?>
	
</body>
</html>