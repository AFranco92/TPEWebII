{include file='header.tpl'}
{include file='nav.tpl'}
<div class="contenedorabm">
	<div class="jumbotron">
  		<h1>Ingresaste como administrador</h1>
  		<p>Hacé click en los botones del navegador para iniciar la edición del contenido.</p>
	</div>
	<h3>Vista del visitante</h3>
	<div class="row">
  		<div class="col-md-6 col-xs-6">
    		{include file='templates/guestviewcelulares.tpl'}
  		</div>
  		<div class="col-md-6 col-xs-6">
    		{include file='templates/marcas/guestviewmarcas.tpl'}
  		</div>
	</div>
</div>
{include file='footer.tpl'}