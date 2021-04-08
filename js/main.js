/*============================================
Variables
============================================*/
const bars = document.getElementById("bars");
const close = document.getElementById("close");
const expandir = document.getElementById("expandir");
const items = document.getElementById("items");
const logoMov = document.getElementById("logo");
const categorias = document.getElementById("categorias");
const cat = document.getElementById("cat");
const productos = document.getElementById("productos");
const pro = document.getElementById("pro");
const cajaInfo = document.getElementById("cajaInfo");

/*============================================
Animacion de la navbar en movil
============================================*/
function abrirNav() {
  bars.style.display = "none";
  close.style.display = "block";
  expandir.classList.add("show");
  items.style.display = "block";
  items.classList.add("itemMov");
  logoMov.style.marginTop = "-50px";
}

function cerrarNav() {
  close.style.display = "none";
  bars.style.display = "block";
  expandir.classList.remove("show");
  items.style.display = "none";
  logoMov.style.marginTop = "0";
}
/*============================================
Mostrar categorias o productos en la pagina 
de admin.php
============================================*/
function mostrarCategorias() {
  productos.style.display = "none";
  categorias.style.display = "block";
  cat.style.display = "block";
  pro.style.display = "none";
  cajaInfo.style.display = "block";
  cajaInfo.style.display = "flex";
}

function mostrarProductos() {
  categorias.style.display = "none";
  productos.style.display = "block";
  pro.style.display = "block";
  cat.style.display = "none";
  cajaInfo.style.display = "block";
  cajaInfo.style.display = "flex";
}
/*============================================
Filtro por categorias en la pagina de 
catalogo.php
============================================*/
function filtroCategorias() {
  const seleccionarCat = document.getElementById("seleccionarCat");
  const opcionesCat = seleccionarCat.value;
  const anillos = document.getElementById("anillos");
  const aretes = document.getElementById("aretes");
  const collares = document.getElementById("collares");
  const pulseras = document.getElementById("pulseras");
  const txtAnillos = document.getElementById("txtAnillos");
  const txtAretes = document.getElementById("txtAretes");
  const txtCollares = document.getElementById("txtCollares");
  const txtPulseras = document.getElementById("txtPulseras");

  if (opcionesCat === "todos") {
    anillos.style.display = "block";
    aretes.style.display = "block";
    pulseras.style.display = "block";
    collares.style.display = "block";
    txtAnillos.style.display = "block";
    txtAretes.style.display = "block";
    txtCollares.style.display = "block";
    txtPulseras.style.display = "block";
  } else if (opcionesCat === "anillos") {
    anillos.style.display = "block";
    aretes.style.display = "none";
    pulseras.style.display = "none";
    collares.style.display = "none";
    txtAnillos.style.display = "block";
    txtAretes.style.display = "none";
    txtCollares.style.display = "none";
    txtPulseras.style.display = "none";
  } else if (opcionesCat === "aretes") {
    aretes.style.display = "block";
    anillos.style.display = "none";
    pulseras.style.display = "none";
    collares.style.display = "none";
    txtAnillos.style.display = "none";
    txtAretes.style.display = "block";
    txtCollares.style.display = "none";
    txtPulseras.style.display = "none";
  } else if (opcionesCat === "pulseras") {
    pulseras.style.display = "block";
    anillos.style.display = "none";
    aretes.style.display = "none";
    collares.style.display = "none";
    txtAnillos.style.display = "none";
    txtAretes.style.display = "none";
    txtCollares.style.display = "none";
    txtPulseras.style.display = "block";
  } else if (opcionesCat === "collares") {
    collares.style.display = "block";
    anillos.style.display = "none";
    aretes.style.display = "none";
    pulseras.style.display = "none";
    txtAnillos.style.display = "none";
    txtAretes.style.display = "none";
    txtCollares.style.display = "block";
    txtPulseras.style.display = "none";
  }
}

function cambiarImg(idImg) {
  if (idImg === 1) {
    alert("Soy la 1");
  } else if (idImg === 2) {
    alert("soy la 2");
  }
}
