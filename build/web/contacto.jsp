<%-- 
    Document   : contacto
    Created on : 17/07/2026, 12:11:40 p. m.
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contacto - Antojados</title>
    
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>

    <!-- INCLUYE EL NAVBAR Y SIDEBAR DINÁMICO -->
    <jsp:include page="navbar.jsp" />

    <div class="container" style="margin-top: 50px; margin-bottom: 50px;">
        <h3 class="center-align brown-text text-darken-3" style="font-weight: bold; margin-bottom: 40px;">Contáctanos</h3>
        
        <div class="row">
            
            <div class="col s12 m4">
                <div class="card-panel white center-align z-depth-1" style="padding: 30px 15px; border-radius: 8px; min-height: 200px;">
                    <i class="material-icons large brown-text text-lighten-1">email</i>
                    <h6 class="brown-text text-darken-2" style="font-weight: bold; margin-top: 15px;">Correo Electrónico</h6>
                    <p class="grey-text text-darken-3" style="word-break: break-all;">info@antojados.com</p>
                </div>
            </div>

            <div class="col s12 m4">
                <div class="card-panel white center-align z-depth-1" style="padding: 30px 15px; border-radius: 8px; min-height: 200px;">
                    <i class="material-icons large brown-text text-lighten-1">phone</i>
                    <h6 class="brown-text text-darken-2" style="font-weight: bold; margin-top: 15px;">Teléfono / WhatsApp</h6>
                    <p class="grey-text text-darken-3">+57 320 882 6678</p>
                </div>
            </div>

            <div class="col s12 m4">
                <div class="card-panel white center-align z-depth-1" style="padding: 30px 15px; border-radius: 8px; min-height: 200px;">
                    <i class="material-icons large brown-text text-lighten-1">camera_alt</i>
                    <h6 class="brown-text text-darken-2" style="font-weight: bold; margin-top: 15px;">Instagram</h6>
                    <p class="grey-text text-darken-3">@Antojados_18</p>
                </div>
            </div>
        </div>
    </div>

    <footer class="page-footer brown darken-4 center" style="padding: 15px 0;">
        <div class="container">
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