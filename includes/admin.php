<?php
require("conexion.php");
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="../assets/img/favicon.png" type="image/x-icon">
    <!--CDN font awasome-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />
    <link rel="stylesheet" href="../css/styles.css">
    <title>Amora</title>
</head>

<body>
    <section class="admin">
        <h1>Administración Catálogo</h1>
        <div class="opciones">
            <h2>¿Qué deseas hacer?</h2>
            <div class="btnOpciones">
                <a onclick="mostrarCategorias();">Administrar categorías</a>
                <a onclick="mostrarProductos();">Administrar productos</a>
                <a href="../index.html">Ir al sitio</a>
            </div>
        </div>
        <div class="cajaInfo" id="cajaInfo">
            <div class="cargarInfo">
                <!--Categorias-->
                <fieldset id="categorias">
                    <legend>Cargar Categorias</legend>
                    <form action="../includes/cargarCategorias.php" method="POST">
                        <input type="text" name="nombreCat" placeholder="Ingresa el nombre de la categoría">
                        <button type="submit">Enviar</button>
                    </form>
                </fieldset>
                <!--Productos-->
                <fieldset id="productos">
                    <legend>Cargar Productos</legend>
                    <form action="../includes/cargarProductos.php" method="POST">
                        <input type="text" name="foto" placeholder="Ingresa el nombre de la imagen (ejemplo: imagen.jpg)">
                        <input type="text" name="alt" placeholder="Ingresa el alt de la imagen (opcional)">
                        <input type="text" name="nombrePrecio" placeholder="Ingresa el nombre y el precio del producto">
                        <select name="cat">
                            <option value="">Selecciona la categoria</option>
                            <option value="1">Anillos</option>
                            <option value="2">Aretes</option>
                            <option value="3">Collares</option>
                            <option value="4">Pulseras</option>
                        </select>
                        <button type="submit">Enviar</button>
                    </form>
                </fieldset>

            </div>
            <div class="mostrarInfo">
                <fieldset id="cat">
                    <legend>Ver Información</legend>
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Opciones</th>
                        </tr>
                        <?php
                        $consulta = $con->query("SELECT * FROM categorias");
                        while ($categorias = mysqli_fetch_array($consulta)) {
                            echo '<tr>
                                        <td>' . $categorias["id_cat"] . '</td>
                                        <td>' . $categorias["nombre"] . '</td>
                                        <td>
                                            <div>
                                                <a href="./eliminarCat.php" title="Eliminar"><i class="far fa-trash-alt"></i></a>
                                                <a href="./editarcat.php" title="Editar"><i class="far fa-edit"></i></a>
                                            </div>
                                        </td>
                                    </tr>';
                        }
                        ?>

                    </table>
                </fieldset>
                <fieldset id="pro">
                    <legend>Ver Información</legend>
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>Foto</th>
                            <th>Nombre y precio</th>
                            <th>alt</th>
                            <th>id_cat</th>
                            <th>Opciones</th>
                        </tr>
                        <?php
                        $consulta = $con->query("SELECT * FROM productos");
                        while ($categorias = mysqli_fetch_array($consulta)) {
                            echo '<tr>
                            <td>' . $categorias["id_pro"] . '</td>
                            <td>' . $categorias["foto"] . '</td>
                            <td>' . $categorias["nombre_precio"] . '</td>
                            <td>' . $categorias["alt"] . '</td>
                            <td>' . $categorias["id_cat"] . '</td>
                            <td>
                                <div>
                                    <a href="./eliminarCat.php" title="Eliminar"><i class="far fa-trash-alt"></i></a>
                                    <a href="./editarcat.php" title="Editar"><i class="far fa-edit"></i></a>
                                </div>
                            </td>
                        </tr>';
                        }
                        ?>
                    </table>
                </fieldset>
            </div>

        </div>
    </section>
    <!--reCaptcha-->
    <script src='https://www.google.com/recaptcha/api.js?hl=es' async defer></script>
    <!--Feed de instagram-->
    <script src="https://apps.elfsight.com/p/platform.js" defer></script>
    <!--Script Personal -->
    <script src="../js/main.js"></script>
    </script>

</body>

</html>