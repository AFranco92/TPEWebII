{include file='header.tpl'}
{include file='nav.tpl'}
<div class="contenedorabm">
	<div class="jumbotron">
		{foreach from=$usuarios item=usuario}
  		<h1>Bienvenido {$usuario['usuario']}</h1>
  		{/foreach}
  		<p>Hacé click en los botones del navegador para iniciar la edición del contenido.</p>
	</div>
</div>
{include file='footer.tpl'}