<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register_Process</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String Name=request.getParameter("name"); 
String Dob=request.getParameter("dob"); 
String Phone=request.getParameter("phone"); 
String Email=request.getParameter("email"); 
String Pwd= request.getParameter("pword");
String Qual= request.getParameter("qual");
String Sub= request.getParameter("sub");
String Exp= request.getParameter("exp");
String Loc= request.getParameter("loc");
String Day= request.getParameter("day");

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/educator?useSSL=false","root","bugs");
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into volunteer (Name, Dob, Phone, Email, Pwd, Qual, Sub, Exp, Loc, Day) values ('"+Name+"','"+Dob+"','"+Phone+"','"+Email+"','"+Pwd+"','"+Qual+"','"+Sub+"','"+Exp+"','"+Loc+"','"+Day+"')"); 
String redirectURL= "login.html";
response.sendRedirect(redirectURL);
%>
</body>
</html>