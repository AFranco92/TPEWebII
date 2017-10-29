<?php

	class UsuariosView extends View
	{
		function showUsuarios($usuarios)
		{
			$this->smarty->assign('usuarios', $usuarios);
			$this->smarty->display('templates/usuarios/index.tpl');
		}
	}
 ?>