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

			<?php 
    			include("./connection.php");
    			$query = "SELECT * FROM profesor";
    			$resultado = mysqli_query($conn, $query);
    			$row = mysqli_fetch_all($resultado, MYSQLI_ASSOC);
    			$num_rows = mysqli_num_rows($resultado);
    			$actual_letter = ' ';
    			for ($i=0; $i < $num_rows; $i++) { 
    				$nombre = $row[$i]['nombre'];
    				$cubiculo = $row[$i]['cubiculo'];
    				$correo = $row[$i]['correo'];
    				if ($actual_letter[0] != $nombre[0]) {
    					print("<div class='letter-divider'>
    						<div class='letter'>$nombre[0]</div>");
    					$actual_letter = $nombre[0];
    				}
    				print("<div class='profesor-card'>
    							<div class='prof-info'><div class='prof-t'>Nombre:</div><div class='prof-attr'>$nombre</div></div>
    							<div class='prof-info'><div class='prof-t'>Cubículo:</div><div class='prof-attr'>$cubiculo</div></div>
    							<div class='prof-info'><div class='prof-t'>Correo:</div><div class='prof-attr'>$correo</div></div>
    						</div>
    					");
    				if($i < $num_rows - 1){
    					$aux = $row[$i + 1]['nombre'];
    					if($aux[0]!=$actual_letter[0]){
    						print("</div>");
    					}
    				}else{
    					print("</div>");
    				}
    			}
			?>
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