<?php
/* Smarty version 3.1.30, created on 2017-09-14 05:21:41
  from "/opt/lampp/htdocs/WEB/WebII/CodeosTPs/TPE/templates/login.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_59b9f5c5ccae41_24122887',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'de52d9d567d2e5ffc6735eb05067560fd41979ed' => 
    array (
      0 => '/opt/lampp/htdocs/WEB/WebII/CodeosTPs/TPE/templates/login.tpl',
      1 => 1505359246,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:form.tpl' => 1,
  ),
),false)) {
function content_59b9f5c5ccae41_24122887 (Smarty_Internal_Template $_smarty_tpl) {
?>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<title><?php echo $_smarty_tpl->tpl_vars['titulo']->value;?>
</title>
	</head>
	<body>
		<h1><?php echo $_smarty_tpl->tpl_vars['titulo']->value;?>
</h1>
		<?php $_smarty_tpl->_subTemplateRender("file:form.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

	</body>
</html><?php }
}
