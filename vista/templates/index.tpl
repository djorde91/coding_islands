    <div class="main">

            <div class="submain">
              <h1 class="h1main">Coding Islands</h1>
              <h4>Aprende programación de una forma interactiva, divertida e innovadora con nuestros cursos básicos gratuitos en línea.
              </h4>
              <a class="LearnMore_a"href="vista/cursos.php">¡Ver catálogo!</a>
            </div>

          <div class="main2">
          <?php 
            if (!isset($_SESSION["session_usuario"])) {

            echo '
            <div class="formContainer">

              <div class="login_signup">
                 <div id="registro" class="registro" onclick="mostrarSignUp()">
                   <span>Registrate</span>
                 </div>

            <div id="login" class="logIn" onclick="mostrarLogin()">
              <span>Iniciar sesión</span>
            </div>
          </div>
            <!-- Registrarse -->
          <div id="formSignup" class="formSignup" >
              <form id="form_registro" method="post" name="formSignup"> 
                <div class="inputWrapper">
                  <label for="f_username">Alias</label>
                  <input type="text" placeholder="5-25 caracteres, letra primero" name="f_username" required> 
                </div>  

                <div class="inputWrapper">
                      <label for="f_email">Email</label>
                      <input type="email" placeholder="Tu correo" minlength="5" maxlength="25" name="f_email" required >
                </div>

                <div class="inputWrapper">
                      <label for="f_email">Repite el Email</label>
                      <input type="email" placeholder="Verifica tu correo" minlength="5" maxlength="25" name="f_email_confirm"" required >
                </div>

                <div class="inputWrapper">
                      <label for="f_password">Contraseña</label>
                      <input type="password" placeholder="5-25 caracteres, letra primero" name="f_password" required>
                </div>

                <div class="inputWrapper">
                      <label for="f_password">Repite la Contraseña</label>
                      <input type="password" placeholder="Verifica tu contraseña" name="f_password_confirm" required>
                </div>

                <div class="buttonWrapper">
                       <button class="button1" type="submit" name="f_registrar">
                           Registrarme
                      </button>
                </div>
                </form>
          </div>
            <!-- Login -->
          <div id="formLogin" class="formLogin" >
              <form id= "form_login" method="post" name="formLogin">
                <div class="inputWrapper">
                    <label for="f_username_email">Alias/Email</label>
                    <input type="text" placeholder="Alias o Email" minlength="5" maxlength="25" name="f_username_email" required> 
                </div>

                <div class="inputWrapper">
                      <label for="f_password">Contraseña</label>
                      <input type="password" placeholder="5-25 caracteres" pattern="^[A-Za-z][A-Za-z0-9]{4,25}$" name="f_password" required>
                </div>

                    <div class="buttonWrapper">
                       <button class="button1" onclick type="submit" name="f_iniciar">
                          Iniciar Sesión
                      </button>
                    </div>
                </form>
          </div>

          </div>';
          ?>

        <?php
        }else{
              echo' 
          <div class="form2info">
              <h2>¡Has vuelto! </h2>
              <p>Pásate por tu perfil para seguir con tu avance en nuestros cursos o para modificar tu información de usuario.</p>
          </div>
              ';
          }
          ?>
                
        </div>
    </div>

    <!-- ADDITIONAL INFO -->
<div class="divInfo divInfoBg_2">
    <h2 class="h2main"> Las nuevas tecnologías están aquí. <br> Coding Islands te lo pone fácil con cursos totalmente gratuitos</h2>

</div>

<!-- CURSOS -->
<div class="courseContainer">
       <div class="cursos curso1">
        <img class="cursoIMG" src="vista/content/img/html5_icon.png" alt="HTML5" title="HTML5">
          <div class="cursoInfo">
            <h2>HTML5</h2>
            <p>HTML5 es un lenguaje de marcado utilizado masivamente para estructurar y presentar el contenido de una página web.  <br> Es fácil, útil y es la puerta de entrada para aprender desarrollo web.</p>
            <a class="masInfo " href="vista/cursos_info/curso_html.php"> ¡Saber más!</a>
        </div>
      </div>

       <div class="cursos curso2">
        <img class="cursoIMG" src="vista/content/img/css_icon.png" alt="CSS3" title="CSS3">
          
             <div class="cursoInfo">
               <h2>CSS3</h2>
               <p>CSS3 (Cascading Style Sheets) es un lenguaje de diseño utilizado para definir, presentar y modificar el aspecto visual de los elementos creados con lenguajes de marcado. Normlamente Se aprende junto a HTML.</p>
            <a class="masInfo" href="vista/cursos_info/curso_css.php">¡Saber más!</a>
              </div>
          
      </div>

       <div class="cursos curso3">
        <img class="cursoIMG" src="vista/content/img/jss_icon.png" alt="JavaScript" title="JavaScript">
          
            <div class="cursoInfo">
              <h2>JavaScript</h2>
              <p>Javascript es un lenguaje de alto nivel, orientado a objetos, mayormente utilizado en lado cliente por sus grandes opciones para manipular y ofrecer mejoras en la interfaz visual del usuario en el entorno web.</p>
              <a class="masInfo" href="vista/cursos_info/curso_javascript.php"> ¡Saber más!</a>
          </div>
    
      </div>

       <div class="cursos curso4">
        <img class="cursoIMG" src="vista/content/img/php_logo.png" alt="PHP" title="PHP">
            <div class="cursoInfo">
              <h2>PhP</h2>
              <p>PHP (Hypertext Preprocessor) es un lenguaje de código abierto, gratuito y multiplataforma de lado servidor. <br> Puede comunicarse con bases de datos y es utilizado ampliamente en el desarrollo web.</p>
              <a class="masInfo" href="vista/cursos_info/curso_php.php"> ¡Saber más!</a>
          </div>
      </div>
    </div>