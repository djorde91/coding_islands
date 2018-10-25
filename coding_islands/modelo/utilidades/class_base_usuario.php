<?php
require_once (__DIR__ . "/class_conexion.php");

class Base_Usuario {

    protected $conn;

    public function __construct(){

      $this->conn = new Conexion();
      $this->conn->conectar();
    }

    public function sanear_datos($data) {

        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }


    public function select_registro($p_user, $p_email){ 

      $stmt = $this->conn->ejecutar_consulta("SELECT Nombre_usuario, Email FROM usuarios WHERE Nombre_usuario=:username OR Email=:email");
      $stmt->execute(array(':username'=>$p_user, ':email'=>$p_email));
      $filas = $stmt->fetch(PDO::FETCH_ASSOC);

      return $filas;

    }

    //Esta función hace un Select del nombre_usuario, Alias y email de los usuarios, siempre que exista una coincidencia con los datos introducidos en el formulario se sumara +1 a un contador dentro de un while. 

    //Seguidamente con condicionales verificaremos si esta coincidencia se debe a que estos datos coinciden con el de la $_SESSION actual. si es así las variables de permisos devolveran true, y el usuario pasará el filtro. 

    //En caso contrario nos devolverá error, ya que la información introducida ya existe en la base de datos y no corresponde al usuario logeado en ese momento.
    public function select_modificar($p_user, $p_email){ 

      $stmt = $this->conn->ejecutar_consulta("SELECT Nombre_usuario, Alias, Email FROM usuarios WHERE Email=:email OR Alias =:alias OR Nombre_usuario=:username");
      $stmt->execute(array(':username'=>$p_user, ':alias'=>$p_user, ':email'=>$p_email));
      
      $contador_email = 0;
      $contador_Nombre_usuario = 0;
      $contador_Alias = 0;

      $permiso_Email = true;
      $permiso_Nombre_usuario = true;
      $permiso_Alias = true;

      
      while($filas = $stmt->fetch(PDO::FETCH_ASSOC)) { //Si la consulta devuelve 0 filas no se entrará en este while.
            
            if ($filas['Nombre_usuario'] == $p_user) {
              $contador_Nombre_usuario++;
              
            }
            if ($filas['Alias'] == $p_user) {
              $contador_Alias++;
              
            }
            if ($filas['Email'] == $p_email ) {
              $contador_email++;
                   
            }

      }


      if ($contador_email > 0) {

          $permiso_Email = false;
          if ( $p_email == $_SESSION['email'] ) {

                $permiso_Email = true;
           }
                        
      }

      if ($contador_Alias > 0) {

          $permiso_Alias = false;
           if ( $p_user == $_SESSION['session_alias'] ) {

                $permiso_Alias = true;
                
            }
                        
     }

      if ($contador_Nombre_usuario > 0) {

        $permiso_Nombre_usuario = false;
           if ( $p_user == $_SESSION['session_usuario'] ) {

                $permiso_Nombre_usuario = true;
                
            }
                        
      }

      $array_contadores_permisos = array(
        "contador_Nombre_usuario" => $contador_Nombre_usuario,
        "contador_Alias" => $contador_Alias,
        "contador_email" => $contador_email,

        "permiso_Nombre_usuario" => $permiso_Nombre_usuario,
        "permiso_Alias" => $permiso_Alias,
        "permiso_Email" => $permiso_Email,
      );

      return $array_contadores_permisos;

    }


    public function select_puntos_usuario($p_username){ 

        $stmt = $this->conn->ejecutar_consulta("SELECT Puntos FROM usuarios WHERE Nombre_usuario = '$p_username' ");
        $stmt->execute(array());
        while($registro = $stmt->fetch(PDO::FETCH_ASSOC)){

              $puntos = $registro['Puntos'] . " puntos";
                 return $puntos;
              } 
      }

    public function select_puntos_rankings($p_limit){

        $stmt = $this->conn->ejecutar_consulta("SELECT Nombre_usuario, Puntos FROM usuarios ORDER BY Puntos DESC LIMIT $p_limit"); 
        $stmt->execute(array());

          $array_rankings = array(); 
          $contador = 0;
          while($registro = $stmt->fetch(PDO::FETCH_ASSOC)){

            $array_rankings[$contador] = $registro;
            $contador++;

          } 
        return $array_rankings;
    }

}


?>
