package com.collegegrievance.dao;

import com.collegegrievance.entity.Complaint;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ComplaintService {

    private static Connection con = null;

    static {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection(
                    "jdbc:mysql://127.0.0.1:3306/collegegrievanceportal",
                    "root",
                    "Narayan@8480395391"
            );

        } catch (SQLException e) {

            throw new RuntimeException(e);

        } catch (ClassNotFoundException e) {

            throw new RuntimeException(e);
        }
    }

    public int saveComplaint(Complaint complaint) {

        String sql = "INSERT INTO complaints " +
                "(title, description, category, priority, department, status, student_id) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?)";

        try {

            PreparedStatement prt = con.prepareStatement(sql);

            prt.setString(1, complaint.getTitle());
            prt.setString(2, complaint.getDescription());
            prt.setString(3, complaint.getCategory());
            prt.setString(4, complaint.getPriority());
            prt.setString(5, complaint.getDepartment());
            prt.setString(6, complaint.getStatus());
            prt.setInt(7, complaint.getStudentId());

            return prt.executeUpdate();

        } catch (SQLException e) {

            throw new RuntimeException(e);
        }
    }
}
