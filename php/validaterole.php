<?php
include_once 'config.php';
include_once 'conexion.php';
include_once 'Usuario.php';
include_once 'RepositorioUsuario.php';
include_once 'ValidadorLogin.php';

Conexion::abrirConexion();
$validador = new ValidadorRegistro($_POST['usuario'], $_POST['email'], Conexion::obtenerConexion());
if ($validador->obtenerError() === "" && !is_null($validador->obtenerUsuario())) {
    $ussname = $validador->obtenerEmail();

$consulta= "SELECT usu_id, usu_nombre, usu_password, usu_estado, usu_email, rol
FROM public.usuarios WHERE rol = 1 and usu_email = '$ussname';";


$consultadd= "SELECT usu_id, usu_nombre, usu_password, usu_estado, usu_email, rol
FROM public.usuarios WHERE rol = 2 and usu_email = '$ussname';";
}
if($consulta == 1){ 
    header("location:cliente.php");

}else if($consultadd == 1){ 
    header("location:admin.php");
}else{
    echo "<script language='JavaScript'>";
    echo "location = '#'";
    echo "</script>"; 
    echo "ERROR EN LA AUTENTIFICACION";
}

?>