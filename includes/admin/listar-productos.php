<?php
/* AGregado los tempaltes de la plantilla */
  include_once "functions/sesiones.php";
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
      Lista de productos
      <small>registrados en la base de datos de amora</small>
    </h1>
  </section>

  <!-- Main content -->
  <section class="content">
    <div class="row">
      <div class="col-xs-12">
        <div class="box">
          <div class="box-header">
            <!--<h3 class="box-title">Maneja los usuarios en esta seccion</h3>-->
          </div>
          <!-- /.box-header -->
          <div class="box-body">
            <table id="registros" class="table table-bordered table-striped">
              <h3 style ="margin-top: -15px">Guia de categorias</h3>
              <div style="display: flex;">
                <p style="margin-right: 10px"><strong>1.- </strong>Anillos</p>
                <p style="margin-right: 10px"><strong>2.- </strong>Aretes</p>
                <p style="margin-right: 10px"><strong>3.- </strong>Collares</p>
                <p style="margin-right: 10px"><strong>4.- </strong>Pulseras</p>
              </div>
              <thead>
                <tr>
                  <th>Url foto</th>
                  <th>Nombre y precio</th>
                  <th>Categoria</th>
                  <th>Acciones</th>
                </tr>
              </thead>
              <tbody>
                <?php
                    try {
                      $sql = "SELECT id_pro, foto, nombre_precio, id_cat FROM productos";
                      $resultadp = $con->query($sql);
                    } catch (Exception $e) {
                      $error = $e->getMessage();
                      echo $error;
                    }
                    while ($producto = $resultadp->fetch_assoc()) {?>
                <tr>
                  <td><?php echo $producto['foto'] ?></td>
                  <td><?php echo $producto['nombre_precio'] ?></td>
                  <td><?php echo $producto['id_cat'] ?></td>
                  <td>
                    <a href="editar-productos.php?id=<?php echo $producto['id_pro']?>"
                      class="btn btn-warning btn-flat margin" title="Editar">
                      <i class="fas fa-pencil-alt"></i>
                    </a>
                    <a href="#" data-id="<?php echo $producto['id_pro']?>" data-tipo="productos"
                      class="btn btn-danger btn-flat margin borrar_registro" title="Eliminar">
                      <i class="fas fa-trash"></i>
                    </a>
                  </td>
                </tr>
                <?php } ?>
              </tbody>
              <tfoot>
                <tr>
                  <th>Url foto</th>
                  <th>Nombre y precio</th>
                  <th>Categoria</th>
                  <th>Acciones</th>

                </tr>
              </tfoot>
            </table>
          </div>
          <!-- /.box-body -->
        </div>
        <!-- /.box -->
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<?php
/* AGregado los tempaltes de la plantilla */
  include_once "templates/footer.php";

?>