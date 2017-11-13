<?php 
	
	class ComentariosModel extends Model {

		function getComentarios() {
			$sentencia = $this->db->prepare('SELECT * FROM Comentario');
			$sentencia->execute();
			return $sentencia->fetchAll(PDO::FETCH_ASSOC);
		}

		function getComentariosCelular($fk_id_celular) {
			$sentencia = $this->db->prepare('SELECT * FROM Comentario WHERE fk_id_celular = ?');
			$sentencia->execute([$fk_id_celular]);
			return $sentencia->fetchAll(PDO::FETCH_ASSOC);
		}

		function getComentariosUsuario($fk_id_usuario) {
			$sentencia = $this->db->prepare('SELECT * FROM Comentario WHERE fk_id_usuario = ?');
			$sentencia->execute([$fk_id_usuario]);
			return $sentencia->fetchAll(PDO::FETCH_ASSOC);
		}

		function getComentario($id_comentario) {
			$sentencia = $this->db->prepare('SELECT * FROM Comentario WHERE id_comentario = ?');
			$sentencia->execute([$id_comentario]);
			return $sentencia->fetch(PDO::FETCH_ASSOC);
		}

		function setComentario($fk_id_usuario, $fk_usuario, $fk_id_celular, $fk_puntaje, $textocomentario) {
			$sentencia = $this->db->prepare('INSERT INTO Comentario(fk_id_usuario, fk_usuario, fk_id_celular, fk_puntaje, textocomentario) VALUES(?,?,?,?,?)');
			$sentencia->execute([$fk_id_usuario, $fk_usuario, $fk_id_celular, $fk_puntaje, $textocomentario]);
		}

		function deleteComentario($id_comentario) {
			$sentencia = $this->db->prepare('DELETE FROM Comentario WHERE id_comentario = ?');
			$sentencia->execute([$id_comentario]);
		}
	}
 ?>