package com.collegegrievance.controller;

import com.collegegrievance.dao.UserService;
import entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/register")
public class RegisterController extends HttpServlet {
    @Override
    protected void doPost(
            HttpServletRequest req,
            HttpServletResponse resp)
            throws ServletException, IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String department = req.getParameter("department");
        String password = req.getParameter("password");
        String role = req.getParameter("role");
        System.out.println(name + " " + email + " " + phone + " " + department + " " + password + " " + role);
        User user = new User();
        user.setName(name);
        user.setEmail(email);
        user.setPhone(phone);
        user.setDepartment(department);
        user.setPassword(password);
        user.setRole(role);

        UserService service = new UserService();

        int result = service.register(user);

        System.out.println(result);

        if (result > 0) {

            resp.sendRedirect("login.html?registered=true");

        } else {

            resp.getWriter().println("Registration failed");
        }
    }
}