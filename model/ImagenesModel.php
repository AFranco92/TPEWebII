<?php 
	class ImagenesModel extends Model
	{

		function getImagenes()
		{
			$sentencia = $this->db->prepare('SELECT * FROM Imagen');
			$sentencia->execute();
			return $sentencia->fetchAll(PDO::FETCH_ASSOC);
		}
		
		function deleteImagen($id_imagen) 
		{
			$sentencia = $this->db->prepare('DELETE FROM Imagen WHERE id_imagen = ?');
			$sentencia->execute([$id_imagen]);
		}
	}
 ?>