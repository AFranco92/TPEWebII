<?php
	class ConfigApi {

	    public static $RESOURCE = 'resource';
	    public static $PARAMS = 'params';
	    public static $RESOURCES = [
	      'celulares#GET' => 'CelularesApiController#getCelulares',
	      'celulares#POST' => 'CelularesApiController#createCelular',
	      'celulares#PUT' => 'CelularesApiController#editCelular',
	      'celulares#DELETE' => 'CelularesApiController#deleteCelular',
	      'marcas#GET' => 'MarcasApiController#getMarcas'
	    ];
	}
?>