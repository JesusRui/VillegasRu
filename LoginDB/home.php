<?php
session_start();
error_reporting(0);
$varsesion= $_SESSION['usuario'];
if($varsesion== null || $varsesion=''){
    header("location:../index.html");
    die();
}

?><!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio</title>
</head>
<body>

<h1>Bienvenido <?php echo $_SESSION['usuario']; ?> </h1>
<a href="cerrarsesion.php">CERRAR SESION</a>
    
</body>
</html>
