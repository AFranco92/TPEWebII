<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>SIERRACEL</title>
	</head>
	<body>
		<header>
			<nav class="navbar navbar-inverse">
			  <div class="container-fluid">
			  	{foreach from=$usuarios item=usuario}
			  	{if $usuario['online']}
			  		<div class="userdiv">Bienvenido <span class="user">{$usuario['usuario']} </span><a href="#">| Salir |</a></div>
			  	{/if}
			  	{/foreach}
			    <div class="navbar-header">
			      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			      </button>
			      <a class="navbar-brand cargarhome" href="#">SIᕮᖇᖇᗩᑕᕮᒪ</a>
			    </div>
			    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			      <ul class="nav navbar-nav">
			        <!-- <li><a href="#" class="cargarproductos">Productos</a></li> -->
			        <li><a href="#" class="cargarcaracteristicas">Características detalladas de los productos</a></li>
			      </ul>
			      <ul class="nav navbar-nav navbar-right">
			      	<li><a href="#" class="cargarlogin">Ingresar</a></li>
			        <li><a href="#" class="cargarcontacto">Contactanos</a></li>
			      </ul>
			    </div>
			  </div>
			</nav>
		</header>
		<div class="row">
			<div class="col-md-12 col-xs-12">
				<div class="contenedor">
					<h1 class="tituloempresa">SIᕮᖇᖇᗩᑕᕮᒪ</h1>
					<section class="presentacion">
						<p>¿Querés sentirte seguro al comprar un celular?</p>
						<p>¿Buscás un celular con una garantía de 3 años?</p>
						<p>¿No encontrás un servicio post-venta personalizado y completo?</p>
						<p>Acá encontrarás todo eso y más... Te invitamos a recorrer la web para que te informes sobre los productos de SIᕮᖇᖇᗩᑕᕮᒪ, así como también las opiniones de la gente que nos eligió y nos elige.</p>
					</section>
				</div>
			</div>
		</div>
		<footer>
			<div class="row">
				<div class="col-md-12 col-xs-12">
					<p class="copyright">Copyright© 1995-2017 SIERRACEL Todos los derechos reservados.</p>
					<a class="linkfooter" href="">Privacidad</a>
					<a class="linkfooter" href="">Legales</a>
					<p class="telefono">Tel.: 0249154000000</p>
				</div>			
			</div>
		</footer>
		<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
		<script type="text/javascript" src="js/mustache.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
		<script type="text/javascript" src="js/celulares.js"></script>
		<script type="text/javascript" src="js/rest.js"></script>
	</body>
</html>