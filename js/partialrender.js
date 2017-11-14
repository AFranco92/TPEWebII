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
				$(".vercaracteristicascelular").on("click", function() {
					$.ajax({
						"url" : "caracteristicascelular/"+this.id,
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

	$(".abmUsuarios").on("click", function() {
		$.ajax({
			"url" : "usuarios",
			"method" : "GET",
			"dataType" : "HTML",
			"success" : function(data) {
				$(".contenedorabm").html(data);
			}
		});
	});

	$(".abmComentarios").on("click", function() {
		$.ajax({
			"url" : "abmcomentarios",
			"method" : "GET",
			"dataType" : "HTML",
			"success" : function(data) {
				$(".contenedorabm").html(data);
			}
		});
	});

	//Fin código navegación web con partial render.
	
	$('img#captcha-refresh').click(function() {
		change_captcha();
 	});
 
	function change_captcha()
	{
		document.getElementById('captcha').src="get_captcha.php?rnd=" + Math.random();
	}
});