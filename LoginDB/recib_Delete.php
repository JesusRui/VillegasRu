<?php
include('db.php');
$idRegistros = $_REQUEST['id'];

$DeleteRegistro = ("DELETE FROM clientes WHERE id= '".$idRegistros."' ");
mysqli_query($con, $DeleteRegistro);
?>