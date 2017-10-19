<?php
/* Smarty version 3.1.30, created on 2017-10-11 15:01:34
  from "/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/login/index.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_59de162eaa1ea4_49701856',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '51e2b5e37b9af05650b19d8ca5c09a4db4d09ccc' => 
    array (
      0 => '/opt/lampp/htdocs/WEB/WebII/9-Acosta-Torrissi-Franco-David/templates/login/index.tpl',
      1 => 1507726878,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:header.tpl' => 1,
    'file:login.tpl' => 1,
    'file:footer.tpl' => 1,
  ),
),false)) {
function content_59de162eaa1ea4_49701856 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<?php $_smarty_tpl->_subTemplateRender("file:login.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<?php $_smarty_tpl->_subTemplateRender("file:footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
