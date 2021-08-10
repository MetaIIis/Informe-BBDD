



<!DOCTYPE html>
<html>
<head>
	<title>Login ekonuba</title>

	<meta charset="utf-8">

	<meta http-equiv="X-UA-Compatible" content="IE-edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" href="../css/bootstrap.min.css">

	<link rel="stylesheet" href="../css/bootstrap-theme.min.css">

	<link rel="stylesheet" type="text/css" href="../css/estilos.css">
	<link rel="stylesheet" type="text/css" href="../css/loginStyle.css">
    <link rel="shortcut icon" type="image/png" href="../Imagenes/More.jpg">
</head>
<body>

<div class= "loginimg">
    <div class="container" id='login'>
	    <div class="panel panel-primary">
		    <div class="panel-heading text-center">
			    <a href="../index.html"><img class="avatar" src="../Imagenes/More.jpg" alt="Logo de la clinica"></a>
			    <h2>Iniciar sesion</h2>
		    </div>
		    <form method="POST" action="../php/ingresar-usuario.php">
			    <div class="panel-body">
				
				    <h4>Email: </h4>
				    <input type="text" class="form-control" name="email" placeholder="email"><br>
				    <h4>Contraseña: </h4>
				    <input type="password" class="form-control" name="password" placeholder="contraseña">
			    </div>
			    <div class="panel-footer">
				    <button type="submit" class="btn btn-primary">Ingresar</button>
				    <button type="button" onclick="window.location.href = 'registro.php'" class="btn btn-default">o Registrate (≧▽≦)</button>
			    </div>
		    </form>
	    </div>
    </div>

</div>
</body>
</html>