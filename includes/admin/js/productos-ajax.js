$(document).ready(function() {
    /* Crear un usuario y mandar info a la BD */
    $('#guardar-registro-archivo').on('submit', function(e) {
        e.preventDefault();

        var datos = new FormData(this);

        $.ajax({
            type: $(this).attr('method'),
            data: datos,
            url: $(this).attr('action'),
            dataType: 'json',
            contentType: false,
            processData: false,
            async: true,
            cache: false,
            success: function(data) {
                console.log(data);
                var resultado = data;
                if (resultado.respuesta === 'exito') {
                    swal(
                        'El producto!',
                        'Se agrego correctamente.',
                        'success'
                    );
                    setTimeout(function() {
                        window.location.href = 'listar-productos.php';
                    }, 2000);
                } else {
                    swal(
                        'Ooops!',
                        'No se puede cargar el producto',
                        'error'
                    );
                }
                if (resultado.respuesta === 'actualizar') {
                    swal(
                        'El producto!',
                        'Se edito correctamente.',
                        'success'
                    );
                    setTimeout(function() {
                        window.location.href = 'listar-productos.php';
                    }, 2000);
                }
            }
        });
    });
    /* Eliminar registro */
    $('.borrar_registro').on('click', function(e) {
        e.preventDefault();
        var id = $(this).attr('data-id');
        var producto = $(this).attr('data-tipo');
        swal({
            title: 'Estas seguro?',
            text: "Esta acción no se puede revertir!",
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Si! Eliminar',
            cancelButtonText: 'Cancelar'

        }).then(function(result) {
            console.log(result);
            if (result.value) {
                //console.log("ID:" + id);

                $.ajax({
                    type: 'post',
                    data: {
                        'id': id,
                        'registro': 'eliminar'
                    },

                    url: 'modelo-' + producto + '.php',
                    success: function(data) {
                        //  console.log(data);
                        var resultado = JSON.parse(data);
                        console.log(resultado);
                        if (resultado.respuesta == 'exito') {
                            swal(
                                'Eliminado!',
                                'Registro eliminado',
                                'success'
                            );
                            setTimeout(function() {
                                window.location.href = 'listar-productos.php';
                            }, 1000);
                            jQuery("[data-id='" + resultado.id_eliminado + "'").parents('tr').remove();
                        } else {
                            swal(
                                'Error!',
                                'No se pudo eliminar, intente de nuevo.',
                                'error'
                            );

                        }
                    }
                });
            }
        });

    });
});