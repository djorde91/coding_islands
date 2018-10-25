<?php
require_once "../modelo/class_includes.php";

	$includes = new Includes();
	$includes->includes_header($title = 'Coding Islands || Información', $link_css = 'content/css/informacion.css');
	require_once "templates/informacion.tpl";
	Includes::includes_footer();

 ?>