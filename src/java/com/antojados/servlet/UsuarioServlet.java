package com.antojados.servlet;

import com.antojados.dao.UsuarioDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "UsuarioServlet", urlPatterns = {"/UsuarioServlet"})
public class UsuarioServlet extends HttpServlet {

    private UsuarioDAO usuarioDAO = new UsuarioDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("login.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        String accion = request.getParameter("accion");

        if (accion != null && accion.equals("registro")) {
            registrar(request, response);
        } else if (accion != null && accion.equals("login")) {
            iniciarSesion(request, response);
        } else {
            response.sendRedirect("login.jsp");
        }
    }

    private void registrar(HttpServletRequest request, HttpServletResponse response) 
            throws IOException {
        String nombre = request.getParameter("nombre");
        String correo = request.getParameter("correo");
        String clave = request.getParameter("clave");

        boolean exito = usuarioDAO.registrarUsuario(nombre, correo, clave);

        if (exito) {
            response.sendRedirect("login.jsp?registro=exito");
        } else {
            response.sendRedirect("registro.jsp?error=true");
        }
    }

    private void iniciarSesion(HttpServletRequest request, HttpServletResponse response) 
            throws IOException {
        String correo = request.getParameter("correo");
        String clave = request.getParameter("clave");

        boolean valido = usuarioDAO.validarUsuario(correo, clave);

        if (valido) {
            HttpSession session = request.getSession();
            session.setAttribute("usuarioLogueado", correo);
            
            System.out.println("🚀 REDIRIGIENDO A INDEX.JSP...");
            response.sendRedirect("index.jsp"); 
        } else {
            System.out.println("⛔ REDIRIGIENDO A LOGIN CON ERROR...");
            // Enviamos el correo de vuelta en la URL para no perderlo
            String correoEncoded = java.net.URLEncoder.encode(correo != null ? correo : "", "UTF-8");
            response.sendRedirect("login.jsp?error=true&correo=" + correoEncoded);
        }
    }
}