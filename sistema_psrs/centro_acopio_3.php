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
          <form class="form-container-popup-estado" action="./actualizar_estado.php" method="POST">
            <p class="popup-title">Registro de estado</p>
            <div class="container-input-estado">
                <div class="input-estado">
                    <label for="estado" class="label-estado label-estado-align">Estado</label>
                    <div class="select-estado">
                        <select class="estado" required id=estado name="estado">
                            <option value="0">Seleccione una opción</option>
                            <option value="1">Sin entregar</option>
                            <option value="2">Completo</option>
                            <option value="3">Incompleto</option>
                            </select>
                    </div>
                </div>
                <div class="input-estado">
                    <label for="comentario" class="label-estado">Comentario</label>
                    <textarea name="comentario" id="comentario"
                     class="select-estado textarea-estado"></textarea>
                </div>
            </div>
            <div class="container-boton-secundario">
                <input type="submit" class="boton-secundario" value="Guardar">
            </div>
          </form>

        </div>
    </div>
</body>
</html>