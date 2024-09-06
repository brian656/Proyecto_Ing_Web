<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="mystyle.css">
    <link
      href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;500;700&display=swap"
      rel="stylesheet"
    />
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
                <li class="navbar-welcome">Hola, <?php echo $_SESSION["nombre"]; ?> </li>
                <li class="navbar-signout">
                  <a href="./index.html">Cerrar sesión</a>
                </li>
              </ul>
            </div>

        </nav>
        <div class="container">


        <?php

          //conexion a la Base de datos (Servidor,usuario,contraseña)
          include 'conectar.php';
          
          if (!$conn) {
          die("Error de conexion: " . mysqli_connect_error());
          }
          //(nombre de la base de datos, $enlace) mysql_select_db("Relocadb",$link);
          //capturando datos
          $dni = $_REQUEST['dni'];
          $nombre = $_REQUEST['nombre'];
          $apellido = $_REQUEST['apellido'];
          $contraseña = $_REQUEST['contraseña'];
          $rol = $_REQUEST['rol'];
          $contraseña_md5 = md5($contraseña);
          //consulta SQL
          

          $sql = "INSERT INTO persona (nombre, apellido) ";
          $sql .= "VALUES ('$nombre', '$apellido')";

          if (mysqli_query($conn, $sql)) {
          
            $sql2 = "SELECT * FROM persona WHERE nombre ='".$nombre."'";
            $result = mysqli_query($conn, $sql2);
            $num_resultados = mysqli_num_rows($result);
            $row = mysqli_fetch_array($result);
            $id_persona = $row["id_persona"];                        

            $sql3 = "INSERT INTO usuario (dni, contraseña, id_rol, id_persona) ";
            $sql3 .= "VALUES ('$dni', '$contraseña_md5', '$rol', '$id_persona')";
            mysqli_query($conn, $sql3);

              
            if($rol == 3){
              $sql4 = "SELECT * FROM usuario WHERE dni ='".$dni."'";
              $result2 = mysqli_query($conn, $sql4);
              $num_resultados2 = mysqli_num_rows($result2);
              $row2 = mysqli_fetch_array($result2);
              $id_usuario = $row2["id_usuario"]; 

              $sql5 = "INSERT INTO reciclador (id_usuario) ";
              $sql5 .= "VALUES ('$id_usuario')";
              mysqli_query($conn, $sql5);
            }
      

            echo "<div class='form-container-popup'>
                    <img src='./iconos/check.png' alt='icono_check'>
                    <p class='popup-text'>Cuenta creada con éxito</p>
                    <a href='./panel_administrador.php' class='boton-secundario'>Aceptar</a>
                  </div>";

            
          
          } else {
          echo "Error: " . $sql . "<br>" . mysqli_error($conn);
          }

          mysqli_close($conn);
          //Mensaje de conformidad
        ?>

        </div>
    </div>
</body>
</html>