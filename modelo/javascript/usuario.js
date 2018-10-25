$( document ).ready(function() {

	 $("#form_registro").submit(function(e) {
	                e.preventDefault();

	                var username = $('input[name=f_username]', this).val();
	                var email = $('input[name=f_email]', this).val();
	                var email_confirm = $('input[name=f_email_confirm]', this).val();
	                var pass = $('input[name=f_password]', this).val();
	                var pass_confirm = $('input[name=f_password_confirm]', this).val();

	            $.ajax({

	              type:'POST',

	              data: {
	              		// es necesario enviar todo el contenido, ya que si queremos trabajar con los input 
	              		 //individualmente el serialize no nos sirve, al mismo tiempo necesitamos darle valor a $_POST['f_registrar']
	              		  //ya que si no en index.php no entraremos en el primer if
	              		 f_registrar: $(this).serialize(),  
	              		 f_username: username,
	                     f_email: email,
	                     f_email_confirm: email_confirm,
	                     f_password: pass,
	                     f_password_confirm: pass_confirm },

	              success:function(data){

	              		validar_form(data);

	              		if (data == "usuario_existente") {
	              			swal("¡Este usuario ya existe!","Por favor introduce otro Alias","error");

	              		}else if (data == "email_existente"){
	              			swal("¡Este correo ya esta registrado!","Por favor introduce otro email","error");

	              		}else if (data == "registro_correcto"){
	              			swal("¡Registrado con éxito!","Ya puedes iniciar sesión con tus datos","success");

	              		}	              		
	    		}
	     })
	 })



	 $("#form_login").submit(function(e) {
	                e.preventDefault();

	                var username_email = $('input[name=f_username_email]', this).val();
	                var pass = $('input[name=f_password]', this).val();

	            $.ajax({

	              type:'POST',

	              data: {
	              		// es necesario enviar todo el contenido, ya que si queremos trabajar con los input 
	              		 //individualmente el serialize no nos sirve, al mismo tiempo necesitamos darle valor a $_POST['f_iniciar']
	              		  //ya que si no en index.php no entraremos en el primer if
	              		 f_iniciar: $(this).serialize(),  
	              		 f_username_email: username_email,	                    	                     
	                     f_password: pass
	                     },

	              success:function(data){

	              		validar_form(data);

	              		if (data == "login_error") {
	              			 swal("¡Datos incorrectos!","Verifica tu usuario y contraseña","error")
	              		}
	              		else if (data == "login_correcto"){
	              			window.location.href = ("vista/perfil.php");
	              		}
	 	              	
	    		}
	     })
	 })


	 $("#form_modificar").submit(function(e) {
	                e.preventDefault();

	                var username = $('input[name=f_username]', this).val();
	                var email = $('input[name=f_email]', this).val();
	                var email_confirm = $('input[name=f_email_confirm]', this).val();
	                var pass = $('input[name=f_password]', this).val();
	                var pass_confirm = $('input[name=f_password_confirm]', this).val();

	            $.ajax({

	              type:'POST',

	              data: {
	              		// es necesario enviar todo el contenido, ya que si queremos trabajar con los input 
	              		 //individualmente el serialize no nos sirve, al mismo tiempo necesitamos darle valor a $_POST['f_modificar']
	              		  //ya que si no en index.php no entraremos en el primer if
	              		 f_modificar: $(this).serialize(),  
	              		 f_username: username,
	                     f_email: email,
	                     f_email_confirm: email_confirm,
	                     f_password: pass,
	                     f_password_confirm: pass_confirm },

	              success:function(data){

	              		validar_form(data);

	              		if (data == "usuario_existente") {
	              			swal("¡Este usuario ya existe!","Por favor introduce otro Alias","error");

	              		}else if (data == "email_existente"){
	              			swal("¡Este correo ya esta registrado!","Por favor introduce otro email","error");

	              		}else if (data == "modificar_correcto"){
	              			swal({
                                title: "¡Datos modificados!",
                                text: "A continuación te redireccionaremos a la pantalla principal",
                                type: "info",
                                                           
                              })
                              .then((goBack) => {
                                if (goBack) {
                                    window.location.href = "../index.php";
                                
                                }
                              });

	              		}	              		
	    		}
	     })
	 })



	$("#borrar_user").click(function(){
	 	borrar_usuario_aviso();

	})
	               			    
	function borrar_usuario_aviso() {

		swal({
			title: '¿Realmente deseas eliminar tu cuenta? <br> :(',
  			text: "Ten en cuenta que no podrás recuperarla",
  			type: 'warning',
  			
  			confirmButtonColor: '#3085d6',
  			confirmButtonText: 'Sí, eliminar cuenta',
  			
  			showCancelButton: true,
  			focusCancel: true,
  			cancelButtonColor: '#d33',
  			cancelButtonText: 'Cancelar'

		})
		.then((result) =>{
			if (result.value){
				borrar_usuario();
			}

		})


	}

	function borrar_usuario(){
	                
        $.ajax({

          type:'POST',
          data: {
          		 f_borrar: "borrar_ok",  
			 },
            success:function(data){
          		
				if (data == "borrar_ok"){
          			swal({
                        title: "¡Cuenta eliminada!",
                        text: "A continuación te redireccionaremos a la pantalla principal",
                        type: "info",
                                                   
                      })
                      .then((goBack) => {
                        if (goBack) {
                            window.location.href = "../index.php";
                        
                        }
                      });                   
          		}	              		
			}
 		})
 	}
	 
	 
	 function validar_form(datos){

	 	if (datos == "nombre_largo"){
	 		swal("¡El nombre de usuario es demasiado largo!","Por favor, prueba con otro.","error");

	 	}else if (datos == "nombre_corto"){
	 		swal("¡El nombre de usuario es demasiado corto!","Por favor, prueba con otro.","error");

	 	}else if (datos == "nombre_error"){
	 		swal("El nombre de usuario debe empezar con una letra, y contener únicamente números o letras","Por favor, prueba con otro.","error");
	 	}



	 	else if (datos == "email_error"){
	 		swal("El email no es válido, mínimo 5 caracteres y máximo 25.","Por favor, prueba con otro.","error");

	 	}else if (datos == "email_no_coinciden"){
	 		swal("¡Los emails introducidos no coinciden!","Por favor, verifica tus datos","error");

	 	}


	 	else if(datos == "password_larga"){
	 		swal("La contraseña es demasiado larga, debe contener menos de 25 caracteres","Por favor, verifica tus datos","error");

	 	}else if (datos == "password_corta"){
	 		swal("La contraseña es demasiado corta, debe contener más de 5 caracteres","Por favor, verifica tus datos","error");

	 	}else if(datos == "password_error"){
	 		swal("La contraseña debe empezar con una letra, y contener únicamente números o letras","Por favor, prueba otra vez","error");

	 	}else if (datos == "contraseñas_no_coinciden"){
	 		swal("¡Las contraseñas no coinciden!","Verifica tus datos","error");
	 	}

	 }
 }); 



