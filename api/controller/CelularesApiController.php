<?php

  require_once('../model/CelularesModel.php');
  require_once('Api.php');

  class CelularesApiController extends Api {
    protected $model;

    function __construct() {
        parent::__construct();
        $this->model = new CelularesModel();
    }

    public function getCelulares($url_params = []) {
      $celulares = $this->model->getCelulares();
      return $this->json_response($celulares, 200);
    }

    public function getCelular($url_params = []) {
      $id_celular = $url_params[":id"];
      $celular = $this->model->getCelular($id_celular);
      if($celular)
        return $this->json_response($celular, 200);
      else
        return $this->json_response(false, 404);
    }

    public function getCaracteristicas($url_params = []) {
      $id_celular = $url_params[":id"];
      $celular = $this->model->getCelular($id_celular);
      if($celular)
        return $this->json_response($celular["caracteristicas"], 200);
      else
        return $this->json_response(false, 404);
    }

    public function deleteCelular($url_params = []) {
      $id_celular = $url_params[":id"];
      $celular = $this->model->getCelular($id_celular);
      if($celular)
      {
        $this->model->deleteCelular($id_celular);
        return $this->json_response("Borrado exitoso.", 200);
      }
      else
        return $this->json_response(false, 404);
    }

    public function createCelular($url_params = []) {
      $body = json_decode($this->raw_data);
      $modelo = $body->modelo;
      $caracteristicas = $body->caracteristicas;
      $precio = $body->precio;
      $stock = $body->stock;            
      $id_marca = $body->id_marca;
      $celular = $this->model->setCelular($modelo, $caracteristicas, $precio, $stock, $id_marca);
      return $this->json_response($celular, 200);
    }

    public function editCelular($url_params = []) {
      $body = json_decode($this->raw_data);
      $id_celular = $url_params[":id"];
      $id_marca = $body->id_marca;
      $modelo = $body->modelo;
      $caracteristicas = $body->caracteristicas;
      $precio = $body->precio;
      $stock = $body->stock;
      $celular = $this->model->editCelular($id_celular, $modelo, $caracteristicas, $precio, $stock, $id_marca);
      return $this->json_response($celular, 200);
    }

  }
 ?>
