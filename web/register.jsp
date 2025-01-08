<%-- 
    Document   : register
    Created on : 21 Sep, 2024, 12:11:42 PM
    Author     : user
--%>


 <%@page import = "java.sql.*"%>
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
String ln=request.getParameter("t2");
String ph=request.getParameter("t3");
String em=request.getParameter("t4");
String p=request.getParameter("t5");
String rp=request.getParameter("t6");
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","");
            PreparedStatement ps=con.prepareStatement("insert into login values(?, ?, ?, ?, ?, ?)");
           ps.setString(1,fn);
           ps.setString(2,ln);
           ps.setString(3,ph);
           ps.setString(4,em);
           ps.setString(5,p);
           ps.setString(6,rp);
            
            int x=ps.executeUpdate();
            if(x>0)
            {
                out.println("Data inserted successfully");
            }
            else
            {
                out.println("Data insertion unsuccessful");
            }
        }catch(Exception e)
        {
            out.println(e);
        }
        %>
    </body>
</html>
