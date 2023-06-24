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
				Busca a tus profesores ordenados por generación
			</div>
		</div>
		<div class="main-content">

			<?php 
    			include("./connection.php");
    			$query = "SELECT * FROM profesor
    					ORDER BY generacion DESC";
    			$resultado = mysqli_query($conn, $query);
    			$row = mysqli_fetch_all($resultado, MYSQLI_ASSOC);
    			$num_rows = mysqli_num_rows($resultado);
    			$actual_gen = ' ';
    			for ($i=0; $i < $num_rows; $i++) { 
    				$nombre = $row[$i]['nombre'];
    				$cubiculo = $row[$i]['cubiculo'];
    				if(strcmp($cubiculo,"")==0){
    					$cubiculo = "///";
    				}
    				$correo = $row[$i]['correo'];
    				$generacion = $row[$i]['generacion'];
    				$seccion = $row[$i]['seccion'];
    				$programa_edu = $row[$i]['programa_edu'];
    				$month = substr($generacion, 5,strlen($generacion));
    				$year = substr($generacion, 0,4);
    				if(strcmp($month,"01-01")==0){
    					$month = "Primavera";
    				}else{
    					$month = "Otoño";
    				}
    				if (strcmp($actual_gen,$generacion)!= 0){
    					print("<details class='det-prof'>
    						<summary class='gen-prof'>$year - $month</summary>
    						<div>");
    					$actual_gen = $generacion;
    				}
    				print("<div class='profesor-card'>
    							<div class='prof-info'><div class='prof-t'>Sección:</div><div class='prof-attr'>$seccion</div></div>
    							<div class='prof-info'><div class='prof-t'>Nombre:</div><div class='prof-attr'>$nombre</div></div>
    							<div class='prof-info'><div class='prof-t'>Cubículo:</div><div class='prof-attr'>$cubiculo</div></div>
    							<div class='prof-info'><div class='prof-t'>Correo:</div><div class='prof-attr'>$correo</div></div>
    						</div>
    					");
    				if($i < $num_rows - 1){
    					$aux = $row[$i + 1]['generacion'];
    					if(strcmp($aux,$actual_gen) !=0){
    						print("</div></details>");
    					}
    				}else{
    					print("</div></details>");
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