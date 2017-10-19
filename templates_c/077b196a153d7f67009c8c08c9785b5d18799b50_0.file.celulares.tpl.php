<?php
/* Smarty version 3.1.30, created on 2017-10-19 06:03:01
  from "/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/celulares.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_59e823f5aacd46_89529327',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '077b196a153d7f67009c8c08c9785b5d18799b50' => 
    array (
      0 => '/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/celulares.tpl',
      1 => 1508385765,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_59e823f5aacd46_89529327 (Smarty_Internal_Template $_smarty_tpl) {
?>
<h2><?php echo $_smarty_tpl->tpl_vars['titulo']->value;?>
</h2>
<p>Se observan los celulares cargados hasta el momento:</p>
<div class="row">
<div class="table-responsive col-md-12 col-xs-12">          
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Modelo</th>
        <th>Características</th>
        <th>Precio</th>
        <th><a class="boton addCelular" href="#">[+]</a></th>
      </tr>
    </thead>
    <tbody>
      <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['celulares']->value, 'celular');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['celular']->value) {
?>
      <tr>
        <?php if ($_smarty_tpl->tpl_vars['celular']->value['stock']) {?>
        <td>
          <strong><?php echo $_smarty_tpl->tpl_vars['celular']->value['modelo'];?>
</strong>
        </td>
        <td>
          <?php echo $_smarty_tpl->tpl_vars['celular']->value['caracteristicas'];?>

        </td>
        <td>
          <?php echo $_smarty_tpl->tpl_vars['celular']->value['precio'];?>
<p class="stock">Sin stock</p>
        </td>
        <?php } else { ?>
        <td>
          <strong><?php echo $_smarty_tpl->tpl_vars['celular']->value['modelo'];?>
</strong>
        </td>
        <td>
          <?php echo $_smarty_tpl->tpl_vars['celular']->value['caracteristicas'];?>

        </td>
        <td>
          <?php echo $_smarty_tpl->tpl_vars['celular']->value['precio'];?>

        </td>
        <?php }?>
        <td>
          <a class="boton edit" href="setNoStock/<?php echo $_smarty_tpl->tpl_vars['celular']->value['id_celular'];?>
">[Sin stock]</a>
        </td>
        <td>
          <a class="boton delete" href="deleteCelular/<?php echo $_smarty_tpl->tpl_vars['celular']->value['id_celular'];?>
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
