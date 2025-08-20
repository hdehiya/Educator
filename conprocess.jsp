<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login_Process</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
    String mail=request.getParameter("email"); 
    String n=request.getParameter("name"); 
    String msg=request.getParameter("message");

    Class.forName("com.mysql.jdbc.Driver"); 
    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/educator?useSSL=false","root","bugs");
    Statement st= con.createStatement(); 
    ResultSet rs;

    int i=st.executeUpdate("insert into contact (n, mail, msg) values ('"+n+"','"+mail+"','"+msg+"')"); 
    String redirectURL= "contact.html";
    response.sendRedirect(redirectURL);
%>

</body>
</html>