<?php 
	class CelularesModel extends Model
	{

		function getCelulares()
		{
			$celularesImages = [];
			$sentencia = $this->db->prepare('SELECT * FROM Celular');
			$sentencia->execute();
			$celulares = $sentencia->fetchAll(PDO::FETCH_ASSOC);
			foreach ($celulares as $celular)
			{
			    //$celular tiene id_celular, modelo, caracteristicas, precio, sinstock, id_marca
			    $sentencia_imagenes = $this->db->prepare('SELECT * FROM Imagen WHERE fk_id_celular = ?');
			    $sentencia_imagenes->execute([$celular['id_celular']]);
			    $imagenes = $sentencia_imagenes->fetchAll(PDO::FETCH_ASSOC);
			    //imagenes tiene [[id_imagen, ruta],[id_imagen, ruta], [id_imagen, ruta]]
			    $celular['imagenes'] = $imagenes;
			    //celular va a agregar la key 'imagenes', entonces
			    //tiene id_celular, modelo, caracteristicas, precio, sinstock, id_marca, imagenes(arreglo)
			    $celularesImages[] = $celular;
    		}
    		return $celularesImages;
		}

		function getCelular($id_celular)
		{
		    $sentencia = $this->db->prepare('SELECT * FROM Celular WHERE id_celular = ?');
		    $sentencia->execute([$id_celular]);
		    return $sentencia->fetch(PDO::FETCH_ASSOC);
		}

		private function uploadImages($imagenes)
		{
    		$rutas = [];
    		if (is_array($imagenes) || is_object($imagenes))
			{
    			foreach ($imagenes as $imagen)
    			{
      				$destino_final = 'images/' . uniqid() . '.jpg';
      				move_uploaded_file($imagen, $destino_final);
      				$rutas[] = $destino_final;
    			}
    		}
    		return $rutas;
  		}

		function setCelular($modelo, $caracteristicas, $precio, $sinstock, $id_marca, $imagenes)
		{
			$sentencia = $this->db->prepare('INSERT INTO Celular(modelo, caracteristicas, precio, sinstock, id_marca) VALUES(?,?,?,?,?)');
			$sentencia->execute([$modelo, $caracteristicas, $precio, $sinstock, $id_marca]);
			$id_celular = $this->db->lastInsertId();
    		$rutas = $this->uploadImages($imagenes);
    		$sentencia_imagenes = $this->db->prepare('INSERT INTO Imagen(fk_id_celular, ruta) VALUES(?,?)');
    		foreach ($rutas as $ruta)
    		{
      			$sentencia_imagenes->execute([$id_celular, $ruta]);
    		}
		}

		function setImagenes($imagenes, $id_celular)
		{
    		$rutas = $this->uploadImages($imagenes);
    		$sentencia_imagenes = $this->db->prepare('INSERT INTO Imagen(fk_id_celular, ruta) VALUES(?,?)');
    		foreach ($rutas as $ruta) {
      			$sentencia_imagenes->execute([$id_celular, $ruta]);
    		}
		}

		function setNoStock($id_celular)
		{
    		$sentencia = $this->db->prepare('UPDATE Celular SET sinstock = 1 WHERE id_celular = ?');
    		$sentencia->execute([$id_celular]);
  		}

		function deleteCelular($id_celular)
		{
			$sentencia = $this->db->prepare('DELETE FROM Celular WHERE id_celular = ?');
			$sentencia->execute([$id_celular]);
		}
	}
 ?>