<?php
/* Smarty version 3.1.30, created on 2017-09-21 06:11:21
  from "/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/categorias/formCreateCategoria.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_59c33be91a6b87_32898323',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '0ba99eb2e32ad77a5e8e55621823ad06c3098ccd' => 
    array (
      0 => '/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/categorias/formCreateCategoria.tpl',
      1 => 1505967073,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:../header.tpl' => 1,
    'file:../footer.tpl' => 1,
  ),
),false)) {
function content_59c33be91a6b87_32898323 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:../header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<a href="categorias">ABM Categorías</a> |
<a href="home">ABM Celulares</a>
<div class="row">
	<div class="col-xs-4 col-xs-offset-4 col-md-4 col-md-offset-4">
    <?php if (isset($_smarty_tpl->tpl_vars['error']->value)) {?>
      <div class="alert alert-danger" role="alert"><?php echo $_smarty_tpl->tpl_vars['error']->value;?>
</div>
    <?php }?>
      	<form action="setCategoria" method="POST" class="create form-signin">
        	<input type="text" name="id_marca" id="inputText" class="form-control" placeholder="id_marca" required autofocus>
        	<input type="text" name="nombre" id="inputText" class="form-control" placeholder="nombre" required autofocus>
          <input type="text" name="descripcion" id="inputText" class="form-control" placeholder="descripcion" required autofocus>
        	<button class="btn btn-lg btn-primary btn-block" type="submit">Cargar</button>
      	</form>
    </div>
</div>
<?php $_smarty_tpl->_subTemplateRender("file:../footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
