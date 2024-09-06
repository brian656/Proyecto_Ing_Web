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

          <div class="form-container-registrar-2">
            <h1 class="title">Modificar material reciclable</h1>
            <form name="login" action="./reciclador_modificar_3.php" class="form" method="POST">
                
                <div class="container-input-2">
                    <label for="codigo-casa" 
                    class="label-registrar-2">Código de casa
                    </label>
                    <input type="text" 
                    id="codigo-casa"
                    name="codigo-casa" 
                    pattern="[0-9]{8}" 
                    maxlength="8"
                    class="input-registrar-2"
                    placeholder=<?php echo $_SESSION["codigo_casa"]; ?> disabled>
                </div>

                <div class="container-table">
                  <div class="table-fila">
                    <p class="celda-size">Tipo</p>
                    <div class="celda-size">
                      <p>Precio x kg</p>
                      <p>(S/.)</p>
                    </div>
                    <div class="celda-size">
                      <p>Peso</p>
                      <p>(kg)</p>
                    </div>
                    <!--
                    <div class="celda-size">
                      <p>Total</p>
                      <p>(S/.)</p>
                    </div>
                    -->
                  </div>  
                  <div class="table-fila">
                    <p class="celda-size">Papel</p>
                    <input type="text" name="" id="" class="celda-size" placeholder=<?php echo $_SESSION["precio_papel"]; ?> disabled>
                    <input type="text" name="papel" id="papel" class="celda-size" required>
                    <!-- <input type="text" name="" id="" class="celda-size" placeholder="lectura" disabled> -->
                  </div>
                  <div class="table-fila">
                    <p class="celda-size">Cartón</p>
                    <input type="text" name="" id="" class="celda-size" placeholder=<?php echo $_SESSION["precio_carton"]; ?> disabled>
                    <input type="text" name="carton" id="carton" class="celda-size" >
                    <!-- <input type="text" name="" id="" class="celda-size" placeholder="lectura" disabled> -->
                  </div>
                  <div class="table-fila">
                    <p class="celda-size">Vidrio</p>
                    <input type="text" name="" id="" class="celda-size" placeholder=<?php echo $_SESSION["precio_vidrio"]; ?> disabled>
                    <input type="text" name="vidrio" id="vidrio" class="celda-size" >
                    <!-- <input type="text" name="" id="" class="celda-size" placeholder="lectura" disabled> -->
                  </div>
                  <div class="table-fila fila-final">
                    <p class="celda-size">Plástico</p>
                    <input type="text" name="" id="" class="celda-size" placeholder=<?php echo $_SESSION["precio_plastico"]; ?> disabled>
                    <input type="text" name="plastico" id="plastico" class="celda-size" >
                    <!-- <input type="text" name="" id="" class="celda-size" placeholder="lectura" disabled> -->
                  </div>
                  
                </div>
                
                <!--
                <div class="container-input-2">
                    <label for="contraseña" 
                    class="label-registrar-2">Monto total</label>
                    <input type="text" 
                    id="contraseña"
                    name="contraseña" 
                    class="input-registrar-2" placeholder="lectura" disabled>
                </div>
                -->
                <div class="container-boton">
                    <input type="submit" name="submit" 
                    value="Cancelar" 
                    class="boton-principal boton-registrar"
                    formnovalidate
                    formaction="./reciclador_modificar_1.php">

                    <input type="submit" name="submit" 
                    value="Registrar" 
                    class="boton-principal boton-registrar">
                </div>

            </form>
          </div>



        </div>
    </div>
</body>
</html>
