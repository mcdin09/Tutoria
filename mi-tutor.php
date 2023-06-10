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
				¡Contacta con tu tutor! Acá te mostraremos una serie de pasos que debes seguir para ubicar a tu tutor. Ten en cuenta que si cambiaste de tutor, estos tutoriales no funcionará.
			</div>
			<div class="nav-options">
				<div class="tutorial-option tutorial-option-active" id="option-1" type="button">Segura</div>
				<div class="tutorial-option tutorial-option-active" id="option-2" type="button">Rápida</div>
			</div>
		</div>
		<div class="main-content" id="main-1">
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

		<div class="main-content" id="main-2">
			<div class="description">
				El siguiente tutorial no es funcional para la generación Primavera 2021.
			</div>
			<div class="description">Es necesario que tengas a la mano tu horario de primer semestre.</div>
			<ol>
				<div class="step">
					<li class="step-indication">Ubica el periodo (Otoño/Primavera) y el año</li>
				</div>
				<div class="step">
					<li class="step-indication">Ubica las letras de la licenciatura que cursas</li>
					<ol>
						<li class="sub-step-indication">Ingeniería en Ciencias de la Computación: ICC</li>
						<li class="sub-step-indication">Ingeniería en Tecnologías de la Información: IT</li>
						<li class="sub-step-indication">Licenciatura en Ciencias de la Computación: CCO</li>
					</ol>
				</div>
				<div class="step">
					<li class="step-indication">Ubica tu sección</li>
					<div class="step-description">A partir de la columna "SEC" en tu horario</div>
					<ol>
						<li class="sub-step-indication">Ubica la o las materias de la licenciatura (Aquellas que tengan las letras de tu carrera)</li>
						<li class="sub-step-indication">Identifica la sección de la materia, si las materias tienen dos secciones diferentes, escoge la más frecuente</li>
					</ol>
				</div>
				<div class="step">
					<li class="step-indication">Ubica a tu tutor en el apartado "Profesores"</li>
					<div class="step-description">Utiliza tu periodo y sección</div>
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

	<script src="scripts/tutorial-option.js"></script>
</body>
</html>