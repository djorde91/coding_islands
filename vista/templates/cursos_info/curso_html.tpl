
<!-- Content -->
<div class="cursoHtmlwrap">
    <div class="cursoWrap">
      <div class="cursoDescripcion">
       <img class="cursoIMG2" src="../content/img/html5_icon.png" alt="HTML5" title="HTML5">
       <h2>Curso de HTML5</h2>
        
        <p>HTML, sigla en inglés de HyperText Markup Language (lenguaje de marcas de hipertexto), hace referencia al lenguaje de marcado para la elaboración de páginas web. Es un estándar que sirve de referencia del software que conecta con la elaboración de páginas web en sus diferentes versiones, define una estructura básica y un código (denominado código HTML) para la definición de contenido de una página web, como texto, imágenes, videos, juegos, entre otros.
        </p>
        <br>
        <p>Es un estándar a cargo del World Wide Web Consortium (W3C) o Consorcio WWW, organización dedicada a la estandarización de casi todas las tecnologías ligadas a la web, sobre todo en lo referente a su escritura e interpretación. Se considera el lenguaje web más importante siendo su invención crucial en la aparición, desarrollo y expansión de la World Wide Web (WWW). Es el estándar que se ha impuesto en la visualización de páginas web y es el que todos los navegadores actuales han adoptado.
        </p>
         
        <div class="cursoLink empezar_curso">
          <?php 
            if (isset($_SESSION["session_usuario"])) {
            echo '
        <a class="masInfo"href="../cursos_activos/curso_activo_html.php">Comenzar</a>';
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
          <h3>1. Introducción HTML</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem nulla harum assumenda consectetur autem accusantium?</p>
            <div class="wrapSublecciones">
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es HTML?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es HTML?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es HTML?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es HTML?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es HTML?</span>
              </div>
            </div>
        </div>
      </div>

       <div class="leccionDiv">
        <div class="leccion">
          <h3>2. Medio HTML.</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem nulla harum assumenda consectetur autem accusantium?</p>
            <div class="wrapSublecciones">
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es HTML?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es HTML?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es HTML?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es HTML?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es HTML?</span>
              </div>
            </div>
        </div>
      </div>

      <div class="leccionDiv">
        <div class="leccion">
          <h3>3. Avanzado HTML.</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem nulla harum assumenda consectetur autem accusantium?</p>
            <div class="wrapSublecciones">
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es HTML?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es HTML?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es HTML?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es HTML?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es HTML?</span>
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