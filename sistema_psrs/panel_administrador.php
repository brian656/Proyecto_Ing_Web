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
                <li class="navbar-welcome">Bienvenido(a), <?php echo $_SESSION["nombre"]; ?> </li>
                <li class="navbar-signout">
                  <a href="./index.html">Cerrar sesión</a>
                </li>
              </ul>
            </div>
            
        </nav>
        <div class="navbar-crear-usuario">
          <a href="crear_cuenta_1.php" class="boton-crear-usuario"><img src="./iconos/plus.png" alt="icono_agregar"> Crear nuevo usuario</a>
        </div>


        <div class="container">

          <div class="form-container-buscar">
            <h1 class="title">Reporte</h1>
            <form name="login" action="<?php echo $_SERVER['PHP_SELF'];?>" class="form" method="POST">
                
                <div class="container-input">
                    <label for="opcion" 
                      class="label-titulo">Seleccione una opción
                    </label>
                </div>

                <div class="container-fecha">
                  <label>
                    <input class="input-radio" type="radio" name="name" value="fecha">Fecha de registro
                    <input class="input-date" type="date" name="input_fecha" >
                  </label>
                </div>

                <div class="container-fecha">
                  <label>
                    <input class="input-radio" type="radio" name="name" value="estado">Estado
                    <select class="boton-select input-date"  id=estado name="id_estado">
                      <option value=0>Seleccione una opción</option>
                      <option value=1> Sin entregar</option>
                      <option value=2> Completo</option>
                      <option value=3> Incompleto</option>
                      </select>
                  </label>
                </div>             

                <div class="container-boton">
                    <input type="submit" name="submit" 
                    value="Buscar" 
                    class="boton-principal boton-registrar">
                </div>

            </form>


          <?php
            
            if ($_SERVER["REQUEST_METHOD"] == "POST") {
              // collect value of input field
              $vardefinida = isset($_POST['name']);
              if($vardefinida == 1){
                $name = $_POST['name'];
                
                if($name == "fecha"){       
                  
                  $input_fecha = $_POST['input_fecha'];
                
                  //conexion a la Base de datos (Servidor,usuario,password)
                  //(nombre de la base de datos, $enlace) mysql_select_db("RelocaDB",$link);
                  include 'conectar.php';

                  if (!$conn) {
                  die("Error de conexion: " . mysqli_connect_error());
                  }
                  
                  $sql = "SELECT r.fecha, c.codigo_casa, r.peso_papel, r.peso_carton, r.peso_vidrio, r.peso_plastico, (r.peso_papel+r.peso_carton+r.peso_vidrio+r.peso_plastico) as peso_total FROM registro r INNER JOIN casa c ON c.id_casa=r.id_casa WHERE r.fecha ='".$input_fecha."'";
                  $result = mysqli_query($conn, $sql);
                  
                  $num_resultados = mysqli_num_rows($result);
                  //echo "<p>Total de perros con raza ".$nombre_raza.": ".$num_resultados."</p>";
                  
                  
                  echo "<div class='container-table-lista'>
                  <table>
                    <thead>
                      <tr>
                        <th rowspan='2' class='table-cabecera-fecha-5' >Fecha</th>
                        <th rowspan='2' class='table-cabecera-codigo-5' >Código de casa</th> 
                        <th colspan='4' class='table-cabecera-tipo-5'>Tipo de residuo</th>
                        <th rowspan='2' class='table-cabecera-peso' >Peso total</th>

                      </tr>
                      <tr class='tipo-material-5'>
                        <th>Papel</th>
                        <th>Cartón</th>
                        <th>Vidrio</th>
                        <th>Plástico</th>
                      </tr>
                    </thead>
                    <tbody>";


                  
                  for ($i=0; $i <$num_resultados; $i++) {
                    $row = mysqli_fetch_array($result); 
                    
                    echo '<tr>  
                    <td>'.$row["fecha"].'</td>           
                    <td>'.$row["codigo_casa"].'</td> 
                    <td>'.$row["peso_papel"].'</td> 
                    <td>'.$row["peso_carton"].'</td> 
                    <td>'.$row["peso_vidrio"].'</td> 
                    <td>'.$row["peso_plastico"].'</td> 
                    <td>'.$row["peso_total"].'</td>
                         </tr>';
                  }


                  
                  echo "
                    </tbody>
                    
                   </table>
                </div>
                  ";


                }else if($name == "estado"){
                  
                  $id_estado = $_POST['id_estado'];
                  
                  //conexion a la Base de datos (Servidor,usuario,password)
                  //(nombre de la base de datos, $enlace) mysql_select_db("RelocaDB",$link);
                  include 'conectar.php';

                  if (!$conn) {
                  die("Error de conexion: " . mysqli_connect_error());
                  }
                  
                  


                  $sql = "SELECT u.dni, c.codigo_casa, e.nombre, r.descripcion FROM registro r INNER JOIN estado e ON e.id_estado = r.id_estado INNER JOIN casa c ON c.id_casa=r.id_casa INNER JOIN reciclador re ON re.id_reciclador=r.id_reciclador INNER JOIN usuario u ON u.id_usuario=re.id_usuario 
                  WHERE r.id_estado = '".$id_estado."'";

                  $result = mysqli_query($conn, $sql);
                  $num_resultados = mysqli_num_rows($result);
                  
                  //echo "<p>Total de citas con DNI ".$dni_perro.": ".$num_resultados."</p>";
                  
                  echo "<div class='container-table-lista'>
                  <table>
                    <thead>
                      <tr>
                        <th rowspan='2' class='table-cabecera-codigo-2' >Código de reciclador</th> 
                        <th rowspan='2' class='table-cabecera-fecha-2' >Código de casa</th>
                        <th rowspan='2' class='table-cabecera-codigo-2' >Estado</th> 
                        <th rowspan='2' class='table-cabecera-fecha-2' >Comentario</th>
                      </tr>
                    </thead>
                    <tbody>
                      ";
                    
                  


                  for ($i=0; $i <$num_resultados; $i++) {
                    $row = mysqli_fetch_array($result); 
                    echo '<tr>  
                    <td>'.$row["dni"].'</td>           
                    <td>'.$row["codigo_casa"].'</td> 
                    <td>'.$row["nombre"].'</td> 
                    <td>'.$row["descripcion"].'</td> 
                         </tr>';
                    

                  }
                  echo "    </tbody>
                        
                      </table>
                  </div>
                  ";
                }

              }
                 
         
            }  

 
          ?>






          </div>

        </div>
    </div>
</body>
</html>
