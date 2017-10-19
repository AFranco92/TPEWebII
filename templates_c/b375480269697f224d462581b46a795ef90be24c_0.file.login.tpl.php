<?php
/* Smarty version 3.1.30, created on 2017-10-13 03:56:52
  from "/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/login/login.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_59e01d6485d0b7_41400538',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'b375480269697f224d462581b46a795ef90be24c' => 
    array (
      0 => '/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/login/login.tpl',
      1 => 1507859804,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_59e01d6485d0b7_41400538 (Smarty_Internal_Template $_smarty_tpl) {
?>
<h2 class="titulologin">Ingresar como administrador</h2>
<div class="row login">
    <div class="col-xs-12 col-md-4 col-md-offset-4">
        <form action='checkUser' method="POST" class="ingreso form-signin">
            <label for="inputText" class="sr-only">Usuario</label>
            <input type="text" name="usuario" id="inputText" class="form-control" placeholder="Usuario" required autofocus>
            <label for="inputPassword" class="sr-only">Contraseña</label>
            <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Contraseña"     required>
            <?php if (!empty($_smarty_tpl->tpl_vars['error']->value)) {?>
            <div class="alert alert-danger" role="alert"><?php echo $_smarty_tpl->tpl_vars['error']->value;?>
</div>
            <?php }?>
            <button class="btn btn-lg btn-success btn-block" type="submit">Ingresar</button>
        </form>
    </div>
</div><?php }
}
