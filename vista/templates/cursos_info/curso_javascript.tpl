
<!-- Content -->
<div class="cursoHtmlwrap">
    <div class="cursoWrap">
      <div class="cursoDescripcion">
       <img class="cursoIMG2" src="../content/img/jss_icon.png" alt="JavaScript" title="JavaScript">
       <h2>Javascript Tutorial</h2>
        
        <p>JavaScript (abreviado comúnmente JS) es un lenguaje de programación interpretado, dialecto del estándar ECMAScript. Se define como orientado a objetos, basado en prototipos, imperativo, débilmente tipado y dinámico.
          <br>
        Se utiliza principalmente en su forma del lado del cliente (client-side), implementado como parte de un navegador web permitiendo mejoras en la interfaz de usuario y páginas web dinámicas aunque existe una forma de JavaScript del lado del servidor (Server-side JavaScript o SSJS). Su uso en aplicaciones externas a la web, por ejemplo en documentos PDF, aplicaciones de escritorio (mayoritariamente widgets) es también significativo. 
        </p>
        <br>
        <p>JavaScript se diseñó con una sintaxis similar a C, aunque adopta nombres y convenciones del lenguaje de programación Java. Sin embargo, Java y JavaScript tienen semánticas y propósitos diferentes. 
          <br>
        Todos los navegadores modernos interpretan el código JavaScript integrado en las páginas web. Para interactuar con una página web se provee al lenguaje JavaScript de una implementación del Document Object Model (DOM).
       </p> 
       <br>
       <p>Tradicionalmente se venía utilizando en páginas web HTML para realizar operaciones y únicamente en el marco de la aplicación cliente, sin acceso a funciones del servidor. Actualmente es ampliamente utilizado para enviar y recibir información del servidor junto con ayuda de otras tecnologías como AJAX. JavaScript se interpreta en el agente de usuario al mismo tiempo que las sentencias van descargándose junto con el código HTML.
       </p>

        <div class="cursoLink empezar_curso">
          <?php 
            if (isset($_SESSION["session_usuario"])) {
            echo '
        <a class="masInfo"href="../cursos_activos/curso_activo_javascript.php">Comenzar</a>';
      }else{
        echo '
        <a class="masInfo" href="../../index.php">Registrarme y empezar</a>';
      }
        ?>
        </div>
      </div>


     <div class="leccionesWrap">
       <div class="leccionDiv">
        <div class="leccion">
          <h3>1. Introducción Javascript</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem nulla harum assumenda consectetur autem accusantium?</p>
            <div class="wrapSublecciones">
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es Javascript?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es Javascript?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es Javascript?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es Javascript?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es Javascript?</span>
              </div>
            </div>
        </div>
      </div>

       <div class="leccionDiv">
        <div class="leccion">
          <h3>2. Medio Javascript.</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem nulla harum assumenda consectetur autem accusantium?</p>
            <div class="wrapSublecciones">
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es Javascript?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es Javascript?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es Javascript?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es Javascript?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es Javascript?</span>
              </div>
            </div>
        </div>
      </div>

      <div class="leccionDiv">
        <div class="leccion">
          <h3>3. Avanzado Javascript.</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem nulla harum assumenda consectetur autem accusantium?</p>
            <div class="wrapSublecciones">
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es Javascript?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es Javascript?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es Javascript?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es Javascript?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es Javascript?</span>
              </div>
            </div>
        </div>
      </div>                
    </div>
  </div>
          <!-- Imagenes curso. -->
    <div class="CursoImagenes">
        IMAGENES DEL CURSO AQUI. (mapa,islas,alguna leccion.)
            <div class="MasCursos">
        Enlace a otros cursos?, imagenes?, 
    </div>
    </div>

</div>