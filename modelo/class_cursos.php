<?php 	
	require_once(__DIR__ ."/utilidades/class_base_cursos.php");

	//clase con gran carga de trabajo con la base de datos, añadiendo y modificando información de los usuarios según su avance en los cursos.
	class Cursos extends Base_Cursos { 

		public function __construct() {
      		 parent::__construct();  
      
         }

		public function cursos_registro($p_cursoname, $p_usuario_name){

			try
		    {		     

		      $stmt = $this->conn->ejecutar_consulta("INSERT INTO inscripcion(Nombre_curso, Nombre_usuario) 
		                                                   VALUES(:cursoname, :usuarioname)");		      
		      $stmt->bindparam(":cursoname", $p_cursoname);
		      $stmt->bindparam(":usuarioname", $p_usuario_name);                     
		      $stmt->execute();	      

		    }
		    catch(PDOException $e)
		    {
		      echo $e->getMessage();
		      echo $e->getLine();
		    }  

		}

		public function curso_registro_lecciones($p_nombre_curso,$p_nombre_usuario){
				  
			  //Consulta para saber el número total de lecciones del curso pasado por parametro.
			  $stmt = $this->conn->ejecutar_consulta("SELECT ID_Leccion FROM lecciones WHERE ID_Leccion LIKE '$p_nombre_curso%' "); 
	      	  $stmt->execute();
	      	  $filas = $stmt->rowCount();		   

	      	  $contador = 1;
	      	  for ($i=0; $i < $filas ; $i++) {

		      	  $v_ID_leccion = $p_nombre_curso . $contador; //concatenación de nombre del curso y un numero, es el nombre de la lección.

		      	  $stmt = $this->conn->ejecutar_consulta("INSERT INTO lecciones_curso(Nombre_curso, ID_leccion, Nombre_usuario) 
			                                                   VALUES(:cursoname, :id_leccion, :usuarioname )");

			      $stmt->bindparam(":cursoname", $p_nombre_curso );
			      $stmt->bindparam(":id_leccion",$v_ID_leccion );
			      $stmt->bindparam(":usuarioname", $p_nombre_usuario);                      
			      $stmt->execute();

			      $contador++;
	      	  	
	      	  }

		}

		//Función a modificar añadiendo ifs a medida que se añadan cursos, esta función se añadira en perfil.tpl, ya que escribe literalmente codigo HTML visible para el usuario (VISTA).
		public function select_cursos_activos($p_usuario_name){

			$stmt = $this->conn->ejecutar_consulta("SELECT Nombre_curso, Nombre_usuario FROM inscripcion WHERE Nombre_usuario = '$p_usuario_name' "); 
		    $stmt->execute(array());


		    $HTML_activo = false;
		    $CSS_activo = false;
		    $javascript_activo = false;
		    $php_activo = false;

		    while($registro = $stmt->fetch(PDO::FETCH_ASSOC)){

		    	if ($registro['Nombre_curso'] == 'HTML') {
		    		$HTML_activo = true;

		    	}else if ($registro['Nombre_curso'] == 'CSS') {
		    		$CSS_activo = true;

		    	}else if ($registro['Nombre_curso'] == 'javascript') {
		    		$javascript_activo = true;

		    	}else if ($registro['Nombre_curso'] == 'PHP') {
		    		$php_activo = true;
		    	}
			}

			$array_cursos_activos = array(
		        "curso_HTML" => $HTML_activo,
		        "curso_CSS" => $CSS_activo,
		        "curso_javascript" => $javascript_activo,
		        "curso_php" => $php_activo,
      		);

      		return $array_cursos_activos;


		}

		public function select_cursos_inactivos($p_usuario_name){ //añadir nuevos case al switch y else if a medida que se añadan nuevos cursos.

			$stmt = $this->conn->ejecutar_consulta("SELECT Nombre_curso, Nombre_usuario FROM inscripcion WHERE Nombre_usuario = '$p_usuario_name' "); 
		    $stmt->execute(array());		  
		    
		    	$contador_HTML = true;
		    	$contador_CSS = true;
		    	$contador_JS = true;
		    	$contador_PHP = true;		
		    while($registro = $stmt->fetch(PDO::FETCH_ASSOC)){ //Si la consulta devuelve 0 no se entrará en este while.
		    	
				switch ($registro['Nombre_curso']) {

				    case "HTML":
				        $contador_HTML = false;
				        break;

				    case "CSS":
				        $contador_CSS = false;
				        break;

				    case "javascript":
				    	$contador_JS = false;
				        break;

				    case "PHP":
				    	$contador_PHP = false;
				        break;

					} 

		    }

		    	$array_cursos_inactivos = array(
		        "curso_HTML" => $contador_HTML,
		        "curso_CSS" => $contador_CSS,
		        "curso_javascript" => $contador_JS,
		        "curso_php" => $contador_PHP,
      		);

      		return $array_cursos_inactivos;
      	}

      	public function update_puntos_leccion($p_pregunta, $p_respuesta, $p_username, $p_nombre_curso, $v_puntos){

  			$stmt = $this->conn->ejecutar_consulta("SELECT Leccion_superada FROM lecciones_curso WHERE ID_Leccion = '$p_pregunta' AND Nombre_usuario = '$p_username' "); 
	    	$stmt->execute();
	    	$results = $stmt->fetch(PDO::FETCH_ASSOC);

	    	//en la siguiente consulta UPDATE añadimos la puntuacion al usuario en su perfil global y en el seguimiento del curso correspondiente, y actualizamos la columna leccion_superada a true de la correspondiente pregunta/leccion. Esto último se usará como condicionante para no seguir sumando puntos.
	    	if ($results['Leccion_superada'] == 'false') {

	    	$stmt = $this->conn->ejecutar_consulta("UPDATE inscripcion i 
												   JOIN usuarios u ON i.Nombre_usuario = u.Nombre_usuario
												   JOIN lecciones_curso l ON u.Nombre_usuario = l.Nombre_usuario

												   SET l.Leccion_superada = 'true',
												   i.Puntos_curso = i.Puntos_curso + '$v_puntos', 
												   u.Puntos = u.Puntos + '$v_puntos' 													   
												   WHERE l.ID_Leccion = '$p_pregunta' 
												   AND i.Nombre_usuario = '$p_username' 
												   AND i.Nombre_curso = '$p_nombre_curso' ");
	    	$stmt->execute();
		    			 
		    }

      	}

      	public function select_respuesta_leccion($p_pregunta, $p_respuesta, $p_username, $p_nombre_curso){
				
         	$stmt = $this->conn->ejecutar_consulta("SELECT ID_Leccion, Respuesta, Nombre_leccion, Puntuacion FROM lecciones WHERE ID_Leccion = '$p_pregunta' "); 
		    $stmt->execute(array());
		    $results = $stmt->fetch(PDO::FETCH_ASSOC);

		    return $results;		
                                                         	    	   	    		
		    }		

	}

 ?>