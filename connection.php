<?php 
    $servername = "localhost";
    $username = "tutoria-admin";
    $password = "&./Tutoria2023_LDR";
    $database = "tutoria";

    //creando conexión
    $conn = new mysqli($servername,$username,$password,$database);
    //comprobando conexión
    if(!$conn){
        die("Conección mala: ".mysqli_connect_error());
    }
    return $conn;
?>