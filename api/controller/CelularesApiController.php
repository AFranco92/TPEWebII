<?php

  require_once('../model/CelularesModel.php');
  require_once('Api.php');

  class CelularesApiController extends Api {
    protected $model;

    function __construct() {
        $this->model = new CelularesModel();
    }

    public function getCelulares($params = []) {
      switch (sizeof($params)) {
        case 0:
          $celulares = $this->model->getCelulares();
          return $this->json_response($celulares, 200);
          break;
        case 1:
          $id_celular = $params[0];
          $celular = $this->model->getCelular($id_celular);
          if($celular)
            return $this->json_response($celular, 200);
          else
            return $this->json_response(false, 404);
        default:
          return $this->json_response(false, 404);
          break;
      }
    }
  }
 ?>
