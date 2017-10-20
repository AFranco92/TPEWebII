<?php 
	class LoginModel extends Model {

		function getUser($userName) {
			$sentencia = $this->db->prepare('SELECT * FROM Usuario WHERE usuario = ? LIMIT 1');
    		$sentencia->execute([$userName]);
    		return $sentencia->fetchAll(PDO::FETCH_ASSOC);
		}
	}
 ?>