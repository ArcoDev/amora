<?php
require "conexion.php";
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="../assets/img/favicon.png" type="image/x-icon">

    <!-- CDN Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!--CDN font awasome-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"
        integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w=="
        crossorigin="anonymous" />
    <link rel="stylesheet" href="../css/styles.css">
    <title>Catalogo Amora</title>
</head>

<body>
    <a href="https://wa.link/zdwtie" class="float" target="_blank">
        <i class="fab fa-whatsapp my-float"></i>
    </a>
    <nav id="expandir" class="navegacion">
        <a id="logo" href="../index.html" title="Amora Joyeria">
            <div class="logo">
            </div>
        </a>
        <ul id="items" class="items">
            <a href="../index.html">
                <li>Regresar</li>
            </a>
        </ul>
        <i id="bars" class="fa fa-bars nav-mov" onclick="abrirNav();"></i>
        <i id="close" class="fas fa-times nav-mov" onclick="cerrarNav();"></i>
    </nav>
    <section class="cajaCategorias">
        <div class="titulo">
            <h1>Catálogo</h1>
        </div>
        <section class="categorias">
            <select id="seleccionarCat" onchange="filtroCategorias();">
                <option>Selecciona una categoría</option>
                <option value="todos">Todos</option>
                <option value="anillos">Anillos</option>
                <option value="aretes">Aretes</option>
                <option value="pulseras">Pulseras</option>
                <option value="collares">Collares</option>
            </select>
        </section>
        <h2 id="txtAnillos" class="titulo">Anillos</h2>
        <div id="anillos" class="anillos">
            <?php
            $consulta = $con->query("SELECT * FROM productos WHERE id_cat =1");
            while ($imagenes = mysqli_fetch_array($consulta)) {
                echo '<img loading="lazy" class="sizeImg" title="' . $imagenes["nombre_precio"] . '" src="../assets/img/categorias/anillos/' . $imagenes["foto"] . '" alt="imagenes de los productos de amora">';
            }
            ?>
        </div>

        <h2 id="txtAretes" class="titulo">Aretes</h2>

        <div id="aretes" class="aretes">
            <?php
            $consulta = $con->query("SELECT * FROM productos WHERE id_Cat = 2");
            while ($imagenes = mysqli_fetch_array($consulta)) {
                echo '<img loading="lazy" class="sizeImg" src="../assets/img/categorias/aretes/' . $imagenes["foto"] . '" alt="imagenes de los productos de amora">';
            }
            ?>
        </div>

        <h2 id="txtCollares" class="titulo">Collares</h2>
        <div id="collares" class="collares">
            <?php
            $consulta = $con->query("SELECT * FROM productos WHERE id_Cat = 3");
            while ($imagenes = mysqli_fetch_array($consulta)) {
                echo '<img loading="lazy" class="sizeImg" src="../assets/img/categorias/collares/' . $imagenes["foto"] . '" alt="imagenes de los productos de amora">';
            }
            ?>
        </div>
        <h2 id="txtPulseras" class="titulo">Pulseras</h2>
        <div id="pulseras" class="pulseras">
            <?php
            $consulta = $con->query("SELECT * FROM productos WHERE id_Cat = 4");
            while ($imagenes = mysqli_fetch_array($consulta)) {
                echo '<img loading="lazy" class="sizeImg" src="../assets/img/categorias/pulseras/' . $imagenes["foto"] . '" alt="imagenes de los productos de amora">';
            }
            ?>
        </div>
    </section>
    <footer class="footer">
        <h2>Sitio Desarrollado por <a href="https://awsoftware.mx/" target="_blank"><span>AW Software</span></a></h2>
    </footer>
    <!--Script Personal -->
    <script src="../js/main.js"></script>
</body>

</html>