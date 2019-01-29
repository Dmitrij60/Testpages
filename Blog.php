<?php
// подключаем БД
include_once 'blocks/db.php';
$stmt = $pdo->query('SELECT * FROM posts');
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
<?php if (file_exists('./blocks/header.php')) include './blocks/header.php'; ?>
<main>
    <?php
    do {
        printf("<div class='blog-container'>
		         <div class='blog-header'>
			         <div class='blog-cover'>
				        <img   src='%s'>
			         </div>
		         </div>
		         <div class='blog-body'>
			         <div class='blog-title'>
				        <h1><a href='viewpost.php?id=%s'>%s</a></h1>			
			         </div>

			         <div class='blog-text'>
				         <p>%s</p>			
			         </div>

			         <div class='blog-tags'>
				         <ul>
					     <li><a href=''>%s</a></li>
					     <li><a href=''>tags</a></li>	
					     <li><a href=''>tags2</a></li>						
				         </ul>
			         </div>			
		         </div>
		         <div class='blog-footer'>
			         <ul>
				     <li class='published-date'>%s</li>
			         </ul>
		         </div>
	         </div>",
            $row['image'], $row['id'], $row['title'], $row['description'], $row['tags'], $row['date']);
    } while ($row = $stmt->fetch());

    $dbn = null;

    ?>


</main>
<?php if (file_exists('./blocks/footer.php')) include './blocks/footer.php'; ?>

</body>
</html>