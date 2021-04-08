function validar() {
  var nombre, correo, mensaje, expresionEmail, parrafo;
  nombre = document.getElementById("nombre").value;
  correo = document.getElementById("correo");
  mensaje = document.getElementById("mensaje").value;
  parrafo = document.getElementById("alertas");
  expresionEmail = /\w+@\w+\.+[a-z]/;

  if (nombre === "" || correo === "" || asunto === "" || mensaje === "") {
    parrafo.innerHTML = "Todos los campos son obligatorios";
    return false;
  } else if (nombre.length > 20) {
    parrafo.innerHTML = "Nombre demasiado largo";
    return false;
  } else if (!expresionEmail.test(correo)) {
    parrafo.innerHTML = "EL corro es invalido";
    return false;
  } else if (mensaje.length > 50) {
    parrafo.innerHTML = "EL mensaje es demasiado largo";
    return false;
  } else {
    parrafo.innerHTML = "";
  }
}
