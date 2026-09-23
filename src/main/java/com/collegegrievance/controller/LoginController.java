package com.collegegrievance.controller;

import com.collegegrievance.dao.UserService;
import com.collegegrievance.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/login")
public class LoginController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        email = email.toLowerCase();

        UserService service = new UserService();
        User user = service.validate(email, password);

        if (user != null) {

            System.out.println(user);
            System.out.println("Login successful");
            System.out.println("Role: " + user.getRole());

            if (user.getRole().equals("STUDENT")) {

                resp.sendRedirect("student/dashboard.jsp");

            } else if (user.getRole().equals("STAFF")) {

                resp.sendRedirect("staff/dashboard.jsp");

            } else if (user.getRole().equals("ADMIN")) {

                resp.sendRedirect("admin/dashboard.jsp");

            } else {

                resp.sendRedirect("login.jsp?error=true");
            }

        } else {

            System.out.println("Login failed");
            resp.sendRedirect("login.jsp?error=true");
        }
    }
}