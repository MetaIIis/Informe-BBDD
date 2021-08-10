<!DOCTYPE html>
<html>
<head>
	<title>Registro ekonuba</title>

	<meta charset="utf-8">

	<meta http-equiv="X-UA-Compatible" content="IE-edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" href="../css/bootstrap.min.css">

	<link rel="stylesheet" href="../css/bootstrap-theme.min.css">

	<link rel="stylesheet" type="text/css" href="../css/estilos.css">
    <link rel="shortcut icon" type="image/png" href="../Imagenes/More.jpg">
</head>
<body>

<div class="container" id='login'>
	<div class="panel panel-primary">
		<div class="panel-heading text-center">
			<h2>Registro</h2>
		</div>
		<form method="POST" action="registro-usuario.php">
			<div class="panel-body">
				
				<h4>Usuario: </h4>
				<input type="text" class="form-control" name="usuario" placeholder="usuario"><br>
				<h4>Email: </h4>
				<input type="email" class="form-control" name="email" placeholder="email"><br>
				<h4>Contraseña: </h4>
				<input type="password" class="form-control" name="password1" placeholder="contraseña">
				<h4>Repite Contraseña: </h4>
				<input type="password" class="form-control" name="password2" placeholder="contraseña">
			</div>
			<div class="panel-footer">
				<button type="submit" class="btn btn-primary">Registrar</button>
				<button type="button" onclick="window.location.href = 'login.php'" class="btn btn-default">O inicia sesion (´°ω°｀)</button>
			</div>
		</form>
	</div>
</div>

</body>
</html>