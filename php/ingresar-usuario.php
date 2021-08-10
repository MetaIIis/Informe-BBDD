<?php 

include_once 'config.php';
include_once 'conexion.php';
include_once 'Usuario.php';
include_once 'RepositorioUsuario.php';
include_once 'ValidadorLogin.php';

Conexion::abrirConexion();

$validador = new ValidadorLogin($_POST['email'], $_POST['password'], Conexion::obtenerConexion());

if ($validador->obtenerError() === "" && !is_null($validador->obtenerUsuario())) {


	$ussname = $validador->obtenerUsuario();
	$usstring = $validador->__EtoString();
	echo strval($usstring);

	$consulta= "SELECT usu_id, usu_nombre, usu_password, usu_estado, usu_email, rol
    FROM public.usuarios WHERE rol = 1 and usu_email = '$usstring';";


    $consultadd= "SELECT usu_id, usu_nombre, usu_password, usu_estado, usu_email, rol
    FROM public.usuarios WHERE rol = 2 and usu_email = '$usstring';";

	if($consulta == 1){
		echo "Sesión iniciada";
	  echo "<script language='JavaScript'>";
            echo "location = '../php/cliente.php'";
            echo "</script>"; 
	}elseif ($consultadd == 1) {

		echo "Sesión iniciada";
	  echo "<script language='JavaScript'>";
            echo "location = '../php/admin.php'";
            echo "</script>"; 
	}else{
		echo $validador->obtenerError();
	}
}
else{
	echo $validador->obtenerError();
}

Conexion::cerrarConexion();

?>