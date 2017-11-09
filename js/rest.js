$(document).ready(function(){

    $(".cargarcaracteristicas, .dofilter").on("click", function() {
        $.ajax({
            "url" : "caracteristicas",
            "method" : "GET",
            "dataType" : "HTML",
            "success" : function(data) {

                let templateComentario;

            	$.ajax({url: 'js/templates/comentarios.mst'}).done(template => templateComentario = template);

            	function crearComentario(comentarios){
                	let rendered = Mustache.render(templateComentario ,{arreglo:comentarios});
                	$('.comentariousuario').append(rendered);
              	}

              	function cargarComentarios(){
                	$.ajax("api/comentarios")
                	.done(function(comentarios) {
                  		$('td').remove();
                  		crearComentario(comentarios);
                	})
                	.fail(function() {
                    	$('.comentariousuario').append('<td>No se pudieron cargar los comentarios</td>');
                	});
              	}

            	function guardarComentario(comentario) {
            		$.ajax({
            			"method": "POST",
            			"data": comentario,
            			"url": "api/comentarios",
            		})
            		.done(function(comentario) {
            			console.log(comentario);
            			crearComentario([comentario]);
            		})
            		.fail(function() {
            			alert("Error al guardar comentario");
            		});
            	}

            	function getFormData($form){
            		let unindexed_array = $form.serializeArray();
            		let indexed_array = {};
            	    $.map(unindexed_array, function(n, i){
            			indexed_array[n['name']] = n['value'];
            		});
            	    return indexed_array;
            	}

            	$(".comentar").submit(function(event){
            		event.preventDefault();
            		formData = JSON.stringify(getFormData($(this)));
            		guardarComentario(formData);
            	});

            	function cargarTabla(comentario) {
            		let element = "<td><div class='panel panel-default'>";
            		element +='<div id="comentario'+comentario['id_celular']+'" class="panel-heading">';
            		element +="<h2 class='panel-title usuario'>";
            		element +=comentario.fk_usuario+"</h2>";
                    element +="</div><div class='panel-body'>";
                    element +="<section>"+comentario.textocomentario+"</section></div></div></td>";
                    return element;
            	}

            	function cargarComentarios() {
              		$.ajax("api/comentarios")
                  	.done(function(comentarios) {
                		for (var key in comentarios) {
                  			$('.comentariousuario').append(crearComentario(comentarios[key]));
                		}
              		})
              		.fail(function() {
                  		$('.comentariousuario').append('<td>Imposible cargar los comentarios</td>');
              		});
            	}
            	cargarComentarios();
            }
        });    
    });
})    