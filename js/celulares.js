$(document).ready(function() 
{

	"use strict";

	$(".cargarhome").on("click", function() 
	{
		$.ajax({
			"url" : "home",
			"method" : "GET",
			"dataType" : "HTML",
			"success" : function(data) 
			{
				$(".contenedor").html(data);
			}
		});
	});

	// $(".cargarproductos").on("click", function() {
	// 	$.ajax({
	// 		"url" : "productos",
	// 		"method" : "GET",
	// 		"dataType" : "HTML",
	// 		"success" : function(data) {
	// 			$(".contenedor").html(data);
	// 			$(".info").each(function (){
	// 				$(this).hide();
	// 			});
	// 			$(".masinfo").on("click", function() {	
	// 			  $(this).prev().toggle();
	//       		});
	// 		}
	// 	});
	// });

	$(".cargarlogin").on("click", function() 
	{
		$.ajax({
			"url" : "login",
			"method" : "GET",
			"dataType" : "HTML",
			"success" : function(data) 
			{
				$(".contenedor").html(data);
			}
		});
	});

	$(".cargarcomentarios").on("click", function() 
	{
		$.ajax({
			"url" : "comentarios",
			"method" : "GET",
			"dataType" : "HTML",
			"success" : function(data) 
			{
				$(".contenedor").html(data);
			}
		});
	});

	$(".cargarcaracteristicas").on("click", function() 
	{
		$.ajax({
			"url" : "caracteristicas",
			"method" : "GET",
			"dataType" : "HTML",
			"success" : function(data) 
			{
				$(".contenedor").html(data);
			}
		});
	});

	$(".cargarcontacto").on("click", function() 
	{
		$.ajax({
			"url" : "contacto",
			"method" : "GET",
			"dataType" : "HTML",
			"success" : function(data) 
			{
				$(".contenedor").html(data);
				$(".suscripcion").hide();
				$(".quierosuscribirme").on("click", function ()
				{
					$(".suscripcion").show();
				});
			}
		});
	});

	$(".abmCelulares").on("click", function() 
	{
		$.ajax({
			"url" : "celulares",
			"method" : "GET",
			"dataType" : "HTML",
			"success" : function(data) {
				$(".contenedorabm").html(data);
				$(".addCelular").on("click", function() 
				{
					$.ajax({
						"url" : "addCelular",
						"method" : "GET",
						"dataType" : "HTML",
						"success" : function(data) 
						{
							$(".contenedorabm").html(data);
						}
					});
				});
			}
		});
	});

	$(".abmMarcas").on("click", function() 
	{
		$.ajax({
			"url" : "marcas",
			"method" : "GET",
			"dataType" : "HTML",
			"success" : function(data) {
				$(".contenedorabm").html(data);
				$(".addMarca").on("click", function() 
				{
					$.ajax({
						"url" : "addMarca",
						"method" : "GET",
						"dataType" : "HTML",
						"success" : function(data) 
						{
							$(".contenedorabm").html(data);
						}
					});
				});
			}
		});
	});
});