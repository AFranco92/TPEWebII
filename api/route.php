<?php
define('RESOURCE', 0);
define('PARAMS', 1);

include_once 'config/ConfigApi.php';
include_once '../model/Model.php';
include_once 'controller/CelularesApiController.php';
include_once 'controller/MarcasApiController.php';

function parseURL($url) {
  $urlExploded = explode('/', trim($url,'/'));
  $arrayReturn[ConfigApi::$RESOURCE] = $urlExploded[RESOURCE].'#'.$_SERVER['REQUEST_METHOD'];
  $arrayReturn[ConfigApi::$PARAMS] = isset($urlExploded[PARAMS]) ? array_slice($urlExploded,1) : null;
  return $arrayReturn;
}

if(isset($_GET['resource'])) {
  $urlData = parseURL($_GET['resource']);
  $resource = $urlData[ConfigApi::$RESOURCE];
  if(array_key_exists($resource,ConfigApi::$RESOURCES)){
    $params = $urlData[ConfigApi::$PARAMS];
    $controller_method = explode('#',ConfigApi::$RESOURCES[$resource]);
    $controller =  new $controller_method[0]();
    $metodo = $controller_method[1];
    if(isset($params) &&  $params != null){
        echo $controller->$metodo($params);
    }
    else{
        echo $controller->$metodo();
    }
  }
}
?>
