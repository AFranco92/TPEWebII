<?php
/* Smarty version 3.1.30, created on 2017-09-14 05:31:32
  from "/opt/lampp/htdocs/WEB/WebII/CodeosTPs/TPE/templates/form.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_59b9f8145982e3_93156442',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '0b2cd2ff11f5b920bcc5375a459d4b18c5c5a922' => 
    array (
      0 => '/opt/lampp/htdocs/WEB/WebII/CodeosTPs/TPE/templates/form.tpl',
      1 => 1505359874,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_59b9f8145982e3_93156442 (Smarty_Internal_Template $_smarty_tpl) {
?>
<div class="row">
	<div class="col-xs-4 col-xs-offset-4 col-md-4 col-md-offset-4">
      <form class="ingreso form-signin">
        <label for="inputText" class="sr-only">Usuario</label>
        <input type="text" id="inputText" class="form-control" placeholder="Usuario" required autofocus>
        <label for="inputPassword" class="sr-only">Contraseña</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="Contraseña" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Ingresar</button>
      </form>
    </div>
</div><?php }
}
