$(document).ready(function() {

	"use strict";

//Comienzo código navegación web con partial render.

	$(".cargarhome").on("click", function() {
		$.ajax({
			"url" : "home",
			"method" : "GET",
			"dataType" : "HTML",
			"success" : function(data) {
				$(".contenedor").html(data);
			}
		});
	});

	$(".cargarlogin").on("click", function() {
		$.ajax({
			"url" : "login",
			"method" : "GET",
			"dataType" : "HTML",
			"success" : function(data) {
				$(".contenedor").html(data);
			}
		});
	});

	$(".cargarcomentarios").on("click", function() {
		$.ajax({
			"url" : "comentarios",
			"method" : "GET",
			"dataType" : "HTML",
			"success" : function(data) {
				$(".contenedor").html(data);
			}
		});
	});

	$(".cargarcaracteristicas").on("click", function() {
		$.ajax({
			"url" : "caracteristicas",
			"method" : "GET",
			"dataType" : "HTML",
			"success" : function(data) {
				$(".contenedor").html(data);
				$(".dofilter").on("click", function() {
					$.ajax({
						"url" : "filter",
						"method" : "GET",
						"dataType" : "HTML",
						"success" : function(data) {
							$(".contenedor").html(data);
						}
					});
				});
			}
		});
	});

	$(".cargarcontacto").on("click", function() {
		$.ajax({
			"url" : "contacto",
			"method" : "GET",
			"dataType" : "HTML",
			"success" : function(data) {
				$(".contenedor").html(data);
				$(".suscripcion").hide();
				$(".quierosuscribirme").on("click", function (){
					$(".suscripcion").show();
				});
			}
		});
	});

	$(".abmCelulares").on("click", function() {
		$.ajax({
			"url" : "celulares",
			"method" : "GET",
			"dataType" : "HTML",
			"success" : function(data) {
				$(".contenedorabm").html(data);
				$(".addCelular").on("click", function() {
					$.ajax({
						"url" : "addCelular",
						"method" : "GET",
						"dataType" : "HTML",
						"success" : function(data) {
							$(".contenedorabm").html(data);
						}
					});
				});
			}
		});
	});

	$(".abmMarcas").on("click", function() {
		$.ajax({
			"url" : "marcas",
			"method" : "GET",
			"dataType" : "HTML",
			"success" : function(data) {
				$(".contenedorabm").html(data);
				$(".addMarca").on("click", function() {
					$.ajax({
						"url" : "addMarca",
						"method" : "GET",
						"dataType" : "HTML",
						"success" : function(data) {
							$(".contenedorabm").html(data);
						}
					});
				});
			}
		});
	});

	//Final código navegación web con partial render.

	//Pruebo rest.

	$(".probandorest").on("click", function() {
		$.ajax({
			"url" : "",
			"method" : "GET",
			"dataType" : "HTML",
			"success" : function(data, textStatus, jqXHR) {

				function cargarTabla(data) {
					let html = "";
					for (let i = 0; i < data.length; i++) {
						html +="<table><tbody><tr>";
			      		html += "<td>"+data[i].modelo+"</td>";
			      		html += "<td>"+data[i].caracteristicas+"</td>";
			      		html += "<td>"+data[i].precio+"</td></tr></tbody></table>";
			      		console.log(data);
			      		$(".contenedor").html(html);
					}
				}

				function obtenerDatos(){
      				$.ajax({
        				"url" : "http://localhost/WEB/WebII/TPEWebII/api/celulares",
        				"method" : "GET",
        				"dataType" : "JSON",
        				"success" : cargarTabla,
        				"error" : function(xmlhr, r, error){
          				console.log(error);
        				}
      				});
  				}

  				$(".probandorest").on("click",obtenerDatos);
	    			function subidaConExito(data){
	      				console.log(data);
	      				obtenerDatos();
	    			}
    			subidaConExito(data);
			}
		});
	});
});