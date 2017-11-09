<?php 
	include_once 'model/UsuariosModel.php';
	include_once 'controller/LoginController.php';
	include_once 'view/UsuariosView.php';

	class UsuariosController extends Controller
	{
		function __construct()
		{
			$this->model = new UsuariosModel();
			$this->view = new UsuariosView();
			$this->controllerlogin = new LoginController();
		}

		public function index()
		{
			$usuarios = $this->model->getUsuarios();
			$this->view->showUsuarios($usuarios);
		}

		public function store()
		{
			if (!empty($_POST['usertoregister']) && !empty($_POST['emailtoregister']) && !empty($_POST['passwordtoregister']) && !empty($_POST['confirmpassword']))
			{
				$usuario = $_POST['usertoregister'];
				$mail = $_POST['emailtoregister'];
				$password = $_POST['passwordtoregister'];
				$claveconfirmada = $_POST['confirmpassword'];
				if($password == $claveconfirmada)
				{
					$password = password_hash($password, PASSWORD_DEFAULT);
					$this->model->setUsuario($usuario, $mail, $password);
					session_start();
					header('Location: '.HOME);
				}
				else
				{
					echo "Las contraseñas no coinciden";
				}
			}
			else
			{
				echo "Hay campos vacíos";
			}
		}

		public function setAdmin($params) 
		{
    		$id_usuario = $params[0];
    		$this->model->setAdmin($id_usuario);
    		header('Location: '.ABM);
  		}

  		public function setOnline($params) 
		{
    		$id_usuario = $params[0];
    		$this->model->setOnline($id_usuario);
  		}

		public function destroy($params)
		{
			$id_usuario = $params[0];
			$this->model->deleteUsuario($id_usuario);
			header('Location: '.ABM);
			session_start();
			session_destroy();
		}
	}
 ?>