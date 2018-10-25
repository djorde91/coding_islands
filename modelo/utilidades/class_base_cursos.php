<?php
require_once (__DIR__ . "/class_conexion.php");

  class Base_Cursos {

        protected $conn;

        public function __construct(){

          $this->conn = new Conexion();
          $this->conn->conectar();
        }

        public function select_usuarios_curso($p_cursoname, $p_usuario_name){

          $stmt = $this->conn->ejecutar_consulta("SELECT * FROM inscripcion WHERE Nombre_usuario = '$p_usuario_name' AND Nombre_curso = '$p_cursoname' ");  
          $stmt->execute();

          if ($stmt->rowCount() == 0){
              return true;

          }else{
              return false;
            }
     
        }


}


?>
