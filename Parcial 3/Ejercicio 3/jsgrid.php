<?php

//fetch_data.php

$connect = new PDO("mysql:host=localhost;dbname=ruvillegas","root","");

$method = $_SERVER['REQUEST_METHOD'];

if($method == 'GET')
{
 $data = array(
  ':Nombre'=>"%" . $_GET['Nombre'] . "%",
  ':apPaterno'=>"%" . $_GET['apPaterno'] . "%",
  ':apMaterno'=>"%" . $_GET['apMaterno'] . "%",
  ':edad'=>"%" . $_GET['edad'] . "%",
  ':telefono'=>"%" . $_GET['telefono'] . "%"
 );
 $query = "SELECT * FROM personas WHERE Nombre LIKE :Nombre AND apPaterno LIKE :apPaterno AND apMaterno LIKE :apMaterno AND edad LIKE :edad AND telefono LIKE :telefono";

 $statement = $connect->prepare($query);
 $statement->execute($data);
 $result = $statement->fetchAll();
 foreach($result as $row)
 {
  $output[] = array(
   'id'    => $row['id'],   
   'Nombre'  => $row['Nombre'],
   'apPaterno'  => $row['apPaterno'],
   'apMaterno'   => $row['apMaterno'],
   'edad'    => $row['edad'],
   'telefono'   => $row['telefono']
  );
 }
 header("Content-Type: application/json");
 echo json_encode($output);
}

if($method == "POST")
{
 $data = array(
  ':Nombre'  => $_POST['Nombre'],
  ':apPaterno'  => $_POST['apPaterno'],
  ':apMaterno'  => $_POST["apMaterno"],
  ':edad'    => $_POST["edad"],
  ':telefono'   => $_POST["telefono"]
 );

 $query = "INSERT INTO personas (Nombre, apPaterno, apMaterno, edad, telefono) VALUES (:Nombre, :apPaterno, :apMaterno, :edad, :telefono)";
 $statement = $connect->prepare($query);
 $statement->execute($data);
}

if($method == 'PUT')
{
 parse_str(file_get_contents("php://input"), $_PUT);
 $data = array(
  ':id'   => $_PUT['id'],
  ':Nombre' => $_PUT['Nombre'],
  ':apPaterno' => $_PUT['apPaterno'],
  ':apMaterno'   => $_PUT['apMaterno'],
  ':edad'   => $_PUT['edad'],
  ':telefono'  => $_PUT['telefono']
 );
 $query = "
 UPDATE personas 
 SET Nombre = :Nombre, 
 apPaterno = :apMaterno, 
 apMaterno = :apMaterno, 
 edad = :edad, 
 telefono = :telefono 
 WHERE id = :id
 ";
 $statement = $connect->prepare($query);
 $statement->execute($data);
}

if($method == "DELETE")
{
 parse_str(file_get_contents("php://input"), $_DELETE);
 $query = "DELETE FROM personas WHERE id = '".$_DELETE["id"]."'";
 $statement = $connect->prepare($query);
 $statement->execute();
}

?>