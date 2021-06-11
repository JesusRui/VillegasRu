<?php

$inc = include("db.php");
if($inc)
{
    $consulta = "SELECT * FROM clientes";
    $resultado = mysqli_query($conex,$consulta);
    if($resultado)
    {
        while($row = $resultado ->fetch_array())
        {
            $idclientes=$row['id'];
            $Nombre=$row["nombre"];
            $Apellido=$row['correo'];
            $NumeroTel=$row["celular"];
            ?>

            <div>
                <h2><?php echo $Nombre; ?></h2>
                <div>
                    <p>
                        <b>ID: </b> <?php echo $idclientes; ?><br>
                        <b>Nombre: </b> <?php echo $Nombre; ?><br>
                        <b>correo: </b> <?php echo $Apellido; ?><br>
                        <b>celular </b> <?php echo $NumeroTel; ?><br>
                        
                    </p>
                
                </div>
            </div>

            <?php

        }
    }

}



