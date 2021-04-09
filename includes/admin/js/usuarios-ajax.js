$(document).ready(function() {
    /* Crear un usuario y mandar info a la BD */
    $('#crear-usuario').on('submit', function(e) {
        e.preventDefault();
        //lo que hace serializeArray() es iterar en todo los campos y nos crea unos objetos con los datos
        var datos = $(this).serializeArray();
        $.ajax({
            type: $(this).attr('method'),
            data: datos,
            url: $(this).attr('action'),
            dataType: 'json',
            success: function(data) {
                var resultado = data;
                if (resultado.respuesta == 'exito') {
                    swal(
                        'Correcto!',
                        'El usuario se ha creado correctamente',
                        'success'
                    )
                } else {
                    swal(
                        'Ooops!',
                        'No se puede crear un usuario con el mismo correo electronico.',
                        'error'
                    )
                }
            }
        });
    });
    /* Igresar a; sistema de backend mediate el login */
    $('#login-usuario').on('submit', function(e) {
        e.preventDefault();
        //lo que hace serializeArray() es iterar en todo los campos y nos crea unos objetos con los datos
        var datos = $(this).serializeArray();
        $.ajax({
            type: $(this).attr('method'),
            data: datos,
            url: $(this).attr('action'),
            dataType: 'json',
            success: function(data) {
                var resultado = data;
                if (resultado.respuesta == 'si_existe') {
                    swal(
                        'Login Correcto!',
                        'Bienvenid@ ' + resultado.usuario + '!!!',
                        'success'
                    )
                    setTimeout(function() {
                        window.location.href = 'adminAmora.php';
                    }, 2000);
                } else {
                    swal(
                        'Ooops!',
                        'Usuario o contrasena incorrectos',
                        'error'
                    )
                }
            }
        });
    });
});