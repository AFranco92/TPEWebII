<?php 
	include_once 'view/WebView.php';
	include_once 'model/CelularesModel.php';
	include_once 'model/MarcasModel.php';

	class WebController extends Controller {

		function __construct() {
	    	$this->view = new WebView();
	    	$this->modelcelulares = new CelularesModel();
	    	$this->modelmarcas = new MarcasModel();
	  	}

	  	public function index() {
	  		$this->view->showIndex();
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
	  		$this->view->showCaracteristicas($celulares, $marcas);
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