<?php
/* Smarty version 3.1.30, created on 2017-09-26 17:37:09
  from "/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/celularesandmarcas.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_59ca742529e0e2_81145652',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '152fa101c89709457a16d862f2a962a9c430275f' => 
    array (
      0 => '/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/celularesandmarcas.tpl',
      1 => 1506440228,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:header.tpl' => 1,
    'file:templates/guestviewcelulares.tpl' => 1,
    'file:templates/marcas/guestviewmarcas.tpl' => 1,
    'file:footer.tpl' => 1,
  ),
),false)) {
function content_59ca742529e0e2_81145652 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

	<a href="home">ABM Celulares</a> |
	<a href="marcas">ABM Marcas</a>
	<div class="row">
		<div class="col-md-6">
			<?php $_smarty_tpl->_subTemplateRender("file:templates/guestviewcelulares.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

		</div>
		<div class="col-md-6">
			<?php $_smarty_tpl->_subTemplateRender("file:templates/marcas/guestviewmarcas.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

		</div>
	</div>
<?php $_smarty_tpl->_subTemplateRender("file:footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
