<?php 
	class CelularesModel extends Model {

		function getCelulares() {
			$sentencia = $this->db->prepare('SELECT * FROM Celular');
			$sentencia->execute();
			return $sentencia->fetchAll(PDO::FETCH_ASSOC);
		}

		function getCelular($id_celular){
		    $sentencia = $this->db->prepare('SELECT * FROM Celular WHERE id_celular = ?');
		    $sentencia->execute([$id_celular]);
		    return $sentencia->fetch(PDO::FETCH_ASSOC);
		}

		function setCelular($modelo, $caracteristicas, $precio, $sinstock, $id_marca) {
			$sentencia = $this->db->prepare('INSERT INTO Celular(modelo, caracteristicas, precio, sinstock, id_marca) VALUES(?,?,?,?,?)');
			$sentencia->execute([$modelo, $caracteristicas, $precio, $sinstock, $id_marca]);
		}

		function editCelular($id_celular, $modelo, $caracteristicas, $precio, $sinstock, $id_marca) {
			$sentencia = $this->db->prepare('UPDATE Celular SET modelo=?, caracteristicas=?, precio=?, sinstock=?, id_marca=? WHERE id_celular=?');
    		$sentencia->execute([$id_celular, $modelo, $caracteristicas, $precio, $sinstock, $id_marca]);
    		return $this->getCelular($id_celular);
		}

		function setNoStock($id_celular) {
    		$sentencia = $this->db->prepare('UPDATE Celular SET sinstock = 1 WHERE id_celular = ?');
    		$sentencia->execute([$id_celular]);
  		}

		function deleteCelular($id_celular) {
			$sentencia = $this->db->prepare('DELETE FROM Celular WHERE id_celular = ?');
			$sentencia->execute([$id_celular]);
		}
	}
 ?>