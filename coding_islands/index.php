<?php
require_once (__DIR__ . "/controlador/class_control_usuario.php");
require_once (__DIR__ . "/modelo/class_includes.php");
	
	$control = new Control_usuario();
	if (isset($_POST['f_registrar']) ) {
		$control->control_registro(); 
		exit();
		
	}else if(isset($_POST['f_iniciar']) ){

		$control->control_login();
		exit();

	}else{
		
		$includes = new Includes();
		$includes->includes_header($title = 'Coding Islands', $link_css = 'vista/content/css/iniciar_sesion.css');
		require_once "vista/templates/index.tpl";
		Includes::includes_footer();

	}
		


 ?>