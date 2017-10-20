<?php
	class ConfigApi {

	    public static $RESOURCE = 'resource';
	    public static $PARAMS = 'params';
	    public static $RESOURCES = [
	      'celulares#GET' => 'CelularesApiController#getCelulares',
	      'celulares#DELETE' => 'CelularesApiController#deleteTarea',
	      'marcas#GET' => 'MarcasApiController#getMarcas'
	    ];
	}
?>