<%-- 
    Document   : error
    Created on : Oct 10, 2024, 11:49:12 AM
    Author     : ittak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Error</title>
    <meta charset="UTF-8">
    <style>
        .right-align {
            float: right;
            text-align: left;
        }
    </style>
</head>
<body>
    <h1>There is an existing student with this ID</h1>
    <div class="right-align">
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
    </div>
</body>
</html>



