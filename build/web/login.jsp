<%-- 
    Document   : login
    Created on : 17/07/2026
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión - Antojados</title>
    
    <!-- Fuentes e Iconos -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Estilos Materialize CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link rel="stylesheet" href="css/styles.css">

    <style>
        .login-page-bg {
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
        .login-container {
            background-color: rgba(255, 255, 255, 0.95) !important;
            border-radius: 8px;
            width: 100%;
            max-width: 400px;
        }
    </style>
</head>
<body>

    <!-- MENÚ DE NAVEGACIÓN (Solo accesos para Invitado) -->
    <nav class="brown darken-3">
        <div class="nav-wrapper container">
            <a href="login.jsp" class="brand-logo">
                <img src="img/antojados.jpeg" class="logo" style="max-height: 56px; vertical-align: middle; padding: 5px;" alt="Logo Antojados">
            </a>
            
            <ul class="right hide-on-med-and-down">
                <li class="active"><a href="login.jsp">Login</a></li>
                <li><a href="registro.jsp">Regístrate</a></li>
            </ul>
        </div>
    </nav>

    <!-- FORMULARIO DE INICIO DE SESIÓN -->
    <div class="login-page-bg">
        <div class="card login-container z-depth-3">
            <div class="card-content">
                <h4 class="center-align brown-text text-darken-3" style="margin-bottom: 30px;">Iniciar Sesión</h4>
                
                <form action="UsuarioServlet" method="POST">
                    <!-- Acción oculta para identificar la operación en el Servlet -->
                    <input type="hidden" name="accion" value="login">

                    <!-- Campo Correo (Mantiene el valor si hubo error previo) -->
                    <div class="input-field">
                        <i class="material-icons prefix brown-text">email</i>
                        <input type="email" id="correo" name="correo" value="${param.correo != null ? param.correo : ''}" required class="validate">
                        <label for="correo">Correo electrónico</label>
                    </div>

                    <!-- Campo Contraseña con opción de ver/ocultar -->
                    <div class="input-field" style="margin-top: 25px; position: relative;">
                        <i class="material-icons prefix brown-text">lock</i>
                        <input type="password" id="clave" name="clave" required class="validate" style="padding-right: 40px;">
                        <label for="clave">Contraseña</label>
                        
                        <!-- Ícono interactivo para mostrar/ocultar clave -->
                        <i class="material-icons brown-text" id="togglePassword" 
                           style="position: absolute; right: 10px; top: 12px; cursor: pointer; user-select: none;" 
                           onclick="toggleClave()">visibility_off</i>
                    </div>

                    <!-- Botón de Envío -->
                    <div class="center-align" style="margin-top: 40px;">
                        <button class="btn brown darken-3 waves-effect waves-light btn-large" type="submit" style="width: 100%;">
                            INGRESAR <i class="material-icons right">login</i>
                        </button>
                    </div>
                </form>

                <p class="center" style="margin-top: 25px; font-size: 0.95rem;">
                    ¿No tienes una cuenta? <a href="registro.jsp" class="brown-text text-darken-2" style="font-weight: bold;">Regístrate aquí</a>
                </p>
            </div>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    
    <script>
        // Función para alternar la visibilidad de la contraseña
        function toggleClave() {
            const inputClave = document.getElementById('clave');
            const iconToggle = document.getElementById('togglePassword');

            if (inputClave.type === 'password') {
                inputClave.type = 'text';
                iconToggle.textContent = 'visibility'; // Cambia a ojo abierto
            } else {
                inputClave.type = 'password';
                iconToggle.textContent = 'visibility_off'; // Cambia a ojo tachado
            }
        }

        document.addEventListener('DOMContentLoaded', function() {
            // Re-inicializa campos para que no se traslape el texto del label con el input
            M.updateTextFields();

            const urlParams = new URLSearchParams(window.location.search);
            
            // Notificación al llegar desde un registro exitoso
            if (urlParams.get('registro') === 'exito' || urlParams.get('msg') === 'registrado') {
                M.toast({html: '¡Registro exitoso! Por favor inicia sesión 🔥', classes: 'rounded green'});
            }
            
            // Notificación de error de credenciales
            if (urlParams.has('error')) {
                M.toast({html: 'Correo o contraseña incorrectos ❌', classes: 'rounded red'});
            }
        });
    </script>

</body>
</html>