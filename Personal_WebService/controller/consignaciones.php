<?php
require_once("../config/conexion.php");
require_once("../models/Consignaciones.php");
$consignaciones  = new Consignaciones();

switch($_GET["op"]){
    case "GetAll":
        $datos=$consignaciones->get_consignaciones();
        echo json_encode($datos);
        break;
}

?>