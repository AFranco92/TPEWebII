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
				$(function() {
				    $('#login-form-link').click(function(e) {
						$("#login-form").delay(100).fadeIn(100);
				 		$("#register-form").fadeOut(100);
						$('#register-form-link').removeClass('active');
						$(this).addClass('active');
						e.preventDefault();
					});
					$('#register-form-link').click(function(e) {
						$("#register-form").delay(100).fadeIn(100);
				 		$("#login-form").fadeOut(100);
						$('#login-form-link').removeClass('active');
						$(this).addClass('active');
						e.preventDefault();
					});

				});
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

	$(".cargarcomentarios").on("click", function() {
		$.ajax({
			"url" : "",
			"method" : "GET",
			"dataType" : "HTML",
			"success" : function carga(data, textStatus, jqXHR) {

				function cargarTabla(data) {
					let html = "";
					for (let i = 0; i < data.length; i++) {
						html +="<div class='panel-heading'><h2 class='panel-title usuario'>"+data[i].usuario+"</h2><h5 class='celular'></h4>";
			      		html +="</div><div class='panel-body'>";
			      		html +="<section>"+data[i].textocomentario+"</section></div>";
			      		console.log(data);
			      		$(".comentariousuario").html(html);
					}
				}

				function obtenerDatos(){
      				$.ajax({
        				"url" : "http://localhost/WEB/WebII/TPEWebII/api/comentarios",
        				"method" : "GET",
        				"dataType" : "JSON",
        				"success" : cargarTabla,
        				"error" : function(xmlhr, r, error){
          				console.log(error);
        				}
      				});
  				}

  				$(".cargarcomentarios").on("click",obtenerDatos);
	    			function subidaConExito(data){
	      				obtenerDatos();
	    			}
    			subidaConExito(data);
			}
		});
	});
});