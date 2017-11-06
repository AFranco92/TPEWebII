<?php 
	
	class ComentariosModel extends Model {

		function getComentarios() {
			$sentencia = $this->db->prepare('SELECT * FROM Comentario');
			$sentencia->execute();
			return $sentencia->fetchAll(PDO::FETCH_ASSOC);
		}

		function getComentariosCelular($id_celular) {
			$sentencia = $this->db->prepare('SELECT * FROM Comentario WHERE id_celular = ?');
			$sentencia->execute([$id_celular]);
			return $sentencia->fetchAll(PDO::FETCH_ASSOC);
		}

		function getComentariosUsuario($id_usuario) {
			$sentencia = $this->db->prepare('SELECT * FROM Comentario WHERE id_usuario = ?');
			$sentencia->execute([$id_usuario]);
			return $sentencia->fetchAll(PDO::FETCH_ASSOC);
		}

		function getComentario($id_comentario) {
			$sentencia = $this->db->prepare('SELECT * FROM Comentario WHERE id_comentario = ?');
			$sentencia->execute([$id_comentario]);
			return $sentencia->fetch(PDO::FETCH_ASSOC);
		}

		function setComentario($id_usuario, $usuario, $id_celular, $textocomentario) {
			$sentencia = $this->db->prepare('INSERT INTO Comentario(id_usuario, usuario, id_celular, textocomentario) VALUES(?,?,?,?)');
			$sentencia->execute([$id_usuario, $usuario, $id_celular, $textocomentario]);
		}

		function deleteComentario($id_comentario) {
			$sentencia = $this->db->prepare('DELETE FROM Comentario WHERE id_comentario = ?');
			$sentencia->execute([$id_comentario]);
		}
	}
 ?>