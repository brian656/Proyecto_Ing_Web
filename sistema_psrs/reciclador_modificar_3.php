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
          
          //conexion a la Base de datos (Servidor,usuario,password)
          include 'conectar.php';

          if (!$conn) {
              die("Error de conexion: " . mysqli_connect_error());
          }
          //(nombre de la base de datos, $enlace) mysql_select_db("RelocaDB",$link);
          //capturando datos

          $peso_papel_nuevo = $_REQUEST["papel"];
          $peso_carton_nuevo = $_REQUEST["carton"];
          $peso_vidrio_nuevo = $_REQUEST["vidrio"];
          $peso_plastico_nuevo = $_REQUEST["plastico"];

          $precio_papel = $_SESSION["precio_papel"];
          $precio_carton = $_SESSION["precio_carton"];
          $precio_vidrio = $_SESSION["precio_vidrio"];
          $precio_plastico = $_SESSION["precio_plastico"];

          $total_papel_nuevo = $peso_papel_nuevo*$precio_papel;
          $total_carton_nuevo = $peso_carton_nuevo*$precio_carton;
          $total_vidrio_nuevo = $peso_vidrio_nuevo*$precio_vidrio;
          $total_plastico_nuevo = $peso_plastico_nuevo*$precio_plastico;

          $monto_total_nuevo = $total_papel_nuevo+$total_carton_nuevo+$total_vidrio_nuevo+$total_plastico_nuevo;
    
          $id_reciclador =$_SESSION["id_reciclador"];
          $id_casa = $_SESSION["id_casa"];
          

          $sql = "UPDATE registro SET peso_papel = '".$peso_papel_nuevo."', peso_carton = '".$peso_carton_nuevo."' , peso_vidrio = '".$peso_vidrio_nuevo."', peso_plastico = '".$peso_plastico_nuevo."', monto_total = '".$monto_total_nuevo."' WHERE id_reciclador= '".$id_reciclador."' && id_casa= '".$id_casa."' ";

          if (mysqli_query($conn, $sql)) {
          
            echo "<div class='form-container-popup'>
                    <img src='./iconos/check.png' alt='icono_check'>
                    <p class='popup-text'>Registro modificado con éxito</p>
                    <a href='./panel_reciclador.php' class='boton-secundario'>Aceptar</a>
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