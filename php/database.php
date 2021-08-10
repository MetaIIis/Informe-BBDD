<?php
	
function connectBD(){
	$server = 'magallanes.inf.unap.cl';
    $port = '5432';
    $username = 'jvera';
    $password = 'nzKRRJmy';
    $database = 'jvera';

    try {
      $conexion = pg_connect("host=$server port=$port dbname=$database user=$username password=$password");
    } catch (PDOException $e) {
      die('Connection Failed: ' . $e->getMessage());
    }
	
}

?>
