<%-- 
    Document   : delete
    Created on : 19 Oct, 2024, 5:35:26 PM
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
        <%@page import="java.sql.*" %>
        <%
              String email=request.getParameter("t1");
              try
              {  
                  Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","");
                PreparedStatement ps;
                ps = con.prepareStatement("delete from login where email=?");
                ps.setString(1, email);
                int i=ps.executeUpdate();
                if(i>0)
                {
                    out.println("Record Deleted Successfully");
                }
          
        }catch(Exception e)
        {
            out.println(e);
        }
            %>
    </body>
</html>
