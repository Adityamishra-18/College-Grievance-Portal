package com.collegegrievance.dao;

import com.collegegrievance.entity.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserService {

    private static Connection con = null;

    static {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(
                    "jdbc:mysql://127.0.0.1:3306/collegegrievanceportal",
                    "root",
                    "aditya@2005"
            );

        } catch (SQLException e) {

            throw new RuntimeException(e);

        } catch (ClassNotFoundException e) {

            throw new RuntimeException(e);
        }
    }
    public int register(User user) {

        String sql = "INSERT INTO users " +
                "(name, email, phone, department, password, role) " +
                "VALUES (?, ?, ?, ?, ?, ?)";

        try {

            PreparedStatement prt = con.prepareStatement(sql);

            prt.setString(1, user.getName());
            prt.setString(2, user.getEmail());
            prt.setString(3, user.getPhone());
            prt.setString(4, user.getDepartment());
            prt.setString(5, user.getPassword());
            prt.setString(6, user.getRole());

            return prt.executeUpdate();

        } catch (SQLException e) {

            throw new RuntimeException(e);
        }
    }
    public User validate(String email, String password) {

        String sql = "SELECT * FROM users WHERE email=? AND password=?";

        try {

            PreparedStatement prt = con.prepareStatement(sql);

            prt.setString(1, email);
            prt.setString(2, password);

            ResultSet rs = prt.executeQuery();

            if (rs.next()) {

                User user = new User();

                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setDepartment(rs.getString("department"));
                user.setPassword(rs.getString("password"));
                user.setRole(rs.getString("role"));

                return user;

            } else {

                return null;
            }

        } catch (SQLException e) {

            throw new RuntimeException(e);
        }
    }
}