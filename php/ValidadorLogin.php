<?php 

class ValidadorLogin {

	private $usuario;
	private $error;

	public function __construct($email, $password, $conexion){

		$this->error = "";

		if (!$this->variable_iniciada($email) || !$this->variable_iniciada($password)) {
			
			$this->usuario = null;
			$this->error = "Sus datos ingresados no son correctos";
		}
		else{

			$this->usuario = RepositorioUsuario::obtenerUsuarioPorEmail($email, $conexion);

			if (is_null($this->usuario) || !password_verify($password, $this->usuario->obtenerPassword())) {
				
				$this->error = "Datos Incorrectos";
				echo "<script language='JavaScript'>";
                    echo "location = '../php/login.php'";
                    echo "</script>"; 
				
				
			}

		}
	}
	private function variable_iniciada($variable){
		if (!isset($variable) || empty($variable)) {
			
			return false;
		}
		else{
			return true;
		}
	}

	public function obtenerUsuario(){
		return $this->usuario;
	}

	public function obtenerError(){
		return $this->error;
	}

	public function __EtoString() {
		return "$this->email";
	}

}

?>