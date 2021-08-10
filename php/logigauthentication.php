<?php
    include_once "database.php";
    
    session_start();

	if(isset($_GET["cerrar sesion"])){
        session_unset();
		session_destroy();
	}

    if(isset($_SESSION['rol'])){
		switch($_SESSION['rol']){
			case 1:
				echo "<script language='JavaScript'>";
                    echo "location = '../php/cliente.php'";
                    echo "</script>"; 

			case 2:
				echo "<script language='JavaScript'>";
                    echo "location = '../php/cliente.php'";
                    echo "</script>"; 
			default;	

		}
	}

	if( isset($_POST["username"]) && isset($_POST["password"])){

		$username = $_POST["username"];
		$password = $_POST["password"];

		$dbco = new Database();
		$query = $dbco-> connect()->prepare("SELECT*FROM ususarios WHERE username = :usu_nombre AND password = :usu_password");
		$query -> execute(["username" => $username, "password" => $password]);
		$row = $query ->fetch(PDO::FETCH_NUM);
		if($row == true){
			echo "Rol validado, bienvenido.";
			$rol = $row[3];
			$_SESSION["rol"] = $rol;

			switch($_SESSION['rol']){
                case 1:
                    echo "<script language='JavaScript'>";
                    echo "location = '../php/cliente.php'";
                    echo "</script>"; 
                    break;
    
                case 2:
                    echo "<script language='JavaScript'>";
                    echo "location = '../php/admin.php'";
                    echo "</script>"; 
                    break;
                default;	
    
            }

		}else{
			echo "usuario o contraseña incorrectos.";
		}


	}



?>