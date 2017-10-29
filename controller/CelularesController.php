<?php 
	include_once 'model/CelularesModel.php';
	include_once 'view/CelularesView.php';
	include_once 'model/UsuariosModel.php';

	class CelularesController extends SecuredController {

		function __construct() {
			parent::__construct();
			$this->model = new CelularesModel();
			$this->view = new CelularesView();
			$this->modelmarca = new MarcasModel();
		}

		public function index() {
			$celulares = $this->model->getCelulares();
			$marcas = $this->modelmarca->getMarcas();
			$this->view->showCelulares($celulares, $marcas);
		}

		public function indexabm() {
			$marcas = $this->modelmarca->getMarcas();
			$celulares = $this->model->getCelulares();
			$this->view->showIndex($celulares, $marcas);
		}

		public function create() {
			$marcas = $this->modelmarca->getMarcas();
			$this->view->showCreateCelulares($marcas);
		}

  		public function noStock($params) {
    		$id_celular = $params[0];
    		$this->model->setNoStock($id_celular);
    		header('Location: '.ABM);
  		}

		public function store() {
			$marcas = $this->modelmarca->getMarcas();
			$modelo = $_POST['modelo'];
			$caracteristicas = $_POST['caracteristicas'];
			$precio = $_POST['precio'];
			$stock = isset($_POST['stock']) ? $_POST['stock'] : 0;
			$id_marca = $_POST['id_marca'];
			if (isset($_POST['modelo'], $_POST['caracteristicas'], $_POST['precio'], $_POST['id_marca'])) {
				$this->model->setCelular($modelo, $caracteristicas, $precio, $stock, $id_marca);
				header('Location: '.ABM);
			}
			else {
			$this->view->showErrorCreate("Hay campos vacíos o hubo un error", $marcas, $modelo, $caracteristicas, $precio, $stock, $id_marca);
			}
		}

		public function destroy($params) {
			$id_celular = $params[0];
			$this->model->deleteCelular($id_celular);
			header('Location: '.ABM);
		}
	}
 ?>