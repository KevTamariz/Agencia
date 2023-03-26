<?php

include("conexion.php");
$con=conectar();

$Num_Serie=$_POST['Num_Serie'];
$Marca=$_POST['Marca'];
$Modelo=$_POST['Modelo'];
$Color=$_POST['Color'];
$Precio=$_POST['Precio'];

$sql="UPDATE agencia Marca='$Marca',Modelo='$Modelo',Color='$Color',Precio='$Precio' WHERE Num_Serie='$Num_Serie'";
$query=mysqli_query($con,$sql);

    if($query){
        Header("Location: agencia.php");
    }
?>
