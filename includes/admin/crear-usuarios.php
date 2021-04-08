<?php
/* AGregado los tempaltes de la plantilla */
  include_once "functions/funciones.php";
  include_once "templates/header.php";
  include_once "templates/barra.php";
  include_once "templates/navegacionLateral.php"; 

?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Usuarios Amora
      <small>llena el formulario para crear el usuario</small>
    </h1>
  </section>

  <div class="row">
    <div class="col-md-8">
      <!-- Main content -->
      <section class="content">
        <!-- Default box -->
        <div class="box">
          <div class="box-header with-border">
            <h3 class="box-title">Crear Usuario</h3>
          </div>
          <div class="box-body">
            <!-- form start -->
            <form role="form" name="crear-usuario" id="crear-usuario" method="post" action="insertar-usuario.php">
              <div class="box-body">
                <div class="form-group">
                  <label for="correo">Correo Electronico</label>
                  <input autocomplete ="off" type="email" class="form-control" id="correo" name="correo" placeholder="Ingresa tu correo">
                </div>
                <div class="form-group">
                  <label for="nombre">Nombre</label>
                  <input autocomplete ="off" type="text" class="form-control" id="nombre" name="nombre"
                    placeholder="Ingresa tu nombre completo">
                </div>
                <div class="form-group">
                  <label for="password">Contrasena</label>
                  <input autocomplete ="off" type="password" class="form-control" id="password" name="contrasena"
                    placeholder="Contrasena para iniciar sesion">
                </div>
                <div class="box-footer">
                  <input type="hidden" name="agregar-usuario" value="1">
                  <button type="submit" class="btn btn-primary">Enviar</button>
                </div>
            </form>
          </div>
          <!-- /.box-body -->
        </div>
        <!-- /.box -->
      </section>
      <!-- /.content -->
    </div>
  </div>
</div>
<!-- /.content-wrapper -->

<?php
/* AGregado los tempaltes de la plantilla */
  include_once "templates/footer.php";

?>