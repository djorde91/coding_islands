// Mostrar y ocultar pestaña Iniciar sesión y Registrarse en iniciar_sesion.php e index.php
function mostrarLogin() {
	document.getElementById("formSignup").style.display = "none";
	document.getElementById("formLogin").style.display = "block";

	document.getElementById("login").style.background= "#b4ceed";
	document.getElementById("registro").style.background= "#fff";							
}

function mostrarSignUp() {
	document.getElementById("formSignup").style.display = "block";
	document.getElementById("formLogin").style.display = "none";

	document.getElementById("registro").style.background= "#b4ceed";
	document.getElementById("login").style.background= "#fff";
}

//Mostra y ocultar Editar información de perfil.php

function mostrarEditar_info() {
	var v_cambiar = document.getElementById("edit_info");

	if (v_cambiar.style.display =='none') {
		v_cambiar.style.display = 'block';
	}
	else {
		v_cambiar.style.display = 'none';
	}
}








