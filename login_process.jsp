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
    String pword=request.getParameter("pass"); 

    Class.forName("com.mysql.jdbc.Driver"); 
    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/educator?useSSL=false","root","bugs");
    Statement st= con.createStatement(); 
    ResultSet rs;

    String selq = "select Email,Pwd from volunteer where Email='"+mail+"'";
    rs=st.executeQuery(selq);
    while(rs.next()){
    String dbmail=rs.getString("Email");
    String dbpass=rs.getString("Pwd");

    if(mail.equals(dbmail) && pword.equals(dbpass))
        {String redirectURL= "ngo.jsp";
        response.sendRedirect(redirectURL);} }
    con.close();
%>

</body>
</html>