<?php
session_start();

include 'conectar.php';

if (!$conn) {
    die("Error de conexion: " . mysqli_connect_error());
}

$sql = "select * from precio";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($result);

$_SESSION["precio_papel"] = $row["precio_papel"];
$_SESSION["precio_carton"] = $row["precio_carton"];
$_SESSION["precio_vidrio"] = $row["precio_vidrio"];
$_SESSION["precio_plastico"] = $row["precio_plastico"];

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="mystyle.css">
</head>
<body>
  <div class="principal">
        <nav>
          <div class="navbar-left">
            <ul>
              <li class="navbar-icon">
                <img src="iconos/logo_psrs.png" alt="logo_psrs">
              </li>
              <li class="navbar-title">PSRS</li>
            </ul>
          </div>
          <div class="navbar-right">
            <ul>
              <li class="navbar-welcome">Bienvenido(a), <?php echo $_SESSION["nombre"]; ?> </li>
              <li class="navbar-signout">
                <a href="index.html">Cerrar sesión</a>
              </li>
            </ul>
          </div>
        </nav>
        <div class="container">
          <div class="panel-container">
            <div class="card-container">
              <a href="reciclador_registrar_1.php" class="card card-color-registrar">
                <img src="./iconos/registrar.png" alt="icono_registrar">
                <p>Registrar</p>
              </a> 

              <a href="reciclador_modificar_1.php" class="card card-color-modificar">
                <img src="./iconos/modificar.png" alt="icono_registrar">
                <p>Modificar</p>
              </a> 
            </div>
            <div class="card-container">
              <a href="reciclador_buscar_1.php" class="card card-color-buscar">
                <img src="./iconos/buscar.png" alt="icono_registrar">
                <p>Buscar</p>
              </a> 
              <a href="reciclador_mostrar_1.php" class="card card-color-mostrar">
                <img src="./iconos/mostrar.png" alt="icono_registrar">
                <p>Mostrar</p>
              </a> 
            </div>
          </div>
        </div>
  </div>
</body>
</html>