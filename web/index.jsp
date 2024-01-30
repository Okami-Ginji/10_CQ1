<%-- 
    Document   : index
    Created on : Jan 30, 2024, 6:45:14 PM
    Author     : Administrator
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
    List<String> students = (List<String>) request.getAttribute("result");

    // If students is not available in request attribute, try retrieving it from the session
%>

<h2>Student List</h2>



<form action="StudentServlet" method="post">
    IDStudent: <input type="text" name="id" />
    FullName: <input type="text" name="name" />
    Gender: <select name="gender">
        <option value="Male">Male</option>
        <option value="Female">Female</option>
    </select>
    <input type="submit" name="action">
</form>

<% 
    if(students != null) {
%>
    <table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Gender</th>
    </tr>
        <tr>
            <td><%= students.get(0) %></td>
            <td><%= students.get(1) %></td>
            <td><%= students.get(2) %></td>
        </tr>
    <% } %>
    </table>
    </body>
</html>
