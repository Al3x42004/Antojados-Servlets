package com.antojados.dao;

import com.antojados.conexion.ConexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioDAO {

    // Método para registrar nuevos usuarios en la BD
    public boolean registrarUsuario(String nombre, String correo, String clave) {
        String sql = "INSERT INTO usuarios (nombre, correo, clave, rol) VALUES (?, ?, ?, 'cliente')";
        
        try (Connection con = ConexionBD.getConexion();
             PreparedStatement ps = con.prepareStatement(sql)) {
            
            ps.setString(1, nombre.trim());
            ps.setString(2, correo.trim().toLowerCase());
            ps.setString(3, clave.trim());
            
            return ps.executeUpdate() > 0;
            
        } catch (SQLException e) {
            System.err.println("❌ Error en registro: " + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }

    // Método estricto de validación contra MySQL
    public boolean validarUsuario(String correo, String clave) {
        // Validar que los campos no vengan vacíos
        if (correo == null || correo.trim().isEmpty() || clave == null || clave.trim().isEmpty()) {
            return false;
        }

        // Consulta SQL que compara correo y contraseña exactos en la tabla 'usuarios'
        String sql = "SELECT * FROM usuarios WHERE LOWER(TRIM(correo)) = LOWER(TRIM(?)) AND TRIM(clave) = TRIM(?)";
        
        try (Connection con = ConexionBD.getConexion();
             PreparedStatement ps = con.prepareStatement(sql)) {
            
            ps.setString(1, correo);
            ps.setString(2, clave);
            
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    System.out.println("✅ ACCESO AUTORIZADO A: " + rs.getString("nombre"));
                    return true; // Encontró al usuario en la BD -> Permite el ingreso
                } else {
                    System.out.println("⛔ ACCESO DENEGADO: El correo o la clave no coinciden en MySQL.");
                    return false; // No existe -> Bloquea el ingreso
                }
            }
            
        } catch (SQLException e) {
            System.err.println("❌ ERROR EN LA CONSULTA DE LOGIN: " + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }
}