<!DOCTYPE html>
<html lang="es">
<head>
	<?php
		include("meta.php");
	?>
	<title>Inicio</title>
</head>
<body>

	<script>
  		window.fbAsyncInit = function() {
    		FB.init({
      		appId            : '689087066553186',
      		autoLogAppEvents : true,
      		xfbml            : true,
      		version          : 'v16.0'
    		});
  		};
	</script>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v16.0&appId=689087066553186&autoLogAppEvents=1" nonce="o6lXwtkM"></script>-->

	<?php
		include("pre-scripts.php");
	?>

	<?php
		include("header.php");
	?>

	<div class="content-container">

		<div class="info">
			<div class="title">
				Conoce tus profesores
			</div>
			<div class="description">
				Consulta información sobre tus profesores, contacta a tu tutor ¡y mucho más!
			</div>
		</div>

		<div class="main-content">
			<div class="title">Publicaciones más recientes</div>
		</div>
	</div>
	

	<?php
		include("footer.php");
	?>

	<script async defer src="scripts/publicaciones.js"></script>
	<?php
		include("scripts.php");
	?>

	
</body>
</html>