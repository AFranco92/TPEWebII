<?php 
	class MarcasModel extends Model {

		function getMarcas() {
			$sentencia = $this->db->prepare('SELECT * FROM Marca');
			$sentencia->execute();
			return $sentencia->fetchAll(PDO::FETCH_ASSOC);
		}

		function getMarca($id_marca){
		    $sentencia = $this->db->prepare('SELECT * FROM Marca WHERE id_marca = ?');
		    $sentencia->execute([$id_marca]);
		    return $sentencia->fetch(PDO::FETCH_ASSOC);
		}

		function setMarca($nombre, $descripcion) {
			$sentencia = $this->db->prepare('INSERT INTO Marca(nombre, descripcion) VALUES(?,?)');
			$sentencia->execute([$nombre, $descripcion]);
			$id = $this->db->lastInsertId();
    		return $this->getMarca($id);
		}

		function deleteMarca($id_marca) {
			$sentencia = $this->db->prepare('DELETE FROM Marca WHERE id_marca = ?');
			$sentencia->execute([$id_marca]);
		}
	}
 ?>