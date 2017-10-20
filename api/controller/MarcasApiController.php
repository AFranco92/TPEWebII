<?php

  require_once('../model/MarcasModel.php');
  require_once('Api.php');

  class MarcasApiController extends Api 
  {
    protected $model;

    function __construct() 
    {
        $this->model = new MarcasModel();
    }

    public function getMarcas($params = []) 
    {
      switch (sizeof($params)) 
      {
        case 0:
          $marcas = $this->model->getMarcas();
          return $this->json_response($marcas, 200);
          break;
        case 1:
          $id_marca = $params[0];
          $marca = $this->model->getMarca($id_marca);
          if($marca)
            return $this->json_response($marca, 200);
          else
            return $this->json_response(false, 404);
        default:
          return $this->json_response(false, 404);
          break;
      }
    }
  }
 ?>
