<%-- 
    Document   : logout
    Created on : 14 Nov, 2024, 1:01:29 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
    if (session != null) {
        session.invalidate(); // End the session
    }
    response.sendRedirect("index.html"); // Redirect to login page
%>
    </body>
</html>
