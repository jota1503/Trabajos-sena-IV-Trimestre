<?php
require_once("../config/conexion.php");
require_once("../models/Usuarios.php");
$usuario  = new Usuario();

switch($_GET["op"]){
    case "GetAll":
        $datos=$usuario->get_usuarios();
        echo json_encode($datos);
        break;
}

?>