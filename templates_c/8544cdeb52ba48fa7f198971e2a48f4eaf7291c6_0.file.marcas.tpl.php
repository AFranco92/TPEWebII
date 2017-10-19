<?php
/* Smarty version 3.1.30, created on 2017-10-19 04:20:07
  from "/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/marcas/marcas.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_59e80bd78c8290_08377835',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '8544cdeb52ba48fa7f198971e2a48f4eaf7291c6' => 
    array (
      0 => '/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/marcas/marcas.tpl',
      1 => 1508379605,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_59e80bd78c8290_08377835 (Smarty_Internal_Template $_smarty_tpl) {
?>
<h2>Marcas</h2>
<p>Se observan todas las marcas:</p>
<div class="row">
<div class="table-responsive col-md-12 col-xs-12">          
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Nombre</th>
        <th>Descripción</th>
        <th><a class="boton addMarca" href="#">[+]</a></th>
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
          <?php echo $_smarty_tpl->tpl_vars['marca']->value['nombre'];?>

        </td>
        <td>
          <?php echo $_smarty_tpl->tpl_vars['marca']->value['descripcion'];?>

        </td>
        <td>
          <a class="boton delete" href="deleteMarca/<?php echo $_smarty_tpl->tpl_vars['marca']->value['id_marca'];?>
">[x]</a>
        </td>
      </tr>
    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

  </tbody>
</table>
</div>
</div><?php }
}
