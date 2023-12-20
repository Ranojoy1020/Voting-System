<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head><title>Login</title></head>
<body>
<%

String name = request.getParameter("name");
String email = request.getParameter("email");
String passwd = request.getParameter("password");
String confirm_password = request.getParameter("confirm_password");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection connection = DriverManager.getConnection( "jdbc:mysql://localhost:3306/registertest","root","mysql");

PreparedStatement Stmt = connection.prepareStatement("INSERT INTO voterList (voterName,voterEmail,passwd) VALUES (?, ?, ?)");
Stmt.setString(1,name);
Stmt.setString(2,email);
Stmt.setString(3,passwd);

int x = Stmt.executeUpdate();
out.println(x);
       
%>
</body>
</html>