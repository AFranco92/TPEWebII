<?php
/* Smarty version 3.1.30, created on 2017-10-19 06:37:31
  from "/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/guestviewcelulares.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_59e82c0b77baa7_29543578',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ac42e2ba03ee675af081c3d68e910f979c1f67d0' => 
    array (
      0 => '/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/guestviewcelulares.tpl',
      1 => 1508387848,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_59e82c0b77baa7_29543578 (Smarty_Internal_Template $_smarty_tpl) {
?>
<h2><?php echo $_smarty_tpl->tpl_vars['titulo']->value;?>
</h2>
  <form action="filter" method="POST">
    <select name="id_marca" class="form-control filter">
      <option value="" selected disabled hidden>Ver por marca</option>
      <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['marcas']->value, 'marca');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['marca']->value) {
?>
      <option value="<?php echo $_smarty_tpl->tpl_vars['marca']->value['id_marca'];?>
"><?php echo $_smarty_tpl->tpl_vars['marca']->value['nombre'];?>
</option>
      <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

    </select>
    <button class="btn btn-lg btn-primary btn-block dofilter" type="submit">Filtrar</button>
  </form>
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Modelo</th>
        <th>Características</th>
        <th>Precio</th>
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
      </tr>
    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

  </tbody>
</table><?php }
}
