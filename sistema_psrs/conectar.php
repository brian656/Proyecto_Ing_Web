<?php
   
   $conn = mysqli_connect("localhost", "root","", "psrsdb");
   

   /*
   $conn = mysqli_init();
   mysqli_ssl_set($conn,NULL,NULL, "/var/www/html/BaltimoreCyberTrustRoot.crt.pem", NULL, NULL);
   mysqli_real_connect($conn, 'psrs-server.mysql.database.azure.com', 'psrsadmin@psrs-server', 'SistemasDistribuidos2022-1', 'psrsdb', 3306, MYSQLI_CLIENT_SSL);
   var_dump(mysqli_real_connect($conn, 'psrs-server.mysql.database.azure.com', 'psrsadmin@psrs-server', 'SistemasDistribuidos2022-1', 'psrsdb', 3306, MYSQLI_CLIENT_SSL));
   if (mysqli_connect_errno($conn)) {
   die('Failed to connect to MySQL: '.mysqli_connect_error());
   }
   */

?>