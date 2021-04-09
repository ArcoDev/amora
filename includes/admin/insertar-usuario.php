<?php
/* Crear usuarios y mandar ifo a la BD */
if(isset($_POST["agregar-usuario"])) {

    
    $correo = $_POST["correo"];
    $nombre = $_POST["nombre"];
    $contrasena = $_POST["contrasena"];

    $opciones = array(
        'cost' => 12
    );
    $contra_hashed = password_hash($contrasena, PASSWORD_BCRYPT, $opciones);
        
    try {
        include_once "functions/funciones.php";
        $stmt = $con->prepare("INSERT INTO usuarios (correo, nombre, contrasena) VALUES (?, ?, ?)");
        $stmt->bind_param("sss", $correo,$nombre,$contra_hashed);
        $stmt->execute();
        $id_registro=$stmt->insert_id;
        if ($id_registro > 0){
            $respuesta=array(
                    'respuesta'=>'exito',
                    'id_usuario'=>$id_registro
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

/* Login para igresar al sistema */
if(isset($_POST["login-usuario"])) {
    die(json_encode($_POST));
}