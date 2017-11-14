<?php 
	include_once('model/LoginModel.php');
	include_once('model/UsuariosModel.php');
	include_once('view/LoginView.php');

	class LoginController extends Controller
	{

	  	function __construct()
	  	{
	    	$this->view = new LoginView();
	    	$this->model = new LoginModel();
	    	$this->modelusuarios = new UsuariosModel();
	  	}

	  	public function index()
	  	{
	    	$this->view->showLogin();
	  	}

	  	public function verify()
	  	{
	  		$usuario = $this->modelusuarios->getUsuario($id_usuario);
	      	$userName = $_POST['usuario'];
	      	$password = $_POST['password'];

	      	if(!empty($userName) && !empty($password))
	      	{
	        	$user = $this->model->getUser($userName);
	        	if((!empty($user)) && password_verify($password, $user[0]['password']))
	        	{
	            	session_start();
	            	$_SESSION['USER'] = $userName;
	            	$_SESSION['LAST_ACTIVITY'] = time();
	            	header('Location: '.HOME);
	        	}
	        	else
	        	{
	            	$this->view->showLogin('Usuario o password incorrectos');
	        	}
	     	}
	  	}

	  	public function destroy()
	  	{
	    	session_start();
	    	session_destroy();
	    	header('Location: '.HOME);
	  	}
	}
 ?>