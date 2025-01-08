<%-- 
    Document   : login
    Created on : 19 Oct, 2024, 10:28:14 AM
    Author     : user
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
         String email=request.getParameter("email");
            String password=request.getParameter("pwd");
            try{
            Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","");
                PreparedStatement ps;
                ps = con.prepareStatement("select * from login WHERE email=? and password=?");
                ps.setString(1,email);
                ps.setString(2, password);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                response.sendRedirect("Dashboard.html");        
               // out.println("valid email or password");              
                } 
                else {
                out.println("Invalid email or password");
                }     
            }
             catch(Exception e)
              {
                out.println(e); 
               }
    %>
</html>
