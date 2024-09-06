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
        <div class="container">

          <div class="form-container-registrar">
            <h1 class="title">Registro de estado de verificación</h1>
            <form name="login" action="./validar_acopio_1.php" class="form" method="POST">
                
                <div class="container-input">
                    <label for="codigo-reciclador" 
                    class="label-registrar">Código de reciclador
                    </label>
                    <input type="text" 
                    id="codigo-reciclador"
                    name="codigo-reciclador" 
                    pattern="[0-9]{8}" 
                    maxlength="8"
                    class="input-registrar" required>
                </div>

                <div class="container-boton">
                    <input type="submit" name="submit" 
                    value="Buscar" 
                    class="boton-principal boton-registrar">
                </div>

            </form>
          </div>

        </div>
    </div>
</body>
</html>
