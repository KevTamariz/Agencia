<?php
include("conexion.php");
$con=conectar();

$Num_Serie=$_POST['Num_Serie'];
$Marca=$_POST['Marca'];
$Modelo=$_POST['Modelo'];
$Color=$_POST['Color'];
$Precio=$_POST['Precio'];


$sql="INSERT INTO vehiculo VALUES('$Num_Serie','$Marca','$Modelo','$Color', '$Precio')";
$query= mysqli_query($con,$sql);

if($query){
    Header("Location: agencia.php");
    
}else {
}
?>
