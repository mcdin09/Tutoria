<!DOCTYPE html>
<html lang="en">
<head>
	<?php
		include("meta.php");
	?>
	<title>Mi tutor</title>
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
				Mi tutor
			</div>
			<div class="description">
				¡Contacta con tu tutor! Acá te mostraremos una serie de pasos que debes seguir para ubicar a tu tutor
			</div>
		</div>
		<div class="main-content">
			<ol>
				<div class="step">
					<li class="step-indication">Ingresa al siguiente link</li>
					<a class="link-description" href="http://webserver1.siiaa.siu.buap.mx:81/autoservicios/twbkwbis.P_WWWLogin">Autoservicios</a>
				</div>

				<div class="step">
					<li class="step-indication">Ingresa tu matrícula y contraseña</li>
					<img class="tutorialImg" src="img/paso1.png">
				</div>
				<div class="step">
					<li class="step-indication">Da clic en el botón "Acceder" después de comprobar el Captcha</li>
					<img class="tutorialImg" src="img/paso2.png">
				</div>
				<div class="step">
					<li class="step-indication">Da clic en "Servicios al alumno"</li>
					<img class="tutorialImg" src="img/paso3.png">
				</div>
				<div class="step">
					<li class="step-indication">Da clic en "Registro escolar"</li>
					<img class="tutorialImg" src="img/paso4.png">
				</div>
				<div class="step">
					<li class="step-indication">Da clic en "Tutor académico"</li>
					<img class="tutorialImg" src="img/paso5.png">
				</div>
				<div class="step">
					<li class="step-indication">¡Listo!</li>
					<div class="step-description">Encontrarás el nombre del tutor, junto con el coordinador de carrera, coordinador de tutores, secretaría académica y directora. Si deseas contactar algún docente, puedes verificar su información de contacto en <a class="link-inpage" href="./profesores.php">Profesores</a>.</div>
				</div>
			</ol>
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