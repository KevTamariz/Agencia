<?php

include("conexion.php");
$con=conectar();

$Num_Serie=$_GET['id'];

$sql="DELETE FROM agencia  WHERE Num_Serie='$Num_Serie'";
$query=mysqli_query($con,$sql);

    if($query){
        Header("Location: agencia.php");
    }
?>
