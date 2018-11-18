<?php
require_once (__DIR__ . "/../../controlador/class_control_cursos.php");
require_once (__DIR__ . "/../../controlador/class_control_usuario.php");
require_once "../../modelo/class_includes.php";

	Control_usuario::cerrar_session();
	
	$cursos = new Control_Cursos();
	//la primera vez que el usuario entre en la página el if no se cumplirá, entrando directamente al else, donde se intentará registrar al usuario en el curso y se cargarán las vistas correspondientes. 
	if ( (isset($_POST['respuesta'])) && (isset($_POST['respuesta'])) ) {

		$p_respuesta = $_POST['respuesta'];
 		$p_pregunta = $_POST['pregunta'];

		$cursos->control_respuesta_puntuacion_lecciones($p_pregunta, $p_respuesta, $_SESSION['session_usuario'], $p_nombre_curso = 'HTML');

		exit();	

	}else{

		$cursos->control_cursos_lecciones_registro($nombre_curso = 'HTML', $_SESSION['session_usuario']);

		$includes = new Includes();
		$includes->includes_header($title = 'Coding Islands || HTML5', $link_css = '../content/css/cursos_activos.css');
		require_once "../templates/cursos_activos/curso_activo_html.tpl";
		Includes::includes_footer();

	}

	
	
 ?>