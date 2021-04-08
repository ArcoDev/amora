<?php
$correDestino = "cacosta@awsoftware.mx";
$nombre = $_POST["nombre"];
$correo = $_POST["correo"];
$mensaje = $_POST["mensaje"];

$contenidoEmail = "Nombre: " . $nombre .
    "\nEmail: " . $correo .
    "\nMensaje: " . $mensaje;

mail($correDestino, "Quiero información de tus productos.", $contenidoEmail);
header("Location:./gracias.html");
