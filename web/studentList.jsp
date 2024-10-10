<%-- 
    Document   : list
    Created on : Oct 10, 2024, 11:39:17 AM
    Author     : ittak
--%>

<%@page import="model.StudentDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Added</title>
    <meta charset="UTF-8">
</head>
<body>
    <h1>Id: ${id}</h1>
    <h1>Name: ${name}</h1>
    <h1>Gpa: ${gpa}</h1>
    <p>is added</p>

    <h2>Student List</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>GPA</th>
        </tr>
        <%
            model.StudentDAO studentDAO = new model.StudentDAO();
            for(model.Student student : studentDAO.getAllStudents()) {
        %>
        <tr>
            <td><%= student.getId() %></td>
            <td><%= student.getName() %></td>
            <td><%= student.getGpa() %></td>
        </tr>
        <%
            }
        %>
    </table>
    <br>
    <a href="index.jsp">Back to Add Student</a>
</body>
</html>


