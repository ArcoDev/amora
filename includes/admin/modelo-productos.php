<?php
error_reporting(E_ALL ^ E_NOTICE);
/* Crear productos y mandar ifo a la BD */
include_once "functions/funciones.php";
$urlFoto = $_POST['foto'];
$nombre = $_POST['nombre'];
$categoria =$_POST['categoria'];
if($_POST['registro'] == 'nuevo') {
    try {
        include_once "functions/funciones.php";
        $stmt = $con->prepare("INSERT INTO productos (foto, nombre_precio, id_cat) VALUES (?, ?, ?)");
        $stmt->bind_param("ssi", $urlFoto, $nombre, $categoria);
        $stmt->execute();
        $id_registro=$stmt->insert_id;
        if ($id_registro > 0){
            $respuesta=array(
                'respuesta'=>'exito',
                'id_producto'=>$id_registro
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