<?php 
  require_once('../model/ComentariosModel.php');
  require_once('Api.php');

  class ComentariosApiController extends Api {
  	protected $model;

  	function __construct() {
      parent::__construct();
      $this->model = new ComentariosModel();
    }

    public function getComentarios($url_params = []) {
    	$comentarios = $this->model->getComentarios();
    	return $this->json_response($comentarios, 200);
    }

    public function getComentariosCelular($url_params = []) {
    	$id_celular = $url_params[":id"];
    	$comentarioscelular = $this->model->getComentariosCelular($id_celular);
    	return $this->json_response($comentarioscelular, 200);
    }

    public function getComentariosUsuario($url_params = []) {
    	$id_usuario = $url_params[":id"];
    	$comentariosusuario = $this->model->getComentariosUsuario($id_usuario);
    	return $this->json_response($comentariosusuario, 200);
    }

    public function getComentario($url_params = []) {
    	$id_comentario = $url_params[":id"];
    	$comentario = $this->model->getComentario($id_comentario);
    	if($comentario) {
    		return $this->json_response($comentario, 200);
    	}
    	else {
    		return $this->json_response(false, 404);
    	}
    }

    public function createComentario($url_params = []) {
    	$body = json_decode($this->raw_data);
    	$id_usuario = $body->id_usuario;
    	$id_celular = $body->id_celular;
    	$textocomentario = $body->textocomentario;
    	$comentario = $this->model->setComentario($id_usuario, $id_celular, $textocomentario);
    	return $this->json_response($comentario, 200);
    }

    public function deleteComentario($url_params = []) {
    	$id_comentario = $url_params[":id"];
    	$comentario = $this->model->getComentario($id_comentario);
    	if($comentario) {
    		$this->model->deleteComentario($id_comentario);
    		return $this->json_response("Borrado exitoso", 200);
    	}
    	else {
    		return $this->json_response(false, 404);
    	}
    }
  }

 ?>