<?php 

	class UsuariosModel extends Model 
	{

		function getUsuarios() 
		{
			$sentencia = $this->db->prepare('SELECT * FROM Usuario');
			$sentencia->execute();
			return $sentencia->fetchAll(PDO::FETCH_ASSOC);
		}

		function getUsuario($id_usuario)
		{
		    $sentencia = $this->db->prepare('SELECT * FROM Usuario WHERE id_usuario = ?');
		    $sentencia->execute([$id_usuario]);
		    return $sentencia->fetch(PDO::FETCH_ASSOC);
		}

		function setUsuario($usuario, $mail, $password) 
		{
			$sentencia = $this->db->prepare('INSERT INTO Usuario(usuario, mail, password) VALUES(?,?,?)');
			$sentencia->execute([$usuario, $mail, $password]);
			$id = $this->db->lastInsertId();
    		return $this->getUsuario($id);
		}

		function deleteUsuario($id_usuario) 
		{
			$sentencia = $this->db->prepare('DELETE FROM Usuario WHERE id_usuario = ?');
			$sentencia->execute([$id_usuario]);
		}

		function setAdmin($id_usuario)
		{
			$sentencia = $this->db->prepare('UPDATE Usuario SET administrador = 1 WHERE id_usuario = ?');
    		$sentencia->execute([$id_usuario]);
		}
	}

 ?>