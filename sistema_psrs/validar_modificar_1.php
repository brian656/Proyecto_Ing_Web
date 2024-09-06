<?php
session_start();


//conexion a la Base de datos (Servidor,usuario,password)
include 'conectar.php';

if (!$conn) {
    die("Error de conexion: " . mysqli_connect_error());
}
//(nombre de la base de datos, $enlace) mysql_select_db("RelocaDB",$link);
//capturando datos
$codigo_casa = $_REQUEST["codigo-casa"];
$contraseña = $_REQUEST["contraseña"];
//$contraseña2 = md5($contraseña);

$id_reciclador =$_SESSION["id_reciclador"];


//consulta SQL
$sql = "select * from ruta where id_reciclador = '".$id_reciclador."' && codigo_casa = '".$codigo_casa."' ";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($result);


if($row != null){
    
    $sql2 = "select * from casa where codigo_casa = '".$codigo_casa."' ";
    $result2 = mysqli_query($conn, $sql2);
    $row2 = mysqli_fetch_array($result2);
    $contraseña_dueño = $row2["contraseña_dueño"];
    
    if($contraseña_dueño == $contraseña){
        $_SESSION["codigo_casa"] = $row2["codigo_casa"] ;
        header("location:reciclador_modificar_2.php");

    }else{
        echo "<script>alert('Contraseña incorrecta');</script>";
        echo "<script>window.location.href='reciclador_modificar_1.php'</script>";
    }

}else{
    echo "<script>alert('Código de casa incorrecto');</script>";
    echo "<script>window.location.href='reciclador_modificar_1.php'</script>";
}


mysqli_close($conn);
//Mensaje de conformidad


?>