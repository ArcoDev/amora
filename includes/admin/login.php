<?php
/* AGregado los tempaltes de la plantilla */
include_once "functions/funciones.php";
include_once "templates/header.php";
?>

<body class="hold-transition login-page">
    <div class="login-box">
        <div class="login-logo">
            <a href="../../index.html"><b>Amora</b> Joyeria</a>
        </div>
        <!-- /.login-logo -->
        <div class="login-box-body">
            <p class="login-box-msg">Inicia sesion</p>

            <form name="login-usuario-form" id="login-usuario" method="post" action="insertar-usuario.php">
                <div class="form-group has-feedback">
                    <input type="email" class="form-control" name = "correo" placeholder="Ingresa tu correo electronico">
                </div>
                <div class="form-group has-feedback">
                    <input type="password" class="form-control" name = "contrasena" placeholder="PasswIngresa tu contrasena">
                </div>
                <div class="row">
                        <div class="col-xs-12">
                            <input type="hidden" name="login-usuario" value="1">
                            <button type="submit" class="btn btn-primary btn-block btn-flat">Ingresar</button>
                        </div>
                </div>
            </form>
        </div>
        <!-- /.login-box-body -->
    </div>

    <?php
/* AGregado los tempaltes de la plantilla */
  include_once "templates/footer.php";

?>