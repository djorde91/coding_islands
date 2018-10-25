<?php

require_once("utilidades/class_base_usuario.php");

class Usuario extends Base_Usuario { 

    public function __construct() {
          
          parent::__construct();    
         }

    //función para registrar usuarios en la base de datos.
    public function registrar_usuario($p_username, $p_email, $p_password){

      try{

          $hashed_pass = password_hash($p_password, PASSWORD_DEFAULT);
  
            $stmt = $this->conn->ejecutar_consulta("INSERT INTO usuarios(Nombre_usuario, Email, Password, Alias) 
                                                         VALUES(:username, :email, :password, :alias)");

            $stmt->bindparam(":alias", $p_username);                     
            $stmt->bindparam(":username", $p_username);
            $stmt->bindparam(":email", $p_email);
            $stmt->bindparam(":password", $hashed_pass);
              
            $stmt->execute(); 
            
            return $stmt; 
      }catch(PDOException $e)
      {
        echo $e->getMessage();
        echo $e->getLine();
      }       
    }


    public function modificar_usuario($p_alias, $p_email, $p_password) {

      try{
          $hashed_pass = password_hash($p_password, PASSWORD_DEFAULT);

            $stmt = $this->conn->ejecutar_consulta("UPDATE usuarios SET Alias =:alias, Email = :email, Password = :password WHERE Nombre_usuario ='". $_SESSION['session_usuario'] . "'"); 
            $stmt->bindparam(":alias", $p_alias);                                          
            $stmt->bindparam(":email", $p_email);
            $stmt->bindparam(":password", $hashed_pass);                   
              
            $stmt->execute();
     
            return $stmt; 
      }catch(PDOException $e)

      {
        echo $e->getMessage();
        echo $e->getLine();
      }       
    }

    public function borrar_usuario($p_usuario){  // https://stackoverflow.com/questions/2708237/php-mysql-transactions-examples
        //Mi idea era hacer los 3 deletes en una transacción. Pero no funciona.    
      try{
                                         
            $stmt = $this->conn->ejecutar_consulta("DELETE FROM lecciones_curso WHERE Nombre_usuario=:user"); 
            $stmt->bindparam(":user", $p_usuario);                                                           
            $stmt->execute();

            $stmt2 = $this->conn->ejecutar_consulta("DELETE FROM inscripcion WHERE Nombre_usuario=:user"); 
            $stmt2->bindparam(":user", $p_usuario);                                                           
            $stmt2->execute();

            $stmt3 = $this->conn->ejecutar_consulta("DELETE FROM usuarios WHERE Nombre_usuario=:user"); 
            $stmt3->bindparam(":user", $p_usuario);                                                           
            $stmt3->execute();

            return true;       
                        
      }catch(PDOException $e)

      {   
        return false;
        echo $e->getMessage();
        echo $e->getLine();
      }

   }


    public function iniciar_sesion($p_username_email, $p_password){

      try{

        $stmt = $this->conn->ejecutar_consulta("SELECT * FROM usuarios WHERE Alias=:alias OR Email=:email ");
        $stmt->execute(array(':alias'=>$p_username_email, ':email'=>$p_username_email));
        $filas=$stmt->fetch(PDO::FETCH_ASSOC);
            
          if ( ($stmt->rowCount() == 1) && (password_verify($p_password, $filas['Password'])) ) { //en la base de datos, la columna Password debe ser de tipo text o varchar(255), si no la password hasheada no se guardara bien y el password_verify fallará de forma silenciosa. (he tardado 1 hora en descubrirlo.)

              $_SESSION['session_usuario'] = $filas['Nombre_usuario']; 
              $_SESSION['session_alias'] = $filas['Alias'];
              $_SESSION['email'] = $filas['Email'];
              $_SESSION['puntos_usuario'] = $filas['Puntos'];

            return true;

          }else{

            return false; 
          }

        }
        catch(PDOException $e){

            echo $e->getMessage();
            echo $e->getLine();
          }
    }

}

?>
