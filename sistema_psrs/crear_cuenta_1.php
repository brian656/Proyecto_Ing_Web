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

          <div class="form-container-registrar">
            <h1 class="title">Crear cuenta</h1>
            <form name="login" action="./crear_cuenta_2.php" class="form" method="POST">
                
                <div class="container-input">
                    <label for="dni" 
                    class="label-registrar">DNI
                    </label>
                    <input type="text" 
                    id="dni"
                    name="dni" 
                    pattern="[0-9]{8}" 
                    maxlength="8"
                    class="input-registrar" required>
                </div>

                <div class="container-input">
                    <label for="nombre" 
                    class="label-registrar">Nombre
                    </label>
                    <input type="text" 
                    id="nombre"
                    name="nombre" 
                    pattern="[a-z,A-Z]{0-20}" 
                    class="input-registrar" required>
                </div>

                <div class="container-input">
                    <label for="apellido" 
                    class="label-registrar">Apellido
                    </label>
                    <input type="text" 
                    id="apellido"
                    name="apellido" 
                    pattern="[a-z,A-Z]{0-20}" 
                    class="input-registrar" required>
                </div>

                <div class="container-input">
                    <label for="contraseña" 
                    class="label-registrar">Contraseña</label>
                    <input type="password" 
                    id="contraseña"
                    name="contraseña" 
                    class="input-registrar" required>
                </div>

                <div class="container-input">
                    <label for="rol" 
                    class="label-registrar">Rol
                    </label>

                    <select class="input-registrar boton-select" required id=rol name="rol">
                      <option value=0>Seleccione una opción</option>
                      <option value=1> Administrador</option>
                      <option value=2> Centro de acopio</option>
                      <option value=3> Reciclador</option>
                    </select>

                </div>

                <div class="container-boton">
                    <input type="submit" name="submit" 
                    value="Cancelar" 
                    class="boton-principal boton-registrar"
                    formnovalidate
                    formaction="./panel_administrador.php">

                    <input type="submit" name="submit" 
                    value="Crear cuenta" 
                    class="boton-principal boton-registrar">
                </div>

            </form>
          </div>

        </div>
    </div>
</body>
</html>
