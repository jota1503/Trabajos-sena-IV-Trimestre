<?php
class Usuarios extends conectar{
    public function get_usuarios(){
        $conectar= parent::conexion();
        parent::set_names();
        $sql = "SELECT * FROM usuarios";
        $sql = $conectar->prepare($sql);
        $sql->execute();
        return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC);
    }

    public function get_usuarios_x_id($id){
        $conectar= parent::conexion();
        parent::set_names();
        $sql = "SELECT * FROM usuarios where id = ?";
        $sql = $conectar->prepare($sql);
        $sql->bindValue(1, $id);
        $sql->execute();
        return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC);
    }

    public function update_usuarios($id, $nombre, $apellido, $tipo_documento, $numero_documento, $correo, $telefono, $fecha_nacimiento, $rol, $contrasena){
        $conectar= parent::conexion();
        parent::set_names();
        $sql = "UPDATE usuarios SET 
    nombre = ?,
    apellido = ?,
    tipo_documento = ?,
    numero_documento = ?,
    correo = ?,
    telefono = ?,
    fecha_nacimiento = ?,
    rol = ?,
    contrasena = ?
WHERE id = ?";

        $sql = $conectar->prepare($sql);
        $sql->bindValue(1, $id);
        $sql->bindValue(2, $nombre);
        $sql->bindValue(3, $apellido);
        $sql->bindValue(4, $tipo_documento);
        $sql->bindValue(5, $numero_documento);
        $sql->bindValue(6, $correo);
        $sql->bindValue(7, $telefono);
        $sql->bindValue(8, $fecha_nacimiento);
        $sql->bindValue(9, $rol);
        $sql->bindValue(10, $contrasena);
        $sql->execute();
        return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC);
    }

    public function insert_usuarios($id, $nombre, $apellido, $tipo_documento, $numero_documento, $correo, $telefono, $fecha_nacimiento, $rol, $contrasena){
        $conectar= parent::conexion();
        parent::set_names();
        $sql = "INSERT INTO usuarios (id, nombre, apellido, tipo_documento, numero_documento, correo, telefono, fecha_nacimiento, rol, contrasena) 
    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        $sql = $conectar->prepare($sql);
        $sql->bindValue(1, $id);
        $sql->bindValue(2, $nombre);
        $sql->bindValue(3, $apellido);
        $sql->bindValue(4, $tipo_documento);
        $sql->bindValue(5, $numero_documento);
        $sql->bindValue(6, $correo);
        $sql->bindValue(7, $telefono);
        $sql->bindValue(8, $fecha_nacimiento);
        $sql->bindValue(9, $rol);
        $sql->bindValue(10, $contrasena);
        $sql->execute();
        return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC);
    }
    
    public function delete_usuarios($id){
        $conectar= parent::conexion();
        parent::set_names();
        $sql = "DELETE from usuarios where
        id = ?";
        $sql = $conectar->prepare($sql);
        $sql->bindValue(1, $id);
        $sql->execute();
        return $resultado=$sql->fetchAll(PDO::FETCH_ASSOC);
    }
    }

?>