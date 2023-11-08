<?php
    header('Content-Type: application/json');

require_once("../config/conexion.php");
require_once("../models/Consignaciones.php");
$consignaciones  = new Consignaciones();

    $body = json_decode(file_get_contents("php://input"), true);

switch($_GET["op"]){
    case "GetAll":
        $datos=$consignaciones->get_consignaciones();
        echo json_encode($datos);
        break;

        case "Getid":
                 $datos=$consignaciones->get_consignaciones_x_id($body["codigo_cliente"]);
                 echo json_encode($datos);
            break;


            case "Insert":
                $datos=$consignaciones->insert_consignaciones($body["Valor"],$body["codigo_cliente"],$body["Fecha_hora"],$body["consignacion_id"]);
                echo json_encode("Insert Correcto");
           break;


           case "Update":
            $datos=$consignaciones->update_consignaciones($body["codigo_cliente"],$body["Valor"]);
            echo json_encode("Update Correcto");
       break;


           case "Delete":
            $datos=$consignaciones->delete_consignaciones($body["codigo_cliente"]);
            echo json_encode("Delete Correcto");
   break;

}

?>