<%@ page import="java.sql.*" %>

<%
String email = request.getParameter("email");
String passwd = request.getParameter("passwd");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection connection = DriverManager.getConnection( "jdbc:mysql://localhost:3306/registertest","root","mysql");

PreparedStatement st = connection.prepareStatement("Select candidateEmail, passwd from candidateList " + " where candidateEmail = ? and passwd = ?");

 st.setString(1, email);
 st.setString(2, passwd);

ResultSet rs = st.executeQuery();
if(rs.next())
response.sendRedirect("candidateHome.html");
else
out.println("<h1>Wrong User name and Password</h1>");
%>