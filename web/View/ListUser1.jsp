<%-- 
    Document   : ListUser1
    Created on : Jun 26, 2020, 12:08:03 AM
    Author     : Phu Cong
--%>

<%@page import="Model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

        %>
        <h1>Welcome <%=request.getAttribute("account")%></h1>
        <%
            ArrayList<User> list = (ArrayList< User>) request.getAttribute("list");
            out.println("<table border=1>");
            out.println("<tr>");
            out.println("<td>Account</td>");
            out.println("<td>Password</td>");
            out.println("<td>Name</td>");
            out.println("<td>Gender</td>");
            out.println("<td>Address</td>");
            out.println("<td>Dateofbirth</td>");
            out.println("</tr>");
            for (User item : list) {
                out.println("<tr>");
                out.println("<td>"+item.getAccountString()+"</td>");
                out.println("<td>"+item.getPassword()+"</td>");
                out.println("<td>"+item.getName()+"</td>");
                out.println("<td>"+item.isGender()+"</td>");
                out.println("<td>"+item.getAddress()+"</td>");
                out.println("<td> <img src='lisa.jpg'>"+item.getDob()+"</td>");
                out.println("</tr>");
            }
            out.println("</table>");
        %>
    </body>
</html>
