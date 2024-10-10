<%-- 
    Document   : index
    Created on : Oct 10, 2024, 11:47:59 AM
    Author     : ittak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Form</title>
    <meta charset="UTF-8">
</head>
<body>
    <h1>Enter Student Information</h1>
    <form action="Servlet" method="post">
        ID: <input type="text" name="id" required><br>
        Name: <input type="text" name="name" required><br>
        GPA: <input type="text" name="gpa" required><br>
        <input type="submit" value="Send">
    </form>
</body>
</html>

