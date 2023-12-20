<%@ page language= "java" contentType= "text/html; charset=UTF-8" pageEncoding= "UTF-8" %>
<%@ page import = "java.util.Arrays" %>
<%@ page import = "java.sql.*" %>

<%

String name = request.getParameter("name");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String passwd = request.getParameter("password");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection connection = DriverManager.getConnection( "jdbc:mysql://localhost:3306/registertest","root","mysql");

PreparedStatement check = connection.prepareStatement("Select candidateEmail from candidateList " + " where candidateEmail = ?");
check.setString(1, email);
ResultSet chkRes = check.executeQuery();

if(chkRes.next()){ %>
    <h2>User already registered.</h2>
<% }else{
    PreparedStatement Stmt = connection.prepareStatement("INSERT INTO candidateList (candidateName,candidateEmail,candidatePhone, passwd) VALUES (?, ?, ?, ?)");
    Stmt.setString(1,name);
    Stmt.setString(2,email);
    Stmt.setString(3,phone);
    Stmt.setString(4,passwd);

    int x = Stmt.executeUpdate();
    out.println(x);

    PreparedStatement st = connection.prepareStatement("Select candidateID,candidateEmail from candidateList " + " where candidateEmail = ?");
    st.setString(1, email);

    ResultSet rs = st.executeQuery();

    int candidate_ID = 0;
%>  
    <h2>Registration Successfull</h2><br>
    <h2>You have registered for the following categories :</h2>
<%

    if(rs.next()){
        candidate_ID = rs.getInt(1);

        String chkbxValue[] = request.getParameterValues("category");

        if(Arrays.asList(chkbxValue).contains("gs")){
            out.println("General Secretary<br>");
            PreparedStatement insert = connection.prepareStatement("INSERT INTO gsList (candidate_ID) VALUES (?)");
            insert.setInt(1,candidate_ID);
            int res = insert.executeUpdate();

        }

        if(Arrays.asList(chkbxValue).contains("lr")){
            out.println("Lady Representative<br>");
            PreparedStatement insert = connection.prepareStatement("INSERT INTO lrList (candidate_ID) VALUES (?)");
            insert.setInt(1,candidate_ID);
            int res = insert.executeUpdate();
        }

        if(Arrays.asList(chkbxValue).contains("ts")){
            out.println("Technical Secretary<br>");
            PreparedStatement insert = connection.prepareStatement("INSERT INTO tsList (candidate_ID) VALUES (?)");
            insert.setInt(1,candidate_ID);
            int res = insert.executeUpdate();
        }

        if(Arrays.asList(chkbxValue).contains("cs")){
            out.println("Sports Secretary<br>");
            PreparedStatement insert = connection.prepareStatement("INSERT INTO csList (candidate_ID) VALUES (?)");
            insert.setInt(1,candidate_ID);
            int res = insert.executeUpdate();
        }

        if(Arrays.asList(chkbxValue).contains("ss")){
            out.println("Cultural Secretary<br>");
            PreparedStatement insert = connection.prepareStatement("INSERT INTO ssList (candidate_ID) VALUES (?)");
            insert.setInt(1,candidate_ID);
            int res = insert.executeUpdate();
        }

        if(Arrays.asList(chkbxValue).contains("ns")){
            out.println("Newsletter Secretary<br>");
            PreparedStatement insert = connection.prepareStatement("INSERT INTO nsList (candidate_ID) VALUES (?)");
            insert.setInt(1,candidate_ID);
            int res = insert.executeUpdate();
        }
    }

}



%>