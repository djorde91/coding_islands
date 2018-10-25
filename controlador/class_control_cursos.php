<?php 	
	require_once (__DIR__ . "/../modelo/class_cursos.php");

	//clase con gran carga de trabajo con la base de datos, añadiendo y modificando información de los usuarios según su avance en los cursos.
	class Control_Cursos{

		private $curso;

		public function __construct() {

			$this->curso = new Cursos;

         }

		public function control_cursos_lecciones_registro($p_cursoname, $p_usuario_name){

			try
		    {	
		      if ($this->curso->select_usuarios_curso($p_cursoname, $p_usuario_name) ){

		      		$this->curso->cursos_registro($p_cursoname, $p_usuario_name);
		      		$this->curso->curso_registro_lecciones($p_cursoname, $p_usuario_name);		   

			      }

		    }
		    catch(PDOException $e)
		    {
		      echo $e->getMessage();
		      echo $e->getLine();
		    }  

		}

		//Función a modificar añadiendo ifs a medida que se añadan cursos, esta función se añadira en perfil.tpl, ya que escribe literalmente codigo HTML visible para el usuario (VISTA).
		public function mostrar_cursos_activos($p_usuario_name){

			   $array_cursos_activos = $this->curso->select_cursos_activos($p_usuario_name);

		    	if ($array_cursos_activos["curso_HTML"] == true) {
		    		echo '<a class="masInfo" href="cursos_activos/curso_activo_html.php"> <img src="content/img/html5_icon.png" alt="HTML5" title="HTML5"> </a>';

		    	}if ($array_cursos_activos["curso_CSS"] == true) {
		    		echo '<a class="masInfo" href="cursos_activos/curso_activo_css.php"> <img src="content/img/css_icon.png" alt="CSS3" title="CSS3"> </a>';

		    	}if ($array_cursos_activos["curso_javascript"] == true) {
		    		echo '<a class="masInfo" href="cursos_activos/curso_activo_javascript.php"> <img src="content/img/jss_icon.png" alt="JavaScript" title="JavaScript"> </a>';

		    	}if ($array_cursos_activos["curso_php"] == true) {
		    		echo '<a class="masInfo" href="cursos_activos/curso_activo_php.php"> <img src="content/img/php_logo.png" alt="PhP" title="PhP"> </a>';	
		    	}

			}	

		public function mostrar_cursos_inactivos($p_usuario_name){ //esta función se llama en perfil.tpl

		  		$array_cursos_inactivos = $this->curso->select_cursos_inactivos($p_usuario_name);   
	
		    if ($array_cursos_inactivos["curso_HTML"] == true) {
	    		echo '<a class="masInfo" href="cursos_activos/curso_activo_html.php"> <img src="content/img/html5_icon.png" alt="HTML5" title="HTML5"> </a>'; 

		    }if ($array_cursos_inactivos["curso_CSS"] == true) {
		    	echo '<a class="masInfo" href="cursos_activos/curso_activo_css.php"> <img src="content/img/css_icon.png" alt="CSS3" title="CSS3"> </a>';

			}if ($array_cursos_inactivos["curso_javascript"] == true) {
		    	echo '<a class="masInfo" href="cursos_activos/curso_activo_javascript.php"> <img src="content/img/jss_icon.png" alt="JavaScript" title="JavaScript"> </a>';

			}if ($array_cursos_inactivos["curso_php"] == true) {
		    	echo '<a class="masInfo" href="cursos_activos/curso_activo_php.php"> <img src="content/img/php_logo.png" alt="PHP" title="PHP"> </a>';
		    }

		}

		public function control_respuesta_puntuacion_lecciones($p_pregunta, $p_respuesta, $p_username, $p_nombre_curso){

				$results = $this->curso->select_respuesta_leccion($p_pregunta, $p_respuesta, $p_username, $p_nombre_curso);

				if ($results['Respuesta'] == $p_respuesta) { 
					echo $results['Respuesta'];	

					$v_puntos = $results['Puntuacion'];
					$this->curso->update_puntos_leccion($p_pregunta, $p_respuesta, $p_username, $p_nombre_curso, $v_puntos);

		   		 }


		}

	}

 ?>