<?php
/* Smarty version 3.1.30, created on 2017-09-30 05:09:38
  from "/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/guestview.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_59cf0af20ec8b9_92213059',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '7f737cb9af93fd7597db83ff091a6a3685a35731' => 
    array (
      0 => '/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/guestview.tpl',
      1 => 1506740852,
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
function content_59cf0af20ec8b9_92213059 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<a href="in">Iniciar sesión</a>
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
