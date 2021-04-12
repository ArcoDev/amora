<?php
/* AGregado los tempaltes de la plantilla */
  include_once "functions/sesiones.php";
  include_once "functions/funciones.php";
  $id = $_GET['id'];
  if(!filter_var($id, FILTER_VALIDATE_INT)) {
    die("Error");
  }
  include_once "templates/header.php";
  include_once "templates/barra.php";
  include_once "templates/navegacionLateral.php"; 

?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Productos Amora
    </h1>
  </section>

  <div class="row">
    <div class="col-md-8">
      <!-- Main content -->
      <section class="content">
        <!-- Default box -->
        <div class="box">
          <div class="box-header with-border">
            <h3 class="box-title">Editar Usuario</h3>
          </div>
          <div class="box-body">
            <?php
                $sql ="SELECT * FROM `productos` WHERE `id_pro` = $id";
                $resultado = $con->query($sql);
                $producto = $resultado->fetch_assoc();
             ?>
            <!-- form start -->
            <form role="form" name="guardar-producto" id="guardar-producto" method="post" action="modelo-productos.php">
              <div class="box-body">
                <div class="form-group">
                  <label for="foto">URL de la foto</label>
                  <input autocomplete="off" type="text" class="form-control" id="foto" name="foto"
                    placeholder="Ingresa la url de la foto, ejemplo: foto.png" value="<?php echo $producto['foto'] ?>">
                </div>
                <div class="form-group">
                  <label for="nombre">Nombre del producto y precio</label>
                  <input autocomplete="off" type="text" class="form-control" id="nombre" name="nombre"
                    placeholder="Ingresa el nombre del producto y su precio, ejemplo: anillo dorado, $250." value="<?php echo $producto['nombre_precio'] ?>">
                </div>
                <!-- select -->
                <div class="form-group">
                  <label>Selecciona una categoria</label>
                  <select name="categoria" class="form-control">
                    <option value="1">1.- Anillos</option>
                    <option value="2">2.- Aretes</option>
                    <option value="3">3.- Collares</option>
                    <option value="4">4.- Pulseras</option>
                  </select>
                </div>
                <div class="box-footer">
                  <input type="hidden" name="registro" value="actualizar">
                  <input type="hidden" name="id_registro" value="<?php echo $id?>">
                  <button type="submit" class="btn btn-primary">Actualizar</button>
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