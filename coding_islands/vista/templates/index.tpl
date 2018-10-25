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
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores neque, cum deserunt. Sed tempore veritatis impedit vero, odio qui unde enim error provident voluptatibus, natus voluptatem, nam ducimus facilis perspiciatis?</p>
          </div>
              ';
          }
          ?>
          

          

        </div>
    </div>

    <!-- ADDITIONAL INFO -->
<div class="divInfo divInfoBg_2">
    <h2 class="h2main"> Avanza, explora y descubre los misterios que ocultan  <br> las islas del territorio de Aangara.</h2>

</div>

<!-- CURSOS -->
<div class="courseContainer">
       <div class="cursos curso1">
        <img class="cursoIMG" src="vista/content/img/html5_icon.png" alt="HTML5" title="HTML5">
          <div class="cursoInfo">
            <h2>HTML5</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure magni sit rem harum ipsa saepe ullam, nemo ex ratione voluptas fuga accusantium deserunt illo voluptatibus vitae voluptatum quod, assumenda iusto!</p>
            <a class="masInfo " href="vista/cursos_info/curso_html.php"> ¡Saber más!</a>
        </div>
      </div>

       <div class="cursos curso2">
        <img class="cursoIMG" src="vista/content/img/css_icon.png" alt="CSS3" title="CSS3">
          
             <div class="cursoInfo">
               <h2>CSS3</h2>
               <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure magni sit rem harum ipsa saepe ullam, nemo ex ratione voluptas fuga accusantium deserunt illo voluptatibus vitae voluptatum quod, assumenda iusto!</p>
            <a class="masInfo" href="vista/cursos_info/curso_css.php">¡Saber más!</a>
              </div>
          
      </div>

       <div class="cursos curso3">
        <img class="cursoIMG" src="vista/content/img/jss_icon.png" alt="JavaScript" title="JavaScript">
          
            <div class="cursoInfo">
              <h2>JavaScript</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure magni sit rem harum ipsa saepe ullam, nemo ex ratione voluptas fuga accusantium deserunt illo voluptatibus vitae voluptatum quod, assumenda iusto!</p>
              <a class="masInfo" href="vista/cursos_info/curso_javascript.php"> ¡Saber más!</a>
          </div>
    
      </div>

       <div class="cursos curso4">
        <img class="cursoIMG" src="vista/content/img/php_logo.png" alt="PHP" title="PHP">
            <div class="cursoInfo">
              <h2>PhP</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure magni sit rem harum ipsa saepe ullam, nemo ex ratione voluptas fuga accusantium deserunt illo voluptatibus vitae voluptatum quod, assumenda iusto!</p>
              <a class="masInfo" href="vista/cursos_info/curso_php.php"> ¡Saber más!</a>
          </div>
      </div>
    </div>