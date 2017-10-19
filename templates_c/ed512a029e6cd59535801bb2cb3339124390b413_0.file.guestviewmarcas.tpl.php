<?php
/* Smarty version 3.1.30, created on 2017-10-12 15:56:37
  from "/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/marcas/guestviewmarcas.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_59df7495f3dde4_77074565',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ed512a029e6cd59535801bb2cb3339124390b413' => 
    array (
      0 => '/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/marcas/guestviewmarcas.tpl',
      1 => 1507816593,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_59df7495f3dde4_77074565 (Smarty_Internal_Template $_smarty_tpl) {
?>
<h2>Marcas</h2>       
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Nombre</th>
        <th>Descripción</th>
      </tr>
    </thead>
    <tbody>
      <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['marcas']->value, 'marca');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['marca']->value) {
?>
      <tr>
        <td>
          <strong><?php echo $_smarty_tpl->tpl_vars['marca']->value['nombre'];?>
</strong>
        </td>
        <td>
          <?php echo $_smarty_tpl->tpl_vars['marca']->value['descripcion'];?>

        </td>
      </tr>
    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

  </tbody>
</table><?php }
}
