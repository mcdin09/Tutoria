<!DOCTYPE html>
<html lang="en">
<head>
	<?php
		include("meta.php");
	?>
	<title>Mis profesores</title>
</head>
<body>
	<?php
		include("pre-scripts.php");
	?>

	<?php
		include("header.php");
	?>

	<div class="content-container">
		<div class="info">
			<div class="title">
				Profesores
			</div>
			<div class="description">
				Busca a tus profesores ordenados alfabéticamente
			</div>
		</div>
		<div class="main-content">
			<div class="profesor-card">
				<div class="nombre"></div>
				<div class="correo"></div>
			</div>
		</div>
	</div>

	<?php
		include("footer.php");
	?>

	<?php
		include("scripts.php");
	?>
</body>
</html>