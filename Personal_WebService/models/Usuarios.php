<?php
class Usuario extends conectar{
    public function get_usuarios(){
        $conectar= parent::conexion();
        parent::set_names();
        $sql = "SELECT * FROM usuarios";
        $sql = $conectar->prepare($sql);
        $sql->execute();
        return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC);
    }
    }

?>