<?php
include "conexion.php";
$foto = $_POST["foto"];
$nombrePrecio = $_POST["nombrePrecio"];
$alt = $_POST["alt"];
$categoria = $_POST["cat"];


$cargar = "INSERT INTO productos (foto, nombre_precio, alt, id_cat) VALUES ('$foto', '$nombrePrecio', '$alt', '$categoria')";

$resultado = mysqli_query($con, $cargar);

if (!$resultado) {
    echo 'Error al cargar la información';
} else {
    echo '<script>
            alert("Producto cargado correctamente");
            window.location.href = "./admin.php";
          </script>';
}
mysqli_close($con);
