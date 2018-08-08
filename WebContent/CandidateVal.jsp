<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
    <%@page import="oracle.jdbc.driver.OracleDriver" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
  String username=request.getParameter("cemail");
  String password=request.getParameter("cpassword");
  
  Driver d=new OracleDriver();
  DriverManager.registerDriver(d);
  Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","tt","tt");
  PreparedStatement ps =con.prepareStatement("select * from login where username=? and password=?");
  ps.setString(1,username);
  ps.setString(2,password);
  System.out.println("connected");
  ResultSet rs =ps.executeQuery();
  System.out.println("executed");
 
  if(username.equalsIgnoreCase("snrao") && password.equals("java"))
  {
    out.println("<h3>Thankyou, you are VALID</h3>");
    response.sendRedirect("AvailableTest.html");
  }
  else
  {
    out.println("<h3>Sorry, you are INVALID</h3>");   
    response.sendRedirect("candlogin.htm");
  }
%>
</body>
</html>