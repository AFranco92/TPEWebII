$(document).ready(function(){

    $(".cargarcaracteristicas").on("click", function() {
        $.ajax({
            "url" : "caracteristicas",
            "method" : "GET",
            "dataType" : "HTML",
            "success" : function(data) {

                $(".vercaracteristicascelular").on("click", function(){

                    let fk_id_celular = this.id;
            
                    $.ajax({
                        "url" : "caracteristicascelular",
                        "method" : "GET",
                        "dataType" : "HTML",
                        "success" : function(data) {

                            let templateComentario;

                            $.ajax({url: 'js/templates/comentario.mst'}).done(template => templateComentario = template);

                            function crearComentario(comentario){
                                let rendered = Mustache.render(templateComentario, {arreglo:comentario});
                                $('.comentariousuario').append(rendered);
                            }

                            function guardarComentario(comentario) {
                                $.ajax({
                                    "method": "POST",
                                    "data": comentario,
                                    "url": "api/comentarios",
                                    "contentType" : "application/json",
                                    "dataType" : "JSON"
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

                            function cargarComentarios(){
                                $.ajax("api/comentarioscelular/"+fk_id_celular)
                                .done(function(comentarios) {
                                    $(".comentario").remove();
                                    for (var key in comentarios) {
                                        $('.comentariousuario').append(crearComentario(comentarios[key]));
                                    }
                                })
                                .fail(function() {
                                    $('.comentariousuario').append('<div>Imposible cargar los comentarios</div>');
                                });
                                clearInterval(timer);
                            }
                            
                            function load(){
                                cargarComentarios();
                            }
                            
                            let timer = setInterval(load, 2000);
                        }
                    });            
                });
            } 
        });   
    });
});