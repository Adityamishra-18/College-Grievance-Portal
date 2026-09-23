package com.collegegrievance.controller;

import com.collegegrievance.dao.ComplaintService;
import com.collegegrievance.entity.Complaint;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/submitComplaint")
public class ComplaintController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String title = req.getParameter("title");
        String description = req.getParameter("description");
        String category = req.getParameter("category");
        String priority = req.getParameter("priority");
        String department = req.getParameter("department");

        // Temporary student ID
        int studentId = Integer.parseInt(req.getParameter("studentId"));

        Complaint complaint = new Complaint(
                title,
                description,
                category,
                priority,
                department,
                studentId
        );

        ComplaintService service = new ComplaintService();

        int result = service.saveComplaint(complaint);

        if (result > 0) {

            System.out.println("Complaint submitted successfully");

            resp.sendRedirect(
                    req.getContextPath() + "/student/dashboard.jsp?success=true"
            );

        } else {

            System.out.println("Complaint submission failed");

            resp.sendRedirect(
                    req.getContextPath() + "/student/dashboard.jsp?error=true"
            );
        }
    }
}