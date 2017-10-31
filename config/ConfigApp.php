<?php
	class ConfigApp{
    	public static $ACTION = 'action';
    	public static $PARAMS = 'params';
    	public static $ACTIONS = [ 
            '' => 'WebController#index',
            'home' => 'WebController#home',
            'productos' => 'WebController#productos',
            'comentarios' => 'WebController#comentarios',
            'caracteristicas' => 'WebController#caracteristicas',
            'filter' => 'WebController#filter',
            'contacto' => 'WebController#contacto',
            'indexabm' => 'CelularesController#indexabm',
            'celulares' => 'CelularesController#index',
            'marcas' => 'MarcasController#index',
            'addMarca' => 'MarcasController#create',
            'setMarca' => 'MarcasController#store',
            'deleteMarca' => 'MarcasController#destroy',
      	    'addCelular' => 'CelularesController#create',
      	    'setCelular' => 'CelularesController#store',
      	    'deleteCelular' => 'CelularesController#destroy',
            'setNoStock' => 'CelularesController#noStock',
            'login' => 'LoginController#index',
            'checkUser' => 'LoginController#verify',
            'logout' => 'LoginController#destroy',
            'register' => 'UsuariosController#store',
            'usuarios' => 'UsuariosController#index',
            'deleteUsuario' => 'UsuariosController#destroy',
            'setAdmin' => 'UsuariosController#setAdmin',
            'setOnline' => 'UsuariosController#setOnline',
            'abmcomentarios' => 'ComentariosController#index',
            'deleteComentario' => 'ComentariosController#destroy'
    	];
	}
?>