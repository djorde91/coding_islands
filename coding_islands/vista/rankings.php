<?php
require_once "../modelo/class_includes.php";
require_once (__DIR__ . "/../controlador/class_control_usuario.php");

	$includes = new Includes();
	$user = new Control_usuario();
	$includes->includes_header($title = 'Coding Islands || Rankings', $link_css = 'content/css/rankings.css');
	require_once "templates/rankings.tpl";
	Includes::includes_footer();

 ?>