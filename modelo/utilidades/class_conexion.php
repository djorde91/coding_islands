<?php

class Conexion {
       //database config
	   private $DB_host = "localhost"; 
	   private $DB_user = "root";
	   private $DB_pass = "";
	   private $DB_name = "coding_islands";

	   protected $conn;

	public function __construct() {

    $db = self::conectar();
    $this->conn = $db;
    }

    public function conectar() //función para conectar.
	{     
        try
		{
            $this->conn = new PDO("mysql:host=" . $this->DB_host . ";dbname=" . $this->DB_name, $this->DB_user, $this->DB_pass);
            $this->conn->exec("set names utf8");
            $this->conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
			$this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);	
        }
		catch(PDOException $e)
		{
            echo "Error de conexión: " . $e->getMessage();
            echo "Error en la línea: " . $e->getLine();;
        }
         
        return $this->conn;
    }

    public function ejecutar_consulta($sql)
  	{

	    $stmt = $this->conn->prepare($sql);
	    return $stmt;

  	}

}