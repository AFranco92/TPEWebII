<?php 
	class LoginView extends View {

		function showLogin($error = '') {
			$this->smarty->assign('error', $error);
			$this->smarty->display('templates/login/login.tpl');
		}
	}
 ?>