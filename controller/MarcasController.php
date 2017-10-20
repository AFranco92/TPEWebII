<?php 
	include_once 'model/MarcasModel.php';
	include_once 'view/MarcasView.php';

	class MarcasController extends SecuredController 
	{

		function __construct() 
		{
			parent::__construct();
			$this->model = new MarcasModel();
			$this->view = new MarcasView();
		}

		public function index() 
		{
			$marcas = $this->model->getMarcas();
			$this->view->showMarcas($marcas);
		}

		public function create() 
		{
			$this->view->showCreateMarcas();
		}

		public function edit() 
		{
			$this->model->updateMarca();
		}

		public function store() 
		{
			$nombre = $_POST['nombre'];
			$descripcion = $_POST['descripcion'];
			if (isset($_POST['nombre'], $_POST['descripcion']) && !empty($_POST['nombre'])) 
			{
				$this->model->setMarca($nombre, $descripcion);
				header('Location: '.ABM);
			}
			else 
			{
			$this->view->showErrorCreateMarca("El campo nombre es requerido", $nombre, $descripcion);
			}
		}

		public function destroy($params) 
		{
			$id_marca = $params[0];
			$this->model->deleteMarca($id_marca);
			header('Location: '.ABM);
		}
	}
 ?>