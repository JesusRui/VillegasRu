<?php
include('db.php');
$nombre      = $_REQUEST['nombre'];
$correo 	 = $_REQUEST['correo'];
$celular 	 = $_REQUEST['celular'];


$QueryInsert = ("INSERT INTO clientes(
    nombre,
    correo,
    celular
)
VALUES (
    '".$nombre. "',
    '".$correo. "',
    '".$celular."'
)");
$inserInmueble = mysqli_query($con, $QueryInsert);

header("location:home.php");
?>