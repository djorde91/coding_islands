
<!-- Content -->
<div class="cursoHtmlwrap">
    <div class="cursoWrap">
      <div class="cursoDescripcion">
       <img class="cursoIMG2" src="../content/img/php_logo.png" alt="PHP" title="PHP">
       <h2>PHP Tutorial</h2>
        
        <p>PHP, acrónimo recursivo en inglés de PHP Hypertext Preprocessor (preprocesador de hipertexto), es un lenguaje de programación de propósito general de código del lado del servidor originalmente diseñado para el desarrollo web de contenido dinámico. Fue uno de los primeros lenguajes de programación del lado del servidor que se podían incorporar directamente en un documento HTML en lugar de llamar a un archivo externo que procese los datos. El código es interpretado por un servidor web con un módulo de procesador de PHP que genera el HTML resultante.
        </p>
        <br>
        <p>
        PHP puede ser desplegado en la mayoría de los servidores web y en todos los sistemas operativos y plataformas sin costo alguno. El lenguaje PHP se encuentra instalado en más de 20 millones de sitios web y en un millón de servidores.
          <br>
        El número de sitios basados en PHP se ha visto reducido progresivamente en los últimos años, con la aparición de nuevas tecnologías como Node.JS, Golang, ASP.NET, etc. El sitio web de Wikipedia está desarrollado en PHP.6​ Es también el módulo Apache más popular entre las computadoras que utilizan Apache como servidor web.
      </p>
      <br>
      <p>El gran parecido que posee PHP con los lenguajes más comunes de programación estructurada, como C y Perl, permiten a la mayoría de los programadores crear aplicaciones complejas con una curva de aprendizaje muy corta. También les permite involucrarse con aplicaciones de contenido dinámico sin tener que aprender todo un nuevo grupo de funciones.
      </p>
  
        <div class="cursoLink empezar_curso">
          <?php 
            if (isset($_SESSION["session_usuario"])) {
            echo '
        <a class="masInfo" href="../cursos_activos/curso_activo_php.php">Comenzar</a>';
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
          <h3>1. Introducción PHP</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem nulla harum assumenda consectetur autem accusantium?</p>
            <div class="wrapSublecciones">
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es PHP?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es PHP?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es PHP?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es PHP?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es PHP?</span>
              </div>
            </div>
        </div>
      </div>

       <div class="leccionDiv">
        <div class="leccion">
          <h3>2. Medio PHP.</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem nulla harum assumenda consectetur autem accusantium?</p>
            <div class="wrapSublecciones">
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es PHP?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es PHP?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es PHP?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es PHP?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es PHP?</span>
              </div>
            </div>
        </div>
      </div>

      <div class="leccionDiv">
        <div class="leccion">
          <h3>3. Avanzado PHP.</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem nulla harum assumenda consectetur autem accusantium?</p>
            <div class="wrapSublecciones">
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es PHP?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es PHP?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es PHP?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es PHP?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es PHP?</span>
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