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

          <div class="form-container-mostrar-2">
            <h1 class="title">Registro de estado de verificación</h1>
            <form name="login" action="centro_acopio_3.php" class="form" method="POST">
                
                <div class="container-input-4">
                    <label for="codigo-casa" 
                    class="label-registrar-3">Código de reciclador
                    </label>
                    <input type="text" 
                    id="codigo-casa"
                    name="codigo-casa" 
                    pattern="[0-9]{8}" 
                    maxlength="8"
                    class="input-registrar-3" 
                    placeholder=<?php echo $_SESSION["dni_reciclador"]; ?> disabled>
                </div>

                <div class="container-table-lista">
                    <table>
                      <thead>
                        <tr>
                          <th rowspan="2" class="table-cabecera-codigo-2" >Código de casa</th> 
                          <th rowspan="2" class="table-cabecera-fecha-2" >Fecha</th>
                          <th colspan="4" class="table-cabecera-tipo-2">Tipo de residuo</th>
                          <th rowspan="2" class="table-cabecera-estado" >Estado</th>
                        </tr>
                        <tr class="tipo-material-3">
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
                        //conuslta SQL
                        
                        $sql3 = "select * from usuario where dni ='".$_SESSION["dni_reciclador"]."'";
                        $result3 = mysqli_query($conn, $sql3);
                        $row3 = mysqli_fetch_array($result3);
                        $id_usuario = $row3["id_usuario"];

                        $sql4 = "select * from reciclador where id_usuario ='".$id_usuario."'";
                        $result4 = mysqli_query($conn, $sql4);
                        $row4 = mysqli_fetch_array($result4);
                        $id_reciclador = $row4["id_reciclador"];


                        $sql2 = "select * from registro where id_reciclador ='".$id_reciclador."'";
                        $result2 = mysqli_query($conn, $sql2);
                        //cuantos reultados hay en la busqueda
                        $num_resultados = mysqli_num_rows($result2);
                        //echo "<p>Total de citas: ".$num_resultados."</p>";
                        //mostrando informacion de los perros y detalle
                        
                        for ($i=0; $i <$num_resultados; $i++) {
                        $row2 = mysqli_fetch_array($result2);

                        $id_casa = $row2["id_casa"];
                        $sql = "select * from casa where id_casa ='".$id_casa."'";
                        $result = mysqli_query($conn, $sql);
                        $row = mysqli_fetch_array($result);
              
                        echo '<tr>  
                                    <td>'.$row["codigo_casa"].'</td>           
                                    <td>'.$row2["fecha"].'</td> 
                                    <td>'.$row2["peso_papel"].'</td> 
                                    <td>'.$row2["peso_carton"].'</td> 
                                    <td>'.$row2["peso_vidrio"].'</td> 
                                    <td>'.$row2["peso_plastico"].'</td> 
                                    <td><a href="centro_acopio_3.php?id_registro='.$row2["id_registro"].'&id_estado='.$row2["id_estado"].'"><img src="./iconos/edit.png" alt="icono_editar" title="Editar" ></a></td>
                            </tr>';

                            $_SESSION["id_registro"] = $row2["id_registro"];
                        }


                      ?>
              
                      </tbody>
                      
                    </table>
                </div>

                <div class="container-boton">
                    <input type="submit" name="submit" 
                    value="Regresar" 
                    class="boton-principal boton-registrar-4">
                </div>

            </form>
          </div>

        </div>
    </div>
</body>
</html>