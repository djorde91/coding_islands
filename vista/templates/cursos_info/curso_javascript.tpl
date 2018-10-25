
<!-- Content -->
<div class="cursoHtmlwrap">
    <div class="cursoWrap">
      <div class="cursoDescripcion">
       <img class="cursoIMG2" src="../content/img/jss_icon.png" alt="JavaScript" title="JavaScript">
       <h2>Javascript Tutorial</h2>
        
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Optio esse facere, nemo quas ad dolores amet aperiam magnam quos corrupti. Error in deserunt consequatur! Sapiente commodi optio quo officia aliquam.</p>

        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Optio esse facere, nemo quas ad dolores amet aperiam magnam quos corrupti. Error in deserunt consequatur! Sapiente commodi optio quo officia aliquam.</p>

        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Optio esse facere, nemo quas ad dolores amet aperiam magnam quos corrupti. Error in deserunt consequatur! Sapiente commodi optio quo officia aliquam.</p>

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