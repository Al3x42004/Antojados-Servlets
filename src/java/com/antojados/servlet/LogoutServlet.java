package com.antojados.servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "LogoutServlet", urlPatterns = {"/LogoutServlet"})
public class LogoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Obtener la sesión actual sin crear una nueva
        HttpSession session = request.getSession(false);
        
        if (session != null) {
            session.invalidate(); // Destruye todas las variables de sesión
        }
        
        // Redirige al login con mensaje de salida
        response.sendRedirect("login.jsp?logout=true");
    }
}