<%-- 
    Document   : contact
    Created on : 19 Oct, 2024, 5:30:02 PM
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
              String fn=request.getParameter("t1");
            String mob=request.getParameter("t2");
            String email=request.getParameter("t3");
            String com=request.getParameter("t4");
            try
            {
               Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/comment","root","");
                PreparedStatement ps;
                ps = con.prepareStatement("insert into contact values(?,?,?,?)");
                ps.setString(1,fn);
                ps.setString(2,mob);
                ps.setString(3,email);
                ps.setString(4, com);
                int i=ps.executeUpdate();
                if(i>0)
                {
                    out.println("register sucessfully");
                }
                else
                {
                    out.println("Register unsuccessfully");
                }
        }catch(Exception e)
        {
            out.println(e);
        }  
            
            %>
    </body>
</html>
