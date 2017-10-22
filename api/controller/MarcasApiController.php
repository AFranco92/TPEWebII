<?php

  require_once('../model/MarcasModel.php');
  require_once('Api.php');

  class MarcasApiController extends Api {
    protected $model;

    function __construct() {
      parent::__construct();
      $this->model = new MarcasModel();
    }

    public function getMarcas($url_params = []) {
      $marcas = $this->model->getMarcas();
      return $this->json_response($marcas, 200);
    }

    public function getMarca($url_params = []) {
      $id_marca = $url_params[":id"];
      $marca = $this->model->getMarca($id_marca);
      if($marca)
        return $this->json_response($marca, 200);
      else
        return $this->json_response(false, 404);
    }

    public function deleteMarca($url_params = []) {
      $id_marca = $url_params[":id"];
      $marca = $this->model->getMarca($id_marca);
      if($marca)
      {
        $this->model->deleteMarca($id_marca);
        return $this->json_response("Borrado exitoso.", 200);
      }
      else
        return $this->json_response(false, 404);
    }

    public function createMarca($url_params = []) {
      $body = json_decode($this->raw_data);
      $nombre = $body->nombre;
      $descripcion = $body->descripcion;
      $marca = $this->model->setMarca($nombre, $descripcion);
      return $this->json_response($marca, 200);
    }
  }
 ?>
