
<!-- Content -->
<div class="cursoHtmlwrap">
    <div class="cursoWrap">
      <div class="cursoDescripcion">
       <img class="cursoIMG2" src="../content/img/css_icon.png" alt="CSS3" title="CSS3">
       <h2>CSS3 Tutorial</h2>
        
        <p>Junto con HTML y JavaScript, CSS es una tecnología usada por muchos sitios web para crear páginas visualmente atractivas, interfaces de usuario para aplicaciones web, y GUIs para muchas aplicaciones móviles (como Firefox OS). 
        </p>
        <br>

        <p>CSS está diseñado principalmente para marcar la separación del contenido del documento y la forma de presentación de este, características tales como las capas o layouts, los colores y las fuentes.4​ Esta separación busca mejorar la accesibilidad del documento, proveer más flexibilidad y control en la especificación de características presentacionales, permitir que varios documentos HTML compartan un mismo estilo usando una sola hoja de estilos separada en un archivo .css, y reducir la complejidad y la repetición de código en la estructura del documento.
        </p>
        <br>

        <p>La separación del formato y el contenido hace posible presentar el mismo documento marcado en diferentes estilos para diferentes métodos de renderizado, como en pantalla, en impresión, en voz (mediante un navegador de voz o un lector de pantalla, y dispositivos táctiles basados en el sistema Braille. También se puede mostrar una página web de manera diferente dependiendo del tamaño de la pantalla o tipo de dispositivo. Los lectores pueden especificar una hoja de estilos diferente, como una hoja de estilos CSS guardado en su computadora, para sobreescribir la hoja de estilos del diseñador.
        </p>
        <br>

        <p>La especificación CSS describe un esquema prioritario para determinar qué reglas de estilo se aplican si más de una regla coincide para un elemento en particular. Estas reglas son aplicadas con un sistema llamado de cascada, de modo que las prioridades son calculadas y asignadas a las reglas, así que los resultados son predecibles.
        </p>


        <div class="cursoLink empezar_curso">
          <?php 
            if (isset($_SESSION["session_usuario"])) {
            echo '
        <a class="masInfo" href="../cursos_activos/curso_activo_css.php">Comenzar</a>';
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
          <h3>1. Introducción CSS</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem nulla harum assumenda consectetur autem accusantium?</p>
            <div class="wrapSublecciones">
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es CSS?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es CSS?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es CSS?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es CSS?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es CSS?</span>
              </div>
            </div>
        </div>
      </div>

       <div class="leccionDiv">
        <div class="leccion">
          <h3>2. Medio CSS.</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem nulla harum assumenda consectetur autem accusantium?</p>
            <div class="wrapSublecciones">
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es CSS?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es CSS?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es CSS?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es CSS?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es CSS?</span>
              </div>
            </div>
        </div>
      </div>

      <div class="leccionDiv">
        <div class="leccion">
          <h3>3. Avanzado CSS.</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem nulla harum assumenda consectetur autem accusantium?</p>
            <div class="wrapSublecciones">
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es CSS?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es CSS?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es CSS?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es CSS?</span>
              </div>
              <div class="subleccion">
                <span>1.</span> <span>¿Qué es CSS?</span>
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