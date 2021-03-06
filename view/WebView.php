<?php 
	class WebView extends View
	{

		function showIndex($usuarios) 
		{
			$this->smarty->assign('usuarios', $usuarios);
			$this->smarty->display('templates/web/index.tpl');
		}

		function showHome() 
		{
			$this->smarty->display('templates/web/home.tpl');
		}

		function showProductos() 
		{
			$this->smarty->display('templates/web/productos.tpl');
		}

		function showComentarios($celulares) 
		{
			$this->smarty->assign('celulares', $celulares);
			$this->smarty->display('templates/web/comentarios.tpl');
		}

		function showCaracteristicas($celulares, $marcas, $usuarios, $comentarios) 
		{
			$this->smarty->assign('celulares', $celulares);
			$this->smarty->assign('marcas', $marcas);
			$this->smarty->assign('usuarios', $usuarios);
			$this->smarty->assign('comentarios', $comentarios);
			$this->smarty->display('templates/web/caracteristicas.tpl');
		}

		function showCaracteristicasCelular($id_celular, $celular, $celulares, $usuarios, $marcas, $comentarios, $imagenes)
		{
			$this->smarty->assign('id_celular', $id_celular);
			$this->smarty->assign('celular', $celular);
			$this->smarty->assign('celulares', $celulares);
			$this->smarty->assign('usuarios', $usuarios);
			$this->smarty->assign('marcas', $marcas);
			$this->smarty->assign('comentarios', $comentarios);
			$this->smarty->assign('imagenes', $imagenes);
			$this->smarty->display('templates/web/caracteristicascelular.tpl');
		}

		function showContacto() 
		{
			$this->smarty->display('templates/web/contacto.tpl');
		}

		function showCelularesFiltrados($celulares, $marcas, $id_marca, $imagenes)
		{
			$this->smarty->assign('id_marca', $id_marca);
			$this->smarty->assign('celulares', $celulares);
			$this->smarty->assign('marcas', $marcas);
			$this->smarty->assign('celulares', $celulares);
			$this->smarty->assign('imagenes', $imagenes);
			$this->smarty->display('templates/web/filtrocelulares.tpl');
		}
	}
 ?>