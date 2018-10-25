<?php
session_start(); //Colocamos aquí session_start(); por que todas las páginas acceden a esta hoja de alguna forma a base de requires implicitos, o derivados a través de otros.
	// clase que contiene el contenido HTML a mostrar según la página actual.
	class Includes {

		private $titulo;
		private $link;

		public function includes_header($p_titulo, $p_link){ //Esta función no es estatica por que necesitamos acceder a las variables encapsuladas de la clase. Si la llamaramos de forma estatica no podríamos utilizar $this.

			$this->titulo = $p_titulo;
			$this->link = $p_link;


			echo '
			<!DOCTYPE html>
			<html lang="es">
			<head>
			  <title>'. $p_titulo . '</title>
			    <meta charset="UTF-8">
			    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
			    <meta name="description" content="Aprende a programar con Coding Islands">
			    <meta name="keywords" content="Programación, Coding, programar jugando, HTML, CSS"> 
			    <meta name="author" content="Daniel Jorde">
			    <meta name="title" content="Aprende a programar con Coding Islands"> 
			    <meta name="googlebot" content="index follow">
			    <meta name="robots" content="index, follow ">
			    <meta name="category" content="Programming">

				<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
			  <link rel="stylesheet" href="/proyecto/vista/content/css/index.css">
			  <link rel="stylesheet" href="'. $p_link . '" >	
			  <link rel="stylesheet" href="/proyecto/vista/content/css/mediaqueries.css">
			  


			</head>	
			<body>
			<!-- Header -->
			<header>
			      <div class="headerMenu">
			          <div class="header1">
			             <a href="/proyecto/index.php"> <img src="/proyecto/vista/content/img/logo_03.png" alt="Coding Islands" title="Coding Islands"> </a>
			          </div>
			          
			          <div class="header2">
			            <nav>
			              <ul>
			                <li> <a href="/proyecto/index.php">Inicio</a> </li>
			                <li> <a href="/proyecto/vista/cursos.php">Cursos</a>  </li>
			                <li> <a href="/proyecto/vista/informacion.php">Información</a> </li>
			                <li> <a href="/proyecto/vista/rankings.php">Rankings</a> </li>
							'. (isset($_SESSION["session_usuario"]) ? " <li class='perfilCss'> <a href=\"/proyecto/vista/perfil.php\">Perfil</a> </li>" : "") . '			
			              </ul>
			            </nav>
			          </div>

			          <!-- Bootstrap navbar -->
			      <nav class="navbar navbar-expand-bg navbar-light">
			        <button class="navbar-toggler navButton" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			          <span class="navbar-toggler-icon"></span>
			        </button>
			        <div class="collapse navbar-collapse" id="navbarNav">

			          <ul class="navbar-nav ul_header">
			            <li class="nav-item">
			              <a class="nav-link" href="/proyecto/index.php">Inicio</a>
			            </li> 
			            <li class="nav-item">
			              <a class="nav-link" href="/proyecto/vista/cursos.php">Cursos</a>
			            </li>
			            <li class="nav-item">
			              <a class="nav-link" href="/proyecto/vista/informacion.php">Información</a>
			            </li>
			            <li class="nav-item">
			              <a class="nav-link" href="/proyecto/vista/rankings.php">Rankings</a>
			              '. (isset($_SESSION["session_usuario"]) ? " <li> <a class=\"nav-link\" href=\"/proyecto/vista/perfil.php\">Perfil</a> </li>" : "") . '	
			            </li>
			          </ul>
			        </div>

			      </nav>
			    </div>
			</header> ' ;

		}

		public static function includes_footer(){

			echo '
			<!-- Footer -->
			<footer class="footer">
			  <!-- ADDITIONAL INFO -->
			    <div class="divInfo divInfoBg">
			      <h2 class="h2main"> Conquista las islas y desarrolla tus habilidades.</h2>
			      <a class="LearnMore_a LearnMore_a_2"href="/proyecto/index.php">¡Empieza ahora!</a>
			    </div>  
			  <div class="divBanner"> 
			  <p>Coding islands. Programación al alcance de todos.</p>
			</div>

			<div class="footerWrap">

			        <div class="socialContainer">

			      <div class="socialmedia ">
			        <a href="https://www.facebook.com/"> <img src=/proyecto/vista/content/img/facebook_icon.png > </a>
			      </div>

			      <div class="socialmedia ">
			        <a href="https://www.twitter.com/"><img src=/proyecto/vista/content/img/twitter_icon.png> </a>
			      </div>

			       <div class="socialmedia ">
			        <a href="https://www.instagra.com/"> <img src=/proyecto/vista/content/img/instagram_icon.png> </a>
			      </div>

			    </div>

			  <div class="footerNav">
			    <nav>
			    <ul>
			      <li> <a href="/proyecto/index.php">Inicio</a> </li>
			      <li> <a href="/proyecto/vista/cursos.php">Cursos</a>  </li>
	              <li> <a href="/proyecto/vista/informacion.php">Información</a> </li>
	              <li> <a href="/proyecto/vista/rankings.php">Rankings</a> </li>
				  '. (isset($_SESSION["session_usuario"]) ? " <li> <a href=\"/proyecto/vista/perfil.php\">Perfil</a> </li>" : "") . '					      
			    </ul>
			    </nav>
			  </div>

			      <div class="proyectInfo">
			        <a href="/proyecto/index.php"> <img src="/proyecto/vista/content/img/logo_03_footer.png" alt="Coding Islands" title="Coding Islands" > </a> 
			  </div>

			</div>
			  <div class="copyright"> 
			    <p>&copy; 2018 Coding Islands. Todos los derechos reservados.</p>
			  </div>

			</footer>

			<!-- SCRIPTS -->
			<script src="https://code.jquery.com/jquery-3.1.1.min.js">
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

			<script src="/proyecto/vista/content/js/index.js"></script>
			<script src="/proyecto/modelo/javascript/usuario.js"></script>
			<script src="/proyecto/modelo/javascript/lecciones.js"></script>
			<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.26.29/sweetalert2.all.js"></script>
			</body>
			</html> ';
		}


	}


 ?>