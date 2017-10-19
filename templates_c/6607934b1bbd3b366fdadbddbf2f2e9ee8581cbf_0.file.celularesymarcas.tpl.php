<?php
/* Smarty version 3.1.30, created on 2017-09-26 17:23:13
  from "/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/celularesymarcas.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_59ca70e149fe57_81180723',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '6607934b1bbd3b366fdadbddbf2f2e9ee8581cbf' => 
    array (
      0 => '/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/celularesymarcas.tpl',
      1 => 1506438978,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:header.tpl' => 1,
    'file:celulares.tpl' => 1,
    'file:marcas.tpl' => 1,
    'file:footer.tpl' => 1,
  ),
),false)) {
function content_59ca70e149fe57_81180723 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

	<div class="row">
		<div class="col-md-6">
			<?php $_smarty_tpl->_subTemplateRender("file:celulares.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

		</div>
		<div class="col-md-6">
			<?php $_smarty_tpl->_subTemplateRender("file:marcas.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

		</div>
	</div>
<?php $_smarty_tpl->_subTemplateRender("file:footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
