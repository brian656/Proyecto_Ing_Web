<?php
session_start();


//conexion a la Base de datos (Servidor,usuario,password)
include 'conectar.php';

if (!$conn) {
    die("Error de conexion: " . mysqli_connect_error());
}
//(nombre de la base de datos, $enlace) mysql_select_db("RelocaDB",$link);
//capturando datos
$dni_reciclador = $_REQUEST["codigo-reciclador"];

//$id_reciclador =$_SESSION["id_reciclador"];

//consulta SQL
$sql = "select * from usuario where dni = '".$dni_reciclador."' && id_rol = 3";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($result);


if($row != null){
    
    $_SESSION["dni_reciclador"] = $dni_reciclador ;
    header("location:centro_acopio_2.php");

}else{
    echo "<script>alert('Código de reciclador incorrecto');</script>";
    echo "<script>window.location.href='centro_acopio_1.php'</script>";
}


mysqli_close($conn);
//Mensaje de conformidad


?>