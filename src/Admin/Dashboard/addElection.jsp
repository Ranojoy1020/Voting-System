<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<%!

    public void createTables(){
        
    }

%>

<%

String url = "jdbc:mysql://localhost:3306/registertest";
String user = "root";
String password = "mysql";

Class.forName("com.mysql.cj.jdbc.Driver");
Connection connection = DriverManager.getConnection(url, user, password);

StringBuilder sql = new StringBuilder();

sql.append("create table ").append("route3").append("(");
sql.append(" voterID int AUTO_INCREMENT,");
sql.append(" voterName varchar(20) ,");
//for(String name : StopNamesForDB)
//{
//sql.append(name).append(",");
//}
sql.append("PRIMARY KEY (").append("voterID").append(")");
sql.append(")");

PreparedStatement stmt = connection.prepareStatement(sql.toString());
stmt.executeUpdate();

%>