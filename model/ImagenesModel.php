<?php 
	class ImagenesModel extends Model
	{
		
		function deleteImagen($id_imagen) 
		{
			$sentencia = $this->db->prepare('DELETE FROM Imagen WHERE id_imagen = ?');
			$sentencia->execute([$id_imagen]);
		}
	}
 ?>