<?php 

include_once 'config.php';
include_once 'conexion.php';
include_once 'Usuario.php';
include_once 'RepositorioUsuario.php';
include_once 'ValidadorRegistro.php';

Conexion::abrirConexion();

$validador = new ValidadorRegistro($_POST['usuario'], $_POST['email'], htmlspecialchars($_POST['password1']), htmlspecialchars($_POST['password2']), Conexion::obtenerConexion());

if ($validador->RegistroValido()) {
	

	$usuario = new Usuario('', $validador->obtenerNombre(), $validador->obtenerEmail(), password_hash($validador->obtenerPassword(), PASSWORD_DEFAULT), '1');

	$insertar_usuario = RepositorioUsuario::insertarUsuario(Conexion::obtenerConexion(), $usuario);

	if ($insertar_usuario) {
		
		echo " Ususario creado correctamente";
		echo "<script language='JavaScript'>";
                    echo "location = '../php/login.php'";
                    echo "</script>";
	}
	else{
		echo 'Hubo un error al crear su cuenta intente nuevamente';
	}
}
else{

	$error = array(
		'error en Nombre' => $validador->obtenerErrorNombre(),
		'error en Email'  => $validador->obtenerErrorEmail(),
		'error en contrase&ntilde;a'  => $validador->obtenerErrorPassword1(),
		'error en confirmarcontrse&ntilde;a'  => $validador->obtenerErrorPassword2()
	);

	echo json_encode($error);
}

Conexion::cerrarConexion();

?>