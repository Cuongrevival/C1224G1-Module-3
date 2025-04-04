package com.example.myproject.model;

import com.example.myproject.model.Doctor;
import java.sql.*;

public class DoctorDAO{
    private static final String DB_URL = "jdbc:mysql://localhost:3306/doctor_db";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "Doyoucopy123";


    public Doctor getDoctorByUsername(String username) {
        Doctor doctor = null;
        String sql = "SELECT * FROM doctors WHERE username = ?";

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                doctor = new Doctor(
                        rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("position")  // Lấy vị trí bác sĩ
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return doctor;
    }
}
