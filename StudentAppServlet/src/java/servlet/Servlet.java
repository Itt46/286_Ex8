/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
/**
 *
 * @author ittak
 */
package servlet;

import model.Student;
import model.StudentDAO;
import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Servlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        double gpa = Double.parseDouble(request.getParameter("gpa"));

        StudentDAO studentDAO = new StudentDAO();

        // Check if the student exists
        if (studentDAO.getStudentById(id) != null) {
            // If exists, forward to error page
            RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
            rd.forward(request, response);
        } else {
            // Otherwise, add student and forward to success page
            Student newStudent = new Student(id, name, gpa);
            studentDAO.addStudent(newStudent);

            request.setAttribute("id", id);
            request.setAttribute("name", name);
            request.setAttribute("gpa", gpa);

            RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
            rd.forward(request, response);
        }
    }
}


