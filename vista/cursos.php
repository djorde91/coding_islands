<?php 
require_once  "../modelo/class_includes.php";

	$includes = new Includes();
	$includes->includes_header($title = 'Coding Islands || Cursos', $link_css = 'content/css/cursos.css');
	require_once "templates/cursos.tpl";
	Includes::includes_footer();

 ?>