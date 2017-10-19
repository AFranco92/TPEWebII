<?php
/* Smarty version 3.1.30, created on 2017-09-21 17:53:54
  from "/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/categorias/categorias.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_59c3e092e1ff81_35190083',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '3e16cb8eff3d0596afb27deb40f0245155477f9b' => 
    array (
      0 => '/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/categorias/categorias.tpl',
      1 => 1506009074,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_59c3e092e1ff81_35190083 (Smarty_Internal_Template $_smarty_tpl) {
?>
<h2>Categorías</h2>
<p>Se observan todas las categorías:</p>
<div class="row">
<div class="col-md-6">          
  <table class="table table-striped">
    <thead>
      <tr>
        <th>id_marca</th>
        <th>Nombre</th>
        <th>Descripción</th>
        <th><a href="addCategoria">[+]</a></th>
      </tr>
    </thead>
    <tbody>
      <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['categorias']->value, 'categoria');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['categoria']->value) {
?>
      <tr>
        <td>
          <?php echo $_smarty_tpl->tpl_vars['categoria']->value['id_marca'];?>

        </td>
        <td>
          <?php echo $_smarty_tpl->tpl_vars['categoria']->value['nombre'];?>

        </td>
        <td>
          <?php echo $_smarty_tpl->tpl_vars['categoria']->value['descripcion'];?>

        </td>
        <td>
          <a class="boton" href="updateCategoria/<?php echo $_smarty_tpl->tpl_vars['categoria']->value['id_marca'];?>
">[Editar]</a>
        </td>
        <td>
          <a class="boton" href="deleteCategoria/<?php echo $_smarty_tpl->tpl_vars['categoria']->value['id_marca'];?>
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
