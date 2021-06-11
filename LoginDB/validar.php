<?php
include('db.php');
/* Variables que reciben los datos ingresados por teclado*/
$usuario=$_POST['usuario'];
$contraseña=$_POST['contraseña'];
session_start();
$_SESSION['usuario']=$usuario;

/*Variable conexion*/
$conexion=mysqli_connect("localhost","root","","villegasru");

/*uso de la variable consulta*/
$consulta="SELECT*FROM usuarios where usuario='$usuario' and contraseña='$contraseña'";
$resultado=mysqli_query($conexion,$consulta);

/*GuARDA EL DATO PARA COMPARARLO*/
$filas=mysqli_num_rows($resultado);


if($filas){
  
    header("location:home.php");
    /*Si los datos son correctos*/

}else{
    ?>
    <?php
    include("index.php"); /*Manda a la misma pagina porque no son los datos correctos*/

  ?>
  <h1 class="bad">ERROR DE AUTENTIFICACION</h1>
  <?php
}
mysqli_free_result($resultado);
mysqli_close($conexion);
