<?php
/* Smarty version 3.1.30, created on 2017-10-19 04:24:57
  from "/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/marcas/formCreateMarca.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_59e80cf987f0c6_69936304',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '3c360c6d16c3afb6ad7e43588f688b33454c0019' => 
    array (
      0 => '/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/marcas/formCreateMarca.tpl',
      1 => 1508379894,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_59e80cf987f0c6_69936304 (Smarty_Internal_Template $_smarty_tpl) {
?>
<div class="row">
	<div class="col-xs-12 col-md-4 col-md-offset-4">
    <?php if (isset($_smarty_tpl->tpl_vars['error']->value)) {?>
      <div class="alert alert-danger" role="alert"><?php echo $_smarty_tpl->tpl_vars['error']->value;?>
</div>
    <?php }?>
      	<form action="setMarca" method="POST" class="create form-signin">
        	<input type="text" name="nombre" id="inputText" class="form-control" placeholder="Nombre" required autofocus>
          <input type="text" name="descripcion" id="inputText" class="form-control" placeholder="Descripcion" required autofocus>
        	<button class="btn btn-lg btn-primary btn-block" type="submit">Cargar</button>
      	</form>
    </div>
</div><?php }
}
