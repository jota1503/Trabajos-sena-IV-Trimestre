<?php
header('Content-Type: application/json');
require_once("../config/conexion.php");
require_once("../models/Usuarios.php");
$usuarios  = new Usuarios();

$body = json_decode(file_get_contents("php://input"), true);

switch($_GET["op"]){
    case "GetAll":
        $datos = $usuarios->get_usuarios();
        echo json_encode($datos);
        break;
        case "Getid":
            $datos=$usuarios->get_usuarios_x_id($body["id"]);
            echo json_encode($datos);
       break;


       case "Insert":
           $datos=$usuarios->insert_usuarios($body["id"],$body["nombre"],$body["apellido"],$body["tipo_documento"],$body["numero_documento"],$body["correo"],$body["telefono"],$body["fecha_nacimiento"],$body["rol"],$body["contrasena"]);
           echo json_encode("Insert Correcto");
      break;


      case "Update":
       $datos=$usuarios->update_usuarios($body["nombre"],$body["apellido"],$body["tipo_documento"],$body["numero_documento"],$body["correo"],$body["telefono"],$body["fecha_nacimiento"],$body["rol"],$body["contrasena"],$body["id"]);
       echo json_encode("Update Correcto");
  break;


      case "Delete":
       $datos=$usuarios->delete_usuarios($body["id"]);
       echo json_encode("Delete Correcto");
break;

}

?>