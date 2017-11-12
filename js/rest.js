$(document).ready(function(){

    $(".cargarcaracteristicas, .dofilter").on("click", function() {
        $.ajax({
            "url" : "caracteristicas",
            "method" : "GET",
            "dataType" : "HTML",
            "success" : function(data) {

                let repetidor;
                let templateComentario;

            	$.ajax({url: 'js/templates/comentario.mst'}).done(template => templateComentario = template);

                clearInterval(repetidor);

            	function crearComentario(comentario){
                	let rendered = Mustache.render(templateComentario, {arreglo:comentario});
                	$('.comentariousuario').append(rendered);
              	}

              	function cargarComentarios(){
                	$.ajax("api/comentarios")
                	.done(function(comentario) {
                  		$("td").remove();
                  		crearComentario(comentario);
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
            			crearComentario(comentario);
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
            		element +='<div id="comentario'+comentario['fk_id_celular']+'" class="panel-heading">';
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
                //repetidor = setInterval(cargarComentarios, 2000);	
            }
        }); 
    });   
});

// $(document).ready(function(){
        
//     $(".cargarcaracteristicas, .dofilter").on("click", function() {
//         $.ajax({
//             "url" : "caracteristicas",
//             "method" : "GET",
//             "dataType" : "HTML",
//             "success" : function() {

//                 let templateComentario;

//                 $.ajax({url : 'js/templates/comentario.mst'}).done(template => templateComentario = template);

//                 function createComentario() {
//                     let comentario = {
//                         "fk_id_celular" : $('.fk_id_celular').val(),
//                         "fk_id_usuario" : $('.fk_id_usuario').val(),
//                         "fk_usuario" : $('.fk_usuario').val(),
//                         "textocomentario": $('.textocomentario').val()
//                     }

//                     $.ajax({
//                         "method" : "POST",
//                         "url" : "api/comentarios",
//                         "data" : JSON.stringify(comentario)
//                     })
//                     .done(function(data) {
//                         let rendered = Mustache.render(templateComentario, data);
//                         $('.comentariousuario').append(rendered);
//                     })
//                     .fail(function(data) {
//                         console.log(data);
//                         alert('Imposible crear el comentario');
//                     });
//                 }

//                 $('.comment').click(function(event){
//                     event.preventDefault();
//                     createComentario();
//                 });

//                 function loadComentarios() {
//                     $.ajax("api/comentarios")
//                     .done(function(comentarios) {
//                         let rendered = Mustache.render(templateComentario, comentarios);
//                         $('.comentariousuario').append(rendered);
//                         alert(rendered);
//                     })
//                     .fail(function() {
//                         $('.comentariousuario').append('<td>No se pudieron cargar los comentarios</td>');
//                     });
//                 }

//                 loadComentarios();
//             }
//         });
//     });
// });        