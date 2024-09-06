<?php
session_start();

$_SESSION["nombre"]= null;


//conexion a la Base de datos (Servidor,usuario,password)
include 'conectar.php';

if (!$conn) {
    die("Error de conexion: " . mysqli_connect_error());
}
//(nombre de la base de datos, $enlace) mysql_select_db("RelocaDB",$link);
//capturando datos
$dni = $_REQUEST["dni"];
$contraseña = $_REQUEST["contraseña"];
//$contraseña2 = md5($contraseña);

//consulta SQL
$sql = "select * from usuario where dni = '".$dni."' && contraseña = '".$contraseña."'";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($result);
$id_persona = $row["id_persona"];
$id_usuario = $row["id_usuario"];
//echo $row["Codigo_Rol"];

$sql2 = "select * from persona where id_persona = '".$id_persona."'";
$result2 = mysqli_query($conn, $sql2);
$row2 = mysqli_fetch_array($result2);

$_SESSION["nombre"] = $row2["nombre"];

$sql3 = "select * from reciclador where id_usuario = '".$id_usuario."'";
$result3 = mysqli_query($conn, $sql3);
$row3 = mysqli_fetch_array($result3);

$_SESSION["id_reciclador"] = $row3["id_reciclador"];

if($row==0){
    echo "<script>alert('Datos incorrectos');</script>";
    echo "<script>window.location.href='index.html'</script>";
}else if ($row["id_rol"] == 1) {
    header("location:panel_administrador.php");
}else if ($row["id_rol"] == 2){
    header("location:centro_acopio_1.php");
}else if ($row["id_rol"] == 3){
    header("location:panel_reciclador.php");
}

mysqli_close($conn);
//Mensaje de conformidad


?>
