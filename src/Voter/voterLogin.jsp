<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Login Successfull</title>
    <link rel="stylesheet" type="text/css" href="voterLogin.css" />
</head>
<body>

<div class="header">
      <div class="title">
        <img src="../../DYPIU Logo.png" alt="DYPIU Logo" height="80%" width="60%">
      </div>
      <nav>
        <a href="../../index.html">Go To Homepage</a>
      </nav>
</div>

<%
String email = request.getParameter("email");
String passwd = request.getParameter("passwd");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection connection = DriverManager.getConnection( "jdbc:mysql://localhost:3306/registertest","root","mysql");

PreparedStatement st = connection.prepareStatement("Select voterEmail, passwd from voterList where voterEmail = ? and passwd = ?");
st.setString(1, email);
st.setString(2, passwd);

ResultSet rs = st.executeQuery();
if(rs.next()){
%>
<div class="success">
    <h2>Login Successfull</h2>
    <a href="../Voting/vote.jsp">Proceed To Vote</a>
</div>
<%}else{%>
<div class="failed">
    <h2>Login Failed</h2>
    <a href="voterLogin.html">Try Again</a>
</div>
<%}%>

<div class="footer"></div>
</body>
</html>