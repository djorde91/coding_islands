<?php
require_once (__DIR__ . "/../controlador/class_control_cursos.php");
require_once (__DIR__ . "/../controlador/class_control_usuario.php");
require_once (__DIR__ . "/../modelo/class_includes.php");

	Control_usuario::cerrar_session();
	
	$control = new Control_usuario();
	$cursos = new Control_Cursos();

	if (isset($_POST['f_modificar']) ) {
		$control->control_modificar(); 
		exit();

	}else if (isset($_POST['f_borrar']) )  {
		$control->control_borrar(); 
		exit();

	}else{

		$includes = new Includes();
		$includes->includes_header($title = 'Coding Islands || Perfil', $link_css = 'content/css/perfil.css');
		require_once "templates/perfil.tpl";
		Includes::includes_footer();
	}
	
 ?>