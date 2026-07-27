<%-- 
    Document   : sobre
    Created on : 17/07/2026, 12:12:07 p. m.
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sobre Nosotros - Antojados</title>
    
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>

    <!-- INCLUYE EL NAVBAR Y SIDEBAR DINÁMICO -->
    <jsp:include page="navbar.jsp" />

    <div class="container" style="margin-top: 50px; margin-bottom: 50px;">
        <div class="row">
            <div class="col s12 m10 offset-m1">
                <div class="card-panel white z-depth-1 center-align" style="padding: 40px; border-radius: 8px;">
                    
                    <h3 class="brown-text text-darken-3" style="margin-bottom: 30px; font-weight: bold;">Sobre Nosotros</h3>
                    
                    <i class="material-icons large brown-text text-lighten-2">storefront</i>

                    <p class="flow-text grey-text text-darken-3" style="line-height: 1.8; margin-top: 20px;">
                        En <strong>Antojados</strong> creemos que cada bocado es más que comida: es una experiencia.
                    </p>

                    <div class="divider" style="margin: 30px auto; width: 60px; height: 3px; background-color: #8d6e63;"></div>

                    <p class="grey-text text-darken-2" style="font-size: 1.1rem; line-height: 1.8; max-width: 600px; margin: 0 auto 20px auto;">
                        Nacimos con la idea de transformar esos pequeños antojos del día en momentos especiales,
                        ofreciendo productos frescos, deliciosos y preparados con dedicación.
                    </p>

                    <p class="grey-text text-darken-2" style="font-size: 1.1rem; line-height: 1.8; max-width: 600px; margin: 0 auto;">
                        Más que un negocio, somos un lugar donde la comida se convierte en felicidad.
                    </p>
                    
                </div>
            </div>
        </div>
    </div>

    <footer class="page-footer brown darken-4 center" style="padding: 15px 0;">
        <div class="container">
            © 2026 Antojados
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