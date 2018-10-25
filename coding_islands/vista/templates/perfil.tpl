
<!-- Content -->

    <div class="profile_wrap">
      <div class="user_wrap">
        <div class="basic_info">
          <h3> Bienvenid@ <?php echo $_SESSION['session_alias']; ?>  </h3>
          <span> <?php $control->mostrar_puntos_usuario(); ?> </span>
          <hr>
        </div>

        <div class="cursos_progreso">
          <h4>Cursos activos</h4>
              <div class="selector_curso">                                            
                  <?php $cursos->mostrar_cursos_activos($_SESSION['session_usuario']); ?> 
              </div>
          <hr>

          <h4>Cursos disponibles</h4>
              <div class="selector_curso">                                            
                  <?php $cursos->mostrar_cursos_inactivos($_SESSION['session_usuario']); ?> 
              </div>
          <hr>
        </div>
                  
          <div class="log_out_change_info">


          <button id="botoneditar_info" class="editar_a" onclick="mostrarEditar_info()"> Editar perfil</button>
            <div>
              <?php $control->control_modificar() ?>
            </div>

          <div class="edit_info" id="edit_info"  style="display: none">
              <form id="form_modificar" class="form_wrap" method="POST" action="">

                  <div class="input_Wrap">
                      <label for="f_email">Nuevo email</label>
                      <input type="text" name="f_email"  value="<?php echo $_SESSION['email'] ?>" required > 
                  </div>

                  <div class="input_Wrap">
                      <label for="f_email_confirm">Confirmar email</label>
                      <input type="text" name="f_email_confirm"value="<?php echo $_SESSION['email'] ?>" required> 
                  </div>

                  <div class="input_Wrap">
                      <label for="f_password">Nueva Contraseña</label>
                      <input type="password" placeholder="5-25 caracteres" name="f_password" required> 
                  </div>

                  <div class="input_Wrap">
                      <label for="f_password_confirm">Confirmar contraseña</label>
                      <input type="password" placeholder="Verifica tu contraseña" name="f_password_confirm" required> 
                  </div>

                  <div class="input_Wrap">
                      <label for="f_username">Alias</label>
                      <input type="text" name="f_username" value="<?php echo $_SESSION['session_alias'] ?>" required> 
                  </div>

                  <div class="input_Wrap">
                       <button class="button1" type="submit" name="f_modificar" value="<?php echo $_SESSION['email'] ?>">
                         Cambiar
                      </button>
                  </div>
              </form>
          </div>
        </div>

        <div class="log_out_change_info flex_cerrar_borrar">

         
            <button id="borrar_user" type="submit"> Borrar cuenta </button>
          
          <a href="perfil.php?v_session=off"> Cerrar Sesión </a>

        </div>



      </div>
    </div>
	