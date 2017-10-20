<?php 
	class MarcasModel extends Model 
	{

		function getMarcas() 
		{
			$sentencia = $this->db->prepare('SELECT * FROM Marca');
			$sentencia->execute();
			return $sentencia->fetchAll(PDO::FETCH_ASSOC);
		}

		function getMarca($id_marca)
		{
		    $sentencia = $this->db->prepare('SELECT * FROM Marca WHERE id_marca = ?');
		    $sentencia->execute([$id_marca]);
		    return $sentencia->fetch(PDO::FETCH_ASSOC);
		}

		function setMarca($nombre, $descripcion) 
		{
			$sentencia = $this->db->prepare('INSERT INTO Marca(nombre, descripcion) VALUES(?,?)');
			$sentencia->execute([$nombre, $descripcion]);
		}

		function updateMarca(/*parametros*/) 
		{
			$sentencia = $this->db->prepare('UPDATE /*parametros*/./*parametros*/ SET /*parametros*/ = ? WHERE /*parametros*/');	
			$sentencia->execute([/*parametros*/]);
		}

		function deleteMarca($id_marca) 
		{
			$sentencia = $this->db->prepare('DELETE FROM Marca WHERE id_marca = ?');
			$sentencia->execute([$id_marca]);
		}
	}
 ?>