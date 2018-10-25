<?php 

require_once (__DIR__ . "/../modelo/class_usuario.php");

	class Control_usuario {

		private $conn;
		private $user;

	    private $nombre_user;
	    private $email;
	    private $email_confirm;
	    private $password;
	    private $password_conf;

		public function __construct() {	

			$this->user = new Usuario();			

			if(isset($_POST['f_registrar']) || isset($_POST['f_modificar']) ){ //cuando haya un registro o un cambio de información del usuario...
				
				$this->nombre_user = $this->user->sanear_datos($_POST['f_username']);
	    		$this->email= $this->user->sanear_datos($_POST['f_email']);
	    		$this->email_confirm = $this->user->sanear_datos($_POST['f_email_confirm']);
	    		$this->password = $this->user->sanear_datos($_POST['f_password']);
	    		$this->password_conf = $this->user->sanear_datos($_POST['f_password_confirm']);

				}

			if (isset($_POST['f_iniciar'])) { // cuando el usuario inicie sesión...
				
				$this->username_email = $this->user->sanear_datos($_POST['f_username_email']);
				$this->password = $this->user->sanear_datos($_POST['f_password']);
						
			}
    
   		 }

		//función para verificar los registros.
		public function control_registro(){ //función ubicada en index.tpl.
		
			if( isset($_POST['f_registrar']) ) {

				if (self::validar_form()) { //si la función validar_form() devuelve true procederemos a hacer el ingreso en la BBDD 

					$filas = $this->user->select_registro($this->nombre_user, $this->email);

					if ($filas['Nombre_usuario'] == $this->nombre_user ) {
						echo "usuario_existente";
					             	
					}else if($filas['Email'] == $this->email) {
						echo "email_existente";

					}else{
					 	$this->user->registrar_usuario($this->nombre_user, $this->email, $this->password);
					 	echo "registro_correcto";

					}
					
				}
			}
						
			

		}

		// si las tres variables de permisos son "true" se realizará el update de los datos del usuario, llamando a una función ubicada en la clase usuarios.
		public function control_modificar(){

			if( isset($_POST['f_modificar']) ){

				if (self::validar_form()) { 

					 $resultados = $this->user->select_modificar($this->nombre_user, $this->email);

					if ( ($resultados['permiso_Email'] == true) && ($resultados["permiso_Nombre_usuario"] == true) && ($resultados["permiso_Alias"] == true)) {

						$this->user->modificar_usuario($this->nombre_user, $this->email, $this->password);
						echo "modificar_correcto";
							
						//header("Location:../index.php");	//el redirect se hace desde ajax.										 			 
 						 session_destroy();
					
					}else{

						if ($resultados['permiso_Email'] == false) {
							echo "email_existente";
						
						}

						if ( ($resultados["permiso_Nombre_usuario"] == false) || ($resultados["permiso_Alias"] == false) ) {
							echo "usuario_existente";
							
						}
						
					}

				}
						
			}
		}

		//función para verificar los login.
		public function control_login(){

			if (isset($_POST['f_iniciar'])) {
		
					if($this->user->iniciar_sesion($this->username_email, $this->password))
					{
					echo "login_correcto";	
						
						// header('location:vista/perfil.php'); //el redirect se hace desde ajax.
					}else{		
					echo "login_error";			
								            		                   	
					}	

			}
								
		}

		public function control_borrar(){

			if (isset($_POST['f_borrar'])) {

				if($this->user->borrar_usuario($_SESSION['session_usuario']) )
				{				
				echo "borrar_ok";			
				session_destroy();

				}else{
				echo "borrar_error";

				}
			
			}
		}

		public static function cerrar_session(){  
			//al clicar al enlace de cerrar sesión (ubicado en perfil.tpl), v_session recibe como valor 'off', esto nos permite crear un condicional para cerrar la sesión, si la variable esta indefinida le damos un valor por defecto para que no muestre el error.	

		    $v_session = isset($_GET['v_session']) ? $_GET["v_session"] : "default";

		    if ((!isset($_SESSION["session_usuario"]) ) || $v_session =='off') { //$v_session se recibe mediante URL en perfil.tpl.		      
		      header("Location:../index.php");
		      
		      session_start();
		   	  session_destroy();
		    }

	  	}

	  	public function mostrar_puntos_usuario(){ //Esta función se ejecuta en perfil.tpl, ya que basicamente escribe contenido HTML.

	  		$puntos = $this->user->select_puntos_usuario($_SESSION['session_usuario']);	  		
	  		echo $puntos;


    	}


		public function mostrar_rankings_usuarios(){ //Esta función se ejecuta en rankings.tpl, ya que basicamente escribe contenido HTML.  

			$array_rankings = $this->user->select_puntos_rankings(20);	

			$contador = 1;
			foreach($array_rankings as $item) {
		  		echo '<div class="rankingUser"> 
		                    <span> ' . $contador . ' </span> 
		                    <div>' . $item["Nombre_usuario"] . ' </div> 
		                    <div> ' . $item["Puntos"] . " puntos" . '</div>
                	</div>';

            $contador++;
			  
			  }

		}

  		public function validar_form(){ // información utilizada por modelo/ajax.js

			if ( !preg_match('/^[A-Za-z][A-Za-z0-9]{4,25}$/', $_POST['f_username']) ){

				if (strlen($_POST['f_username']) > 25) {
					echo "nombre_largo";
					
				}
				else if (strlen($_POST['f_username']) < 5) {
					echo "nombre_corto";
					
				}
				else{
					echo "nombre_error";				
				}
			}


			else if( (!filter_var($this->email, FILTER_VALIDATE_EMAIL)) && (strlen($this->email) > 25) && (strlen($this->email) < 5)   ) {
				echo "email_error";
			}
			else if($this->email != $this->email_confirm) {
				echo "email_no_coinciden";
			}


			else if (!preg_match('/^[A-Za-z][A-Za-z0-9]{4,25}$/', $this->password) ){

				if (strlen($this->password) > 25) {
					echo "password_larga";
					
				}
				else if (strlen($this->password) < 5) {
					echo "password_corta";
					
				}
				else{
					echo "password_error";
				}
			}


			else if($this->password != $this->password_conf) {
				echo "contraseñas_no_coinciden";
				
			}

			else{

				return true;
			}			
	}

	}

 ?>