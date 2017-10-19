<?php
/* Smarty version 3.1.30, created on 2017-10-13 03:43:54
  from "/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/web/caracteristicas.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_59e01a5ac360d9_24731730',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '25b2c180f78a2369fba0c183df0e93b7421851b1' => 
    array (
      0 => '/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/web/caracteristicas.tpl',
      1 => 1507858443,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:templates/guestviewcelulares.tpl' => 1,
    'file:templates/marcas/guestviewmarcas.tpl' => 1,
  ),
),false)) {
function content_59e01a5ac360d9_24731730 (Smarty_Internal_Template $_smarty_tpl) {
?>
<div class="row">
  <div class="col-md-6 col-xs-6">
    <?php $_smarty_tpl->_subTemplateRender("file:templates/guestviewcelulares.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

  </div>
  <div class="col-md-6 col-xs-6">
    <?php $_smarty_tpl->_subTemplateRender("file:templates/marcas/guestviewmarcas.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

  </div>
</div><?php }
}
