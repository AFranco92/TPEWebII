<?php 
	include_once 'model/ImagenesModel.php';

	class ImagenesController extends Controller
	{
		function __construct()
		{
			$this->model = new ImagenesModel();
		}

		public function destroy($params)
		{
			$id_imagen = $params[0];
			$this->model->deleteImagen($id_imagen);
			header('Location: '.ABM);
		}
	}
 ?>