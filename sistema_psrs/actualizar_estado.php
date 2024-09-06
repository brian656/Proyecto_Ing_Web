<?php
                session_start();

                //conexion a la Base de datos (Servidor,usuario,password)
                include 'conectar.php';
                
                if (!$conn) {
                die("Error de conexion: " . mysqli_connect_error());
                }
                //(nombre de la base de datos, $enlace) mysql_select_db("Relocadb",$link);
                //capturando datos
                $estado = $_REQUEST['estado'];
                $comentario = $_REQUEST['comentario'];
                
                $id_regitro=$_SESSION["id_registro"];
                //consulta SQL
                
                $sql = "UPDATE registro SET id_estado='$estado', descripcion='$comentario' WHERE id_registro='$id_regitro'";

                if (mysqli_query($conn, $sql)) {
                    header("location:centro_acopio_2.php");
                    
                } else {
                  echo "Error updating record: " . mysqli_error($conn);
                }


                mysqli_close($conn);
                //Mensaje de conformidad
?>