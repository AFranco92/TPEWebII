<?php
/* Smarty version 3.1.30, created on 2017-10-19 06:29:23
  from "/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/formCreate.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_59e82a2366a154_96500154',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '1f5f7a7f40e3e4492c0b29b1223ed8b1f937f087' => 
    array (
      0 => '/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/formCreate.tpl',
      1 => 1508385863,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_59e82a2366a154_96500154 (Smarty_Internal_Template $_smarty_tpl) {
?>
<div class="row">
	<div class="col-xs-12 col-md-4 col-md-offset-4">
    <?php if (isset($_smarty_tpl->tpl_vars['error']->value)) {?>
      <div class="alert alert-danger" role="alert"><?php echo $_smarty_tpl->tpl_vars['error']->value;?>
</div>
    <?php }?>
      	<form action="setCelular" method="POST" class="create form-signin">
          <select name="id_marca" class="form-control">
            <option value="" selected disabled hidden>Seleccionar marca</option>
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
        	<input type="text" name="modelo" id="inputText" class="form-control" placeholder="Modelo" required autofocus>
          <textarea name="caracteristicas" id="inputText" class="form-control" placeholder="Características" required autofocus></textarea>
        	<input type="number" name="precio" id="inputNumber" class="form-control" placeholder="Precio" required autofocus>
          Sin stock <input type="checkbox" id="stock" name="stock" value="1">
        	<button class="btn btn-lg btn-primary btn-block add" type="submit">Cargar</button>
      	</form>
    </div>
</div><?php }
}
