<%-- 
    Document   : index
    Created on : 17/07/2026, 12:07:58 p. m.
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Antojados - Inicio</title>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>

    <!-- AQUI SE IMPLEMENTA EL NAVBAR COMPARTIDO -->
    <jsp:include page="navbar.jsp" />

    <!-- SECCIÓN HERO -->
    <section class="hero center" style="padding: 100px 0;">
        <div class="container">
            <h2 class="white-text" style="font-weight: 700; text-shadow: 2px 2px 8px rgba(0,0,0,0.7);">Bienvenido a Antojados 🍴</h2>
            <p class="white-text flow-text" style="text-shadow: 1px 1px 5px rgba(0,0,0,0.8); font-weight: 300;">El sabor que alegra tu día</p>
            <a href="productos.jsp" class="btn-large brown lighten-1 waves-effect waves-light" style="margin-top: 20px; border-radius: 4px;">Ver Productos</a>
        </div>
    </section>

    <!-- SECCIÓN QUIÉNES SOMOS -->
    <section class="container section" style="margin-top: 30px; margin-bottom: 5px;">
        <div class="row">
            <div class="col s12 m10 offset-m1">
                <h4 class="center brown-text text-darken-3" style="font-weight: 500;">¿Quiénes somos?</h4>
                <p class="flow-text center grey-text text-darken-3" style="line-height: 1.8;">
                    En Antojados convertimos tus ganas de comer en experiencias inolvidables.
                    Ofrecemos productos frescos, deliciosos y preparados con amor,
                    ideales para acompañar tus momentos del día.
                </p>
                <p class="center grey-text text-darken-2" style="font-size: 1.1rem; line-height: 1.8;">
                    Desde nuestros pancerottis hasta jugos naturales, cada bocado está pensado
                    para brindarte energía, sabor y felicidad.
                </p>
            </div>
        </div>
    </section>

    <!-- FOOTER -->
    <footer class="page-footer brown darken-4" style="padding: 15px 0;">
        <div class="container center">
            © 2026 Antojados - Todos los derechos reservados
        </div>
    </footer>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

    <script>
    document.addEventListener('DOMContentLoaded', function() {
        var elems = document.querySelectorAll('.sidenav');
        M.Sidenav.init(elems);
    });
    </script>

</body>
</html>