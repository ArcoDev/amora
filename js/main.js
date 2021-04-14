/*============================================
VAnimacion del menu movil
============================================*/
addEventListener("DOMContentLoaded", () => {
    const menMov = document.getElementById("menMov");
    if (menMov) {
        menMov.addEventListener("click", () => {
            const link = document.getElementById("enlaces");
            link.classList.toggle("show");
        });
    }
});

function remover() {
    const link = document.getElementById("enlaces");
    link.classList.remove("show");
}

/* Agregar clase active a los enlaces */
addEventListener("DOMContentLoaded", () => {
    let ul = document.querySelector("ul");
    let a = document.querySelectorAll("a");
    a.forEach(lista => {
        lista.addEventListener("click", function() {
            ul.querySelector(".active").classList.remove("active");
            lista.classList.add("active");
        });
    });
});
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