<%-- 
    Document   : productos
    Created on : 17/07/2026, 12:21:47 p. m.
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/styles.css">

    <title>Productos - Antojados</title>
</head>

<body>

    <!-- INCLUYE EL NAVBAR Y SIDEBAR DINÁMICO -->
    <jsp:include page="navbar.jsp" />

    <!-- TÍTULO -->
    <section class="container section center">
        <h3 class="brown-text text-darken-3">Nuestros Productos 🍴</h3>
        <p class="grey-text text-darken-1">Descubre lo mejor de Antojados y añade tus favoritos al carrito.</p>
    </section>

    <!-- PRODUCTOS DE LA BASE DE DATOS -->
    <section class="container" style="margin-bottom: 50px;">
        <div class="row">

            <!-- Pancerotti Tradicional -->
            <div class="col s12 m6 l4">
                <div class="card hoverable" style="border-radius: 8px; overflow: hidden;">
                    <div class="card-image" style="max-height: 200px; overflow: hidden;">
                        <img src="./img/pancerottis.jpg" alt="Pancerotti">
                    </div>
                    <div class="card-content center">
                        <span class="card-title brown-text text-darken-3" style="font-weight: bold;">Pancerotti Tradicional</span>
                        <p class="grey-text text-darken-1">Relleno de jamón, queso mozzarella premium y salsa de la casa.</p>
                        <h5 class="brown-text" style="font-weight: bold; margin-top: 15px;">$8.500</h5>
                    </div>
                    <div class="card-action center">
                        <button class="btn brown darken-2 waves-effect waves-light" onclick="agregarCarrito('Pancerotti Tradicional', 8500)">
                            <i class="material-icons left">add_shopping_cart</i>Agregar
                        </button>
                    </div>
                </div>
            </div>

            <!-- Pancerotti Especial -->
            <div class="col s12 m6 l4">
                <div class="card hoverable" style="border-radius: 8px; overflow: hidden;">
                    <div class="card-image" style="max-height: 200px; overflow: hidden;">
                        <img src="./img/pancerottis.jpg" alt="Pancerotti Especial">
                    </div>
                    <div class="card-content center">
                        <span class="card-title brown-text text-darken-3" style="font-weight: bold;">Pancerotti Especial</span>
                        <p class="grey-text text-darken-1">Carne desmechada, pollo, champiñones y doble queso.</p>
                        <h5 class="brown-text" style="font-weight: bold; margin-top: 15px;">$11.000</h5>
                    </div>
                    <div class="card-action center">
                        <button class="btn brown darken-2 waves-effect waves-light" onclick="agregarCarrito('Pancerotti Especial', 11000)">
                            <i class="material-icons left">add_shopping_cart</i>Agregar
                        </button>
                    </div>
                </div>
            </div>

            <!-- Gelatina Arcoíris -->
            <div class="col s12 m6 l4">
                <div class="card hoverable" style="border-radius: 8px; overflow: hidden;">
                    <div class="card-image" style="max-height: 200px; overflow: hidden;">
                        <img src="./img/gelatina.jpg" alt="Gelatina">
                    </div>
                    <div class="card-content center">
                        <span class="card-title brown-text text-darken-3" style="font-weight: bold;">Gelatina Arcoíris</span>
                        <p class="grey-text text-darken-1">Varios sabores con capas de leche condensada artesanal.</p>
                        <h5 class="brown-text" style="font-weight: bold; margin-top: 15px;">$4.500</h5>
                    </div>
                    <div class="card-action center">
                        <button class="btn brown darken-2 waves-effect waves-light" onclick="agregarCarrito('Gelatina Arcoíris', 4500)">
                            <i class="material-icons left">add_shopping_cart</i>Agregar
                        </button>
                    </div>
                </div>
            </div>

            <!-- Jugo de Lulo -->
            <div class="col s12 m6 l4">
                <div class="card hoverable" style="border-radius: 8px; overflow: hidden;">
                    <div class="card-image" style="max-height: 200px; overflow: hidden;">
                        <img src="./img/jugosNaturales.jpg" alt="Jugo de Lulo">
                    </div>
                    <div class="card-content center">
                        <span class="card-title brown-text text-darken-3" style="font-weight: bold;">Jugo de Lulo</span>
                        <p class="grey-text text-darken-1">Jugo en agua o leche 100% fruta natural (16oz).</p>
                        <h5 class="brown-text" style="font-weight: bold; margin-top: 15px;">$5.000</h5>
                    </div>
                    <div class="card-action center">
                        <button class="btn brown darken-2 waves-effect waves-light" onclick="agregarCarrito('Jugo Natural de Lulo', 5000)">
                            <i class="material-icons left">add_shopping_cart</i>Agregar
                        </button>
                    </div>
                </div>
            </div>

            <!-- Jugo de Fresa -->
            <div class="col s12 m6 l4">
                <div class="card hoverable" style="border-radius: 8px; overflow: hidden;">
                    <div class="card-image" style="max-height: 200px; overflow: hidden;">
                        <img src="./img/jugosNaturales.jpg" alt="Jugo de Fresa">
                    </div>
                    <div class="card-content center">
                        <span class="card-title brown-text text-darken-3" style="font-weight: bold;">Jugo de Fresa</span>
                        <p class="grey-text text-darken-1">Jugo natural refrescante preparado al instante.</p>
                        <h5 class="brown-text" style="font-weight: bold; margin-top: 15px;">$5.000</h5>
                    </div>
                    <div class="card-action center">
                        <button class="btn brown darken-2 waves-effect waves-light" onclick="agregarCarrito('Jugo Natural de Fresa', 5000)">
                            <i class="material-icons left">add_shopping_cart</i>Agregar
                        </button>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <!-- FOOTER -->
    <footer class="page-footer brown darken-4">
        <div class="container center" style="padding-bottom: 20px;">
            © 2026 Antojados - Todos los derechos reservados
        </div>
    </footer>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Inicializar el menú lateral (sidenav) de Materialize
            var elems = document.querySelectorAll('.sidenav');
            M.Sidenav.init(elems);
        });

        let carrito = JSON.parse(localStorage.getItem("carrito")) || [];

        function agregarCarrito(nombre, precio) {
            carrito.push({nombre, precio});
            localStorage.setItem("carrito", JSON.stringify(carrito));

            M.toast({html: nombre + ' agregado al carrito 🛒', classes: 'rounded green'});
        }
    </script>
</body>
</html>