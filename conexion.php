<?php
function conectar(){
    $host="192.168.1.3";
    $user="php";
    $pass="@Yanosemeolvida10";

    $bd="agencia";

    $con=mysqli_connect($host,$user,$pass);

    mysqli_select_db($con,$bd);

    return $con;
}
?>
