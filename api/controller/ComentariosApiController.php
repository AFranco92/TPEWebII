<?php 
    require_once('../model/ComentariosModel.php');
    require_once('Api.php');

    class ComentariosApiController extends Api 
    {
  	    protected $model;

        function __construct()
        {
            parent::__construct();
            $this->model = new ComentariosModel();
        }

        public function getComentarios($url_params = [])
        {
    	    $comentarios = $this->model->getComentarios();
    	    return $this->json_response($comentarios, 200);
        }

        public function getComentariosCelular($url_params = [])
        {
    	    $fk_id_celular = $url_params[":id"];
    	    $comentarioscelular = $this->model->getComentariosCelular($fk_id_celular);
    	    return $this->json_response($comentarioscelular, 200);
        }

        public function getComentariosUsuario($url_params = [])
        {
    	    $fk_id_usuario = $url_params[":id"];
    	    $comentariosusuario = $this->model->getComentariosUsuario($fk_id_usuario);
    	    return $this->json_response($comentariosusuario, 200);
        }

        public function getComentario($url_params = [])
        {
    	    $id_comentario = $url_params[":id"];
    	    $comentario = $this->model->getComentario($id_comentario);
    	    if($comentario)
            {
    		    return $this->json_response($comentario, 200);
    	    }
    	    else
            {
    		    return $this->json_response(false, 404);
    	    }
        }

        public function createComentario($url_params = [])
        {
            if(!empty($body))
            {
                $body = json_decode($this->raw_data);
                $fk_id_usuario = $body->fk_id_usuario;
                $fk_usuario = $body->fk_usuario;
                $fk_id_celular = $body->fk_id_celular;
                $fk_puntaje = $body->fk_puntaje;
                $textocomentario = $body->textocomentario;
                $comentario = $this->model->setComentario($fk_id_usuario, $fk_usuario, $fk_id_celular, $fk_puntaje, $textocomentario);
                return $this->json_response($body, 200);
            }
            else
            {
                return $this->json_response(false, 404);
            }
        }

        public function deleteComentario($url_params = [])
        {
    	    $id_comentario = $url_params[":id"];
    	    $comentario = $this->model->getComentario($id_comentario);
    	    if($comentario)
            {
    		    $this->model->deleteComentario($id_comentario);
    		    return $this->json_response("Borrado exitoso", 200);
    	    }
    	    else
            {
    		    return $this->json_response(false, 404);
    	    }
        }
    }
 ?>