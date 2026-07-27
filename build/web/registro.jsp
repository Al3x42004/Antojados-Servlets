<%-- 
    Document   : registro
    Created on : 17/07/2026, 12:12:01 p. m.
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro - Antojados</title>
    
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link rel="stylesheet" href="css/styles.css">

    <style>
        .register-page-bg {
            background-image: url('img/fondo.webp');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            min-height: calc(100vh - 64px);
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px 0;
        }
        .register-container {
            background-color: rgba(255, 255, 255, 0.95) !important;
            border-radius: 8px;
            width: 100%;
            max-width: 450px;
        }
    </style>
</head>
<body>

    <!-- MENÚ DE NAVEGACIÓN -->
    <nav class="brown darken-3">
        <div class="nav-wrapper container">
            <a href="login.jsp" class="brand-logo">
                <img src="img/antojados.jpeg" class="logo" style="max-height: 56px; vertical-align: middle; padding: 5px;">
            </a>
            
            <ul class="right hide-on-med-and-down">
                <li><a href="login.jsp">Login</a></li>
                <li class="active"><a href="registro.jsp">Regístrate</a></li>
            </ul>
        </div>
    </nav>

    <!-- CONTENEDOR PRINCIPAL -->
    <div class="register-page-bg">
        <div class="card register-container z-depth-3">
            <div class="card-content">
                <h4 class="center-align brown-text text-darken-3" style="margin-bottom: 30px;">Crear Cuenta</h4>

                <form action="UsuarioServlet" method="POST">
                    
                    <!-- Campo oculto corregido (coincide con UsuarioServlet) -->
                    <input type="hidden" name="accion" value="registro">

                    <!-- Campo de Nombre -->
                    <div class="input-field">
                        <i class="material-icons prefix brown-text">person</i>
                        <input type="text" id="nombre" name="nombre" required class="validate">
                        <label for="nombre">Nombre completo</label>
                    </div>

                    <!-- Campo de Correo Electrónico -->
                    <div class="input-field" style="margin-top: 25px;">
                        <i class="material-icons prefix brown-text">email</i>
                        <input type="email" id="correo" name="correo" required class="validate">
                        <label for="correo">Correo electrónico</label>
                    </div>

                    <!-- Campo de Contraseña -->
                    <div class="input-field" style="margin-top: 25px;">
                        <i class="material-icons prefix brown-text">lock</i>
                        <input type="password" id="clave" name="clave" required class="validate">
                        <label for="clave">Contraseña</label>
                    </div>

                    <!-- Botón Registrarse -->
                    <div class="center-align" style="margin-top: 40px;">
                        <button class="btn brown darken-3 waves-effect waves-light btn-large" type="submit" style="width: 100%; border-radius: 4px;">
                            Registrarse <i class="material-icons right">person_add</i>
                        </button>
                    </div>
                </form>

                <p class="center" style="margin-top: 20px; font-size: 0.95rem;">
                    ¿Ya tienes cuenta? <a href="login.jsp" class="brown-text text-darken-2" style="font-weight: bold;">Inicia sesión</a>
                </p>
            </div>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const urlParams = new URLSearchParams(window.location.search);
            
            if (urlParams.has('error')) {
                M.toast({html: 'No se pudo completar el registro. Inténtalo de nuevo ❌', classes: 'rounded red'});
            }
        });
    </script>
</body>
</html>