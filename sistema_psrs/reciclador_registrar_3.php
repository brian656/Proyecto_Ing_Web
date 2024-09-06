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

          $id_reciclador =$_SESSION["id_reciclador"];
          
          $codigo_casa = $_SESSION["codigo_casa"];
          $sql2 = "select * from casa where codigo_casa = '".$codigo_casa."'";
          $result2 = mysqli_query($conn, $sql2);
          $row2 = mysqli_fetch_array($result2);
          $id_casa = $row2["id_casa"];

          $peso_papel = $_REQUEST["papel"];
          $peso_carton = $_REQUEST["carton"];
          $peso_vidrio = $_REQUEST["vidrio"];
          $peso_plastico = $_REQUEST["plastico"];

          $precio_papel = $_SESSION["precio_papel"];
          $precio_carton = $_SESSION["precio_carton"];
          $precio_vidrio = $_SESSION["precio_vidrio"];
          $precio_plastico = $_SESSION["precio_plastico"];

          $total_papel = $peso_papel*$precio_papel;
          $total_carton = $peso_carton*$precio_carton;
          $total_vidrio = $peso_vidrio*$precio_vidrio;
          $total_plastico = $peso_plastico*$precio_plastico;

          $monto_total = $total_papel+$total_carton+$total_vidrio+$total_plastico;

          $id_estado = 0; 
          $descripcion = "ninguno";


          $sql = "INSERT INTO registro (id_reciclador, id_casa, fecha, peso_papel, peso_carton, peso_vidrio, peso_plastico, monto_total, id_estado, descripcion) ";
          $sql .= "VALUES ('$id_reciclador', '$id_casa', current_date(), '$peso_papel', '$peso_carton', '$peso_vidrio', '$peso_plastico', '$monto_total', '$id_estado', '$descripcion' )";

          if (mysqli_query($conn, $sql)) {
          
            echo "<div class='form-container-popup'>
                    <img src='./iconos/check.png' alt='icono_check'>
                    <p class='popup-text'>Registro exitoso</p>
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
