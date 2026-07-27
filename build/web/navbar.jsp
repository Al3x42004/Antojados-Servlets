<%-- 
    Document   : navbar
    Componente de navegación reutilizable
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    // Obtiene el usuario activo de la sesión
    String usuarioActual = (String) session.getAttribute("usuarioLogueado");
%>

<!-- MENÚ DE NAVEGACIÓN (ESCRITORIO) -->
<nav class="brown darken-3">
    <div class="nav-wrapper container">
        <a href="index.jsp" class="brand-logo">
            <img src="img/antojados.jpeg" class="logo" style="max-height: 56px; vertical-align: middle; padding: 5px;" alt="Logo Antojados">
        </a>
        
        <a href="#" data-target="mobile-menu" class="sidenav-trigger"><i class="material-icons">menu</i></a>
        
        <ul class="right hide-on-med-and-down">
            <li><a href="index.jsp">Inicio</a></li>
            <li><a href="productos.jsp">Productos</a></li>
            <li><a href="sobre.jsp">Sobre Nosotros</a></li>
            <li><a href="contacto.jsp">Contacto</a></li>
            
            <% if (usuarioActual == null) { %>
                <!-- Si NO ha iniciado sesión -->
                <li><a href="login.jsp">Login</a></li>
                <li><a href="registro.jsp">Regístrate</a></li>
            <% } else { %>
                <!-- Si SÍ ha iniciado sesión -->
                <li>
                    <span style="color: #fff; margin-right: 15px; font-weight: 500;">
                        <i class="material-icons left" style="vertical-align: middle; margin-right: 5px;">account_circle</i>
                        <%= usuarioActual %>
                    </span>
                </li>
                <li>
                    <a href="LogoutServlet" class="red-text text-lighten-3" style="font-weight: bold;">
                        Cerrar Sesión <i class="material-icons right">exit_to_app</i>
                    </a>
                </li>
            <% } %>
            
            <li><a href="carrito.jsp"><i class="material-icons">shopping_cart</i></a></li>
        </ul>
    </div>
</nav>

<!-- MENÚ LATERAL (MÓVIL) -->
<ul class="sidenav" id="mobile-menu">
    <li><a href="index.jsp"><i class="material-icons left">home</i>Inicio</a></li>
    <li><a href="productos.jsp"><i class="material-icons left">restaurant_menu</i>Productos</a></li>
    <li><a href="sobre.jsp"><i class="material-icons left">info</i>Sobre Nosotros</a></li>
    <li><a href="contacto.jsp"><i class="material-icons left">email</i>Contacto</a></li>
    
    <% if (usuarioActual == null) { %>
        <li><a href="login.jsp"><i class="material-icons left">account_circle</i>Login</a></li>
        <li><a href="registro.jsp"><i class="material-icons left">person_add</i>Registro</a></li>
    <% } else { %>
        <li><a style="font-weight: bold; color: #4e342e;"><i class="material-icons left">verified_user</i><%= usuarioActual %></a></li>
        <li><a href="LogoutServlet" class="red-text"><i class="material-icons left">exit_to_app</i>Cerrar Sesión</a></li>
    <% } %>
    
    <li><a href="carrito.jsp"><i class="material-icons left">shopping_cart</i>Carrito</a></li>
</ul>