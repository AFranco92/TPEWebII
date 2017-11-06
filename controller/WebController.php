<?php 
	include_once 'view/WebView.php';
	include_once 'model/CelularesModel.php';
	include_once 'model/MarcasModel.php';
	include_once 'model/UsuariosModel.php';
	include_once 'model/ComentariosModel.php';

	class WebController extends Controller {

		function __construct() {
	    	$this->view = new WebView();
	    	$this->modelcelulares = new CelularesModel();
	    	$this->modelmarcas = new MarcasModel();
	    	$this->modelusuarios = new UsuariosModel();
	    	$this->modelcomentarios = new ComentariosModel();
	  	}

	  	public function index() {
	  		$usuarios = $this->modelusuarios->getUsuarios();
	  		$this->view->showIndex($usuarios);
	  	}

	  	public function home() {
	  		$this->view->showHome();
	  	}

	  	public function productos() {
	  		$this->view->showProductos();
	  	}

	  	public function comentarios() {
	  		$celulares = $this->modelcelulares->getCelulares();
	  		$this->view->showComentarios($celulares);
	  	}

	  	public function caracteristicas() {
	  		$celulares = $this->modelcelulares->getCelulares();
			$marcas = $this->modelmarcas->getMarcas();
			$usuarios = $this->modelusuarios->getUsuarios();
			$comentarios = $this->modelcomentarios->getComentarios();
	  		$this->view->showCaracteristicas($celulares, $marcas, $usuarios, $comentarios);
	  	}

	  	public function contacto() {
	  		$this->view->showContacto();
	  	}

	  	public function filter() {
	  		if(isset($_POST['afiltrar'])) {
	  			$id_marca = $_POST['afiltrar'];
		  		$celulares = $this->modelcelulares->getCelulares();
		  		$marcas = $this->modelmarcas->getMarcas();
		  		$this->view->showCelularesFiltrados($celulares, $marcas, $id_marca);
		  	}
	  	}
	}
 ?>