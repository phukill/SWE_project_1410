<%-- 
    Document   : ListUser
    Created on : Jun 12, 2020, 8:33:32 AM
    Author     : Phu Cong
--%>

<%@page import="Model.Course"%>
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
            ArrayList<Course> list = (ArrayList< Course>) request.getAttribute("list");
            out.println("<table border=1>");
            out.println("<tr>");
            out.println("<td>Account</td>");
            out.println("<td>Password</td>");
            out.println("<td>Name</td>");
            out.println("<td>Gender</td>");
            out.println("<td>Address</td>");
            out.println("<td>Dateofbirth</td>");
            out.println("</tr>");
            for (Course item : list) {
                out.println("<tr>");
                out.println("<td>"+item.getCourseID()+"</td>");
                out.println("<td>"+item.getCourseName()+"</td>");
                out.println("<td>"+item.getCourseAddress()+"</td>");
                out.println("<td>"+item.getCourseDate()+"</td>");
                out.println("</tr>");
            }
            out.println("</table>");
        %>
    </body>
</html>
