<?php 	
	class ComentariosView extends View
	{
		function showComentarios($comentarios)
		{
			$this->smarty->assign('comentarios', $comentarios);
			$this->smarty->display('templates/comentarios/index.tpl');
		}
	}
 ?>