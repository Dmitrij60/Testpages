<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>LOCATION</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
<?php if (file_exists('./blocks/header.php')) include './blocks/header.php'; ?>

<main>
    <h1>Location</h1>
    <div id='map'></div>
    <script>
        function initMap() {
            var uluru = {lat: 52.599738, lng: 39.586525};
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 16.5,
                center: uluru
            });
            var marker = new google.maps.Marker({
                position: uluru,
                map: map
            });
        }
    </script>
    <script async defer
            src="https://maps.googleapis.com/maps/api/js?key=
AIzaSyBaSUa8uQCOywp3LmV9JqT4g2hE5c2d-5s
&callback=initMap">
    </script>


</main>


<?php if(file_exists('./blocks/footer.php')) include './blocks/footer.php'; ?>
	
</body>
</html>