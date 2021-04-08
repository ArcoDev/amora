<?php
include "conexion.php";
$nombreCat = $_POST["nombreCat"];

$cargar = "INSERT INTO categorias (nombre) VALUES ('$nombreCat')";
$resultado = mysqli_query($con, $cargar);

if (!$resultado) {
    echo "Error al cargar la información";
} else {
    echo '<script>
            alert("Categoría cargada correctamente")
            window.location.href ="./admin.php"
          </script>';
}
