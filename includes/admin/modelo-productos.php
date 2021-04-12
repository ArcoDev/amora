<?php
error_reporting(E_ALL ^ E_NOTICE);
/* Crear productos y mandar ifo a la BD */
include_once "functions/funciones.php";
$nombre = $_POST['nombre'];
$categoria =$_POST['categoria'];
if($_POST['registro'] == 'nuevo') {
    
    /*Comprobar si se esta mandado los datos de file y de post
    $respuesta = array(
        'post' => $_POST,
        'file' => $_FILES
    );
    die(json_encode($respuesta));
    echo '<prev>';
    var_dump($_POST);
    echo '</prev>';
    */
    $directorio = "../../assets/images/";
    if(!is_dir($directorio)) {
        mkdir($directorio, 0755, true);
    }
    if(move_uploaded_file($_FILES['archivo_imagen']['tmp_name'], $directorio . $_FILES['archivo_imagen']['name'])) {
        $imagen_url = $_FILES['archivo_imagen']['name'];
        $imagen_resultado = "Se cargó correctamente";
    } else {
        $respuesta = array(
            'respuesta' => error_get_last()
         );
    }


    try {
        include_once "functions/funciones.php";
        $stmt = $con->prepare("INSERT INTO productos (nombre_precio, id_cat, url_foto) VALUES (?, ?, ?)");
        $stmt->bind_param("sis", $nombre, $categoria, $imagen_url);
        $stmt->execute();
        $id_registro=$stmt->insert_id;
        if ($id_registro > 0){
            $respuesta=array(
                'respuesta'=>'exito',
                'id_producto'=>$id_registro,
                'resultado_imagen' => $imagen_resultado
            );
        }else{
            $respuesta=array(
                'respuesta'=>'Error'
            );
        }
        $stmt->close();
        $con->close();
    } catch (Exception $e) {
        echo "Error: ".$e->getMessage();
    }
    die(json_encode($respuesta));
}
/*Actualizar Registro de usuario */
if($_POST['registro'] == 'actualizar') {
    
    try {
        if (empty($_POST['foto'])) {
            $stmt = $con->prepare("UPDATE productos set foto =?, nombre_precio = ?, id_cat = ?, editado = NOW() WHERE id_pro =?");
            $stmt->bind_param("ssii", $urlFoto, $nombre, $categoria, $id_registroEditar);
        } else {
            $id_registroEditar = $_POST["id_registro"];
            $stmt = $con->prepare("UPDATE productos SET foto = ?, nombre_precio = ?, id_cat = ?, editado = NOW() WHERE id_pro = ?");
            $stmt->bind_param("sssi", $urlFoto, $nombre, $categoria, $id_registroEditar);
        }
        $stmt->execute();
        if($stmt->affected_rows) {
            $respuesta = array(
                'respuesta' => 'actualizar',
                'actualizar' => $stmt->insert_id
            );
        } else {
            $respuesta + array(
                'respuesta' => 'error'
            );
        }
        $stmt->close();
        $con->close();
    } catch (Exception $e) {
        $respuesta = array(
            'respuesta' => $e->getMessage()
        );
    }
    die(json_encode($respuesta));
}

/*Eliminar usuario */
if($_POST['registro'] == 'eliminar') { 
    $id_borrar = $_POST['id'];
    try {
        $stmt = $con->prepare("DELETE FROM productos WHERE id_pro = ?");
        $stmt->bind_param('i', $id_borrar);
        $stmt->execute();
        if($stmt->affected_rows) {
            $respuesta = array(
                'respuesta' => 'exito',
                'id_eliminado' => $id_borrar
            );
        } else {
            $respuesta = array(
                'respuesta' => 'error'
            );
        }
    } catch (Exception $e) {
        $respuesta = array(
            'respuesta' => $e->getMessage()
        );
    }
    die(json_encode($respuesta));
}