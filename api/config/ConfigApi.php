<?php
	class ConfigApi 
	{

	    public static $RESOURCE = 'resource';
	    public static $PARAMS = 'params';
	    public static $RESOURCES = [
	      'celulares#GET' => 'CelularesApiController#getCelulares',
	      'marcas#GET' => 'MarcasApiController#getMarcas'
	    ];
	    
	}
?>