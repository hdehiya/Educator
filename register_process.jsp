<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>

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
String Phone=request.getParameter("phone"); 
String Email=request.getParameter("email"); 
String Alt=request.getParameter("alt"); 
String Loc = request.getParameter("loc");
String web=request.getParameter("website");

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/educator?useSSL=false","root","bugs");
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into ngo (Name, Email, Phone, Alt, Loc, website) values ('"+Name+"','"+Email+"','"+Phone+"','"+Alt+"','"+Loc+"','"+web+"')"); 
String redirectURL= "masterhome.html";
response.sendRedirect(redirectURL);
%>
</body>
</html>