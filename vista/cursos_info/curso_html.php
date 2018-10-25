<?php
require_once "../../modelo/class_includes.php";

	$includes = new Includes();
	$includes->includes_header($title = 'Coding Islands || Curso HTML', $link_css = '../content/css/cursos_info.css');
	require_once "../templates/cursos_info/curso_html.tpl";
	Includes::includes_footer();

 ?>