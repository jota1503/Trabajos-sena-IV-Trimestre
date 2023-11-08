<?php
class Consignaciones extends conectar{
    public function get_consignaciones(){
        $conectar= parent::conexion();
        parent::set_names();
        $sql = "SELECT * FROM consignaciones where id_cliente=1";
        $sql = $conectar->prepare($sql);
        $sql->execute();
        return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC);
    }
    }

?>