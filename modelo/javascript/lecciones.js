    $( document ).ready(function() {
        num_pregunta = 0;
        obtener_preguntas_json(num_pregunta);


    }); 

//funcion para obtener las preguntas y respuestas del fichero JSON., 
//dentro del success del primer ajax se realizara otra llamada a ajax.
//el primer ajax solo se ejecutara 1 vez, el segundo cada vez que enviemos el formulario on submit.
function obtener_preguntas_json(num_pregunta){
  
    $.ajax({

      type:'GET',
      url: '/proyecto/resources/preguntas_cursos.json',
      datatype:'json',

      success:function(data) {
        console.log('preguntas_curso.json cargado');

        var nombre_curso = $("#form_preguntas").attr('value');
        var preguntas_totales = data[nombre_curso].length;

        Insertar_preguntas(data, nombre_curso, num_pregunta);
      
          
          //Al hacer submit verificamos si la respuesta es correcta y actuamos en consecuencia.
           $("#form_preguntas").submit(function(e) {
                e.preventDefault();

            var pregunta = $("#input_1").attr('name');
            var respuesta = $("input[name=" +pregunta+ "]:checked").val();
            

            $.ajax({

              type:'POST',
              //url: 'curso_activo_xxxx.php' 
              //Lo estamos enviando a la misma página por lo tanto La URL no es necesaria.
              data: {pregunta: pregunta, //$_POST[pregunta] = var pregunta
                     respuesta: respuesta}, //$_POST[respuesta] = var respuesta

              success:function(devuelve) {

                if(respuesta == devuelve){
                      swal({
                        title: "¡Has acertado!",
                        text: "Puedes continuar con la siguiente pregunta",
                        type: "success",
                                                           
                          })
                          .then((clickOK) => {
                              if (clickOK) {
                                if (num_pregunta < preguntas_totales -1 ){

                                        num_pregunta++;
                                        Insertar_preguntas(data, nombre_curso, num_pregunta);

                                    }else{
                                        volverPerfil(); // En la última pregunta redirect al perfil.     
                                    }   
                            
                              }
                           });

                }else{
                  swal("¡Has fallado!","No te preocupes, puedes volver a intentarlo","error");

                  }                                                                                                                              
                                                                                                                            
              }

              });

            });   
        }
      });
}

 function Insertar_preguntas(data, nombre_curso, num_pregunta) {

      // la sintaxis para utilizar una variable como propiedad[Nombre curso] es de esta forma. 
      //[num_pregunta] es la posicion en un array de preguntas.] //echarle un ojo al json para entenderlo.
    document.getElementById("input_1").setAttribute("name",data[nombre_curso][num_pregunta].ID_Leccion); 
    document.getElementById("input_2").setAttribute("name",data[nombre_curso][num_pregunta].ID_Leccion);
    document.getElementById("input_3").setAttribute("name",data[nombre_curso][num_pregunta].ID_Leccion);
    document.getElementById("input_4").setAttribute("name",data[nombre_curso][num_pregunta].ID_Leccion);

    document.getElementById("pregunta").innerHTML = data[nombre_curso][num_pregunta].Pregunta;

    document.getElementById("respuesta_1").innerHTML = data[nombre_curso][num_pregunta].Respuestas[0];
    document.getElementById("respuesta_2").innerHTML = data[nombre_curso][num_pregunta].Respuestas[1];
    document.getElementById("respuesta_3").innerHTML = data[nombre_curso][num_pregunta].Respuestas[2];
    document.getElementById("respuesta_4").innerHTML = data[nombre_curso][num_pregunta].Respuestas[3];
   
}


function volverPerfil(){
    setTimeout(function () {swal({
                                title: "¡Felicidades, has completado el curso!",
                                text: "Pulsa Ok para volver a tu perfil.",
                                icon: "info",
                                                           
                              })
                              .then((goBack) => {
                                if (goBack) {
                                    window.location.href = "../perfil.php";
                                
                                }
                              });
  }, 300);

}










 