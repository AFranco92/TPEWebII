<?php 
	class WebView extends View {

		function showIndex() {
			$this->smarty->display('templates/web/index.tpl');
		}

		function showHome() {
			$this->smarty->display('templates/web/home.tpl');
		}

		function showProductos() {
			$this->smarty->display('templates/web/productos.tpl');
		}

		function showComentarios() {
			$this->smarty->display('templates/web/comentarios.tpl');
		}

		function showCaracteristicas($celulares, $marcas) {
			$this->smarty->assign('celulares', $celulares);
			$this->smarty->assign('marcas', $marcas);
			$this->smarty->display('templates/web/caracteristicas.tpl');
		}

		function showContacto() {
			$this->smarty->display('templates/web/contacto.tpl');
		}
	}
 ?>