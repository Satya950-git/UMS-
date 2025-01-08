<%-- 
    Document   : forgot
    Created on : 19 Oct, 2024, 5:32:54 PM
    Author     : user
--%>
<%@page import="java.sql.*" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           String email=request.getParameter("email");
            String password=request.getParameter("pwd");
            try
            { 
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","");
                PreparedStatement ps= con.prepareStatement("update login set password=? where email=?");
                ps.setString(2,email);
                ps.setString(1, password);
                int i=ps.executeUpdate();
                if(i > 0)
                {
                  out.println("Record Updated Successfully");
                }
                else
               {
                out.println("There is a problem in updating Record.");
               } 
               }catch (Exception e)
               {
                   out.println(e);
               }
            %>
    </body>
</html>
