<?php
/* Smarty version 3.1.30, created on 2017-10-13 03:44:09
  from "/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/indexabm.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_59e01a690b17c8_82247200',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd1a89af85545456784a8ff79672134231adc2698' => 
    array (
      0 => '/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/indexabm.tpl',
      1 => 1507858819,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:header.tpl' => 1,
    'file:nav.tpl' => 1,
    'file:templates/guestviewcelulares.tpl' => 1,
    'file:templates/marcas/guestviewmarcas.tpl' => 1,
    'file:footer.tpl' => 1,
  ),
),false)) {
function content_59e01a690b17c8_82247200 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<?php $_smarty_tpl->_subTemplateRender("file:nav.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<div class="contenedorabm">
	<div class="jumbotron">
  		<h1>Ingresaste como administrador</h1>
  		<p>Hacé click en los botones del navegador para iniciar la edición del contenido.</p>
	</div>
	<h3>Vista del visitante</h3>
	<div class="row">
  		<div class="col-md-6 col-xs-6">
    		<?php $_smarty_tpl->_subTemplateRender("file:templates/guestviewcelulares.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

  		</div>
  		<div class="col-md-6 col-xs-6">
    		<?php $_smarty_tpl->_subTemplateRender("file:templates/marcas/guestviewmarcas.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

  		</div>
	</div>
</div>
<?php $_smarty_tpl->_subTemplateRender("file:footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
