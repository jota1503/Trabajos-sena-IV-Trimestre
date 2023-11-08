<?php
class Consignaciones extends conectar{
    public function get_consignaciones(){
        $conectar= parent::conexion();
        parent::set_names();
        $sql = "SELECT * FROM consignaciones";
        $sql = $conectar->prepare($sql);
        $sql->execute();
        return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC);
    }

    public function get_consignaciones_x_id($codigo_cliente){
        $conectar= parent::conexion();
        parent::set_names();
        $sql = "SELECT * FROM consignaciones where consignacion_id = ?";
        $sql = $conectar->prepare($sql);
        $sql->bindValue(1, $codigo_cliente);
        $sql->execute();
        return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC);
    }

    public function insert_consignaciones($Valor, $codigo_cliente, $Fecha_hora, $consignacion_id){
        $conectar= parent::conexion();
        parent::set_names();
        $sql = "INSERT INTO consignaciones (Valor,codigo_cliente,Fecha_hora,consignacion_id) VALUES (?, ?, ?, ?);";
        $sql = $conectar->prepare($sql);
        $sql->bindValue(1, $Valor);
        $sql->bindValue(2, $codigo_cliente);
        $sql->bindValue(3, $Fecha_hora);
        $sql->bindValue(4, $consignacion_id);
        $sql->execute();
        return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC);
    }


    public function update_consignaciones($codigo_cliente,$Valor){
        $conectar= parent::conexion();
        parent::set_names();
        $sql = "UPDATE consignaciones set 
        Valor =?
        where
        codigo_cliente = ?";
        $sql = $conectar->prepare($sql);
        $sql->bindValue(1, $Valor);
        $sql->bindValue(2, $codigo_cliente);
        $sql->execute();
        return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC);
    }


    public function delete_consignaciones($codigo_cliente){
        $conectar= parent::conexion();
        parent::set_names();
        $sql = "UPDATE consignaciones set 
        consignacion_id = '0'
        where
        codigo_cliente = ?";
        $sql = $conectar->prepare($sql);
        $sql->bindValue(1, $codigo_cliente);
        $sql->execute();
        return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC);
    }

    }

?> 