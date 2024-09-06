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

          <div class="form-container-buscar">
            <h1 class="title">Lista de material reciclable</h1>
            <form name="login" action="./panel_reciclador.php" class="form" method="POST">
                
                <div class="container-input-3">
                    <label for="codigo-casa" 
                    class="label-registrar-3">Código de casa
                    </label>
                    <input type="text" 
                    id="codigo-casa"
                    name="codigo-casa" 
                    pattern="[0-9]{8}" 
                    maxlength="8"
                    class="input-registrar-3" 
                    placeholder=<?php echo $_SESSION["codigo_casa"]; ?> disabled>
                </div>
                
                <div class="container-table-lista">
                    <table>
                      <thead>
                        <tr>
                          <th rowspan="2" >Fecha</th>
                          <th colspan="4">Tipo de residuo</th>
                        </tr>
                        <tr class="tipo-material">
                          <th>Papel</th>
                          <th>Cartón</th>
                          <th>Vidrio</th>
                          <th>Plástico</th>
                        </tr>
                      </thead>
                      <tbody>

                <?php
                        //conexion a la Base de datos (Servidor,usuario,password)
                        include 'conectar.php';

                        if (!$conn) {
                        die("Error de conexion: " . mysqli_connect_error());
                        }
                        //(nombre de la base de datos, $enlace) mysql_select_db("RelocaDB",$link);
                        //capturando datos
                        $_SESSION["codigo_casa"];
                        //conuslta SQL
                        
                        $sql = "select * from casa where codigo_casa ='".$_SESSION["codigo_casa"]."'";
                        $result = mysqli_query($conn, $sql);
                        $row = mysqli_fetch_array($result);
                        $id_casa = $row["id_casa"];

                        $sql2 = "select * from registro where id_casa ='".$id_casa."'";
                        $result2 = mysqli_query($conn, $sql2);
                        //cuantos reultados hay en la busqueda
                        $num_resultados = mysqli_num_rows($result2);
                        //echo "<p>Total de citas: ".$num_resultados."</p>";
                        //mostrando informacion de los perros y detalle
                        
                        for ($i=0; $i <$num_resultados; $i++) {
                        $row2 = mysqli_fetch_array($result2);

                        echo '<tr>            
                                    <td>'.$row2["fecha"].'</td> 
                                    <td>'.$row2["peso_papel"].'</td> 
                                    <td>'.$row2["peso_carton"].'</td> 
                                    <td>'.$row2["peso_vidrio"].'</td> 
                                    <td>'.$row2["peso_plastico"].'</td> 
                            </tr>';
                        }


                ?>

                
                      </tbody>
                      
                    </table>
                </div>

                <div class="container-boton">
                    <input type="submit" name="submit" 
                    value="Volver a buscar" 
                    class="boton-principal boton-registrar-2"
                    formnovalidate
                    formaction="./reciclador_buscar_1.php">

                    <input type="submit" name="submit" 
                    value="Página principal" 
                    class="boton-principal boton-registrar-2">
                </div>

            </form>
          </div>

        </div>
    </div>
</body>
</html>