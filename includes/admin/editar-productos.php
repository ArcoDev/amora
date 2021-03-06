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
    <div class="col-md-10">
      <!-- Main content -->
      <section class="content">
        <!-- Default box -->
        <div class="box">
          <div class="box-header with-border">
            <h3 class="box-title">Editar Producto</h3>
          </div>
          <div class="box-body">
            <?php
                $sql ="SELECT * FROM `productos` WHERE `id_pro` = $id";
                $resultado = $con->query($sql);
                $producto = $resultado->fetch_assoc(); 

             ?>
            <!-- form start -->
            <form role="form" name="guardar-producto" id="guardar-producto-archivo" method="post" action="modelo-productos.php" enctype="multipart/form-data">
              <div class="box-body">
                <div class="form-group">
                  <label for="nombre">Nombre</label>
                  <input autocomplete="off" type="text" class="form-control" id="nombre" name="nombre"
                  placeholder="Ingresa el nombre del producto" value="<?php echo $producto['nombre'] ?>">
                </div>
                <div class="form-group">
                  <label for="precio">Precio</label>
                  <input autocomplete="off" type="text" class="form-control" id="precio" name="precio"
                  placeholder="Ingresa el precio del producto" value="<?php echo $producto['precio'] ?>">
                </div>
                <!-- select -->
                <div class="form-group">
                  <select name="categoria" class="form-control">
                  <option value="">Selecciona una categoria</option>
                    <option value="anillos">1.- Anillos</option>
                    <option value="aretes">2.- Aretes</option>
                    <option value="collares">3.- Collares</option>
                    <option value="pulseras">4.- Pulseras</option>
                  </select>
                </div>
                <div class="form-group">
                  <label for="imagen_actual">Imagen Actual: </label>
                  <br>
                  <img src="../../assets/images/<?php echo $producto['url_foto']; ?>" alt="Productos del catalo de amora" width="200" height ="200">
                </div>
                <div class="form-group">
                  <label for="imagen-producto">Foto</label>
                  <input type="file" id="imagen-producto" name="archivo_imagen">
                  <div style="display: flex; flex-wrap: wrap; justify-content: space-between: text-align: center; margin-top: 10px;">
                    <p style="width: 50%;" class="help-block">??? Medida recomendada de la imagen: <strong>1500 x
                        1500</strong> </p>
                    <p style="width: 50%;" class="help-block">??? Peso ideal de la imagen, menos de <strong>1
                        MB</strong>
                    </p>
                    <p style="width: 100%;" class="help-block">??? Extenci??nes permitidas: <strong>jpg, png,
                        svg</strong>
                    </p>
                  </div>
                </div> 
                <div class="box-footer">
                  <input type="hidden" name="registro" value="actualizar">
                  <input type="hidden" name="id_registro"  value="<?php echo $producto['id_pro']; ?>">
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