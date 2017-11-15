$(document).ready(function(){

    $(".cargarcaracteristicas, .dofilter").on("click", function() {
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

                            $(".comment").on("click", function() {
                                alert("anda botón");
                            });

                            // function guardarComentario(comentario) {
                            //     $.ajax({
                            //         "method": "POST",
                            //         "data": comentario,
                            //         "url": "api/comentarios"
                            //     })
                            //     .done(function(comentario) {
                            //         console.log(comentario);
                            //         crearComentario(comentario);
                            //     })
                            //     .fail(function() {
                            //         alert("Error al guardar comentario");
                            //     });
                            // }

                            // function getFormData($form){
                            //     let unindexed_array = $form.serializeArray();
                            //     let indexed_array = {};
                            //     $.map(unindexed_array, function(n, i){
                            //         indexed_array[n['name']] = n['value'];
                            //     });
                            //     return indexed_array;
                            // }

                            // $(".comentar").submit(function(event){
                            //     event.preventDefault();
                            //     formData = JSON.stringify(getFormData($(this)));
                            //     guardarComentario(formData);
                            // });

                            function cargarComentarios(){
                                $.ajax("api/comentarioscelular/"+fk_id_celular)
                                .done(function(comentarios) {
                                    $("td.comentario").remove();
                                    for (var key in comentarios) {
                                        $('.comentariousuario').append(crearComentario(comentarios[key]));
                                    }
                                })
                                .fail(function() {
                                    $('.comentariousuario').append('<td>Imposible cargar los comentarios</td>');
                                });
                            }
                            setInterval(cargarComentarios, 2000);
                        }
                    });
                });            
            }
        }); 
    });   
});

    // let templateComentario;

    // $.ajax({ url: 'js/templates/comentario.mst'}).done( template => templateComentario = template);

    // function cargarComentarios() {
    //     $.ajax("api/comentarioscelular"+fk_id_celular)
    //     .done(function(comentarios) {
    //         let rendered = Mustache.render(templateTarea, comentarios);
    //         $('.comentariousuario').append(rendered);
    //     })
    //     .fail(function() {
    //         $('.comentariousuario').append('<td>Imposible cargar los comentarios</td>');
    //     });
    // }

    // function crearComentario() {
    //     let comentario = {
    //         "fk_puntaje" : $(".fk_puntaje").val(),
    //         "fk_id_celular" : $(".fk_id_celular").val(),
    //         "fk_id_usuario" : $(".fk_id_usuario").val(),
    //         "fk_usuario" : $(".fk_usuario").val(),
    //         "textocomentario" : $(".textocomentario").val()
    //     };

    //     $.ajax({
    //         method: "POST",
    //         url: "api/comentarios",
    //         data: JSON.stringify(comentario)
    //     })
    //     .done(function(data) {
    //       let rendered = Mustache.render(templateComentario , data);
    //       $('.comentariousuario').append(rendered);
    //     })
    //     .fail(function(data) {
    //         console.log(data);
    //         alert('No se pudo crear el comentario');
    //     });
    // }

    // $('.comment').click(function(event){
    //     event.preventDefault();
    //     crearComentario();
    // });
    // cargarComentarios();