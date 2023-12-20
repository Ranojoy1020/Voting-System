<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> <%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Cast Vote</title>
    <link rel="stylesheet" type="text/css" href="submitVote.css" />
  </head>
  <body>
    <div class="header">
      <div class="title">
        <img src="../../DYPIU Logo.png" alt="DYPIU Logo" height="80%" width="60%">
      </div>
      <%-- <nav>
        <a href="../../index.html">Go To Homepage</a>
      </nav> --%>
    </div>

    <%
      String url = "jdbc:mysql://localhost:3306/registertest";
      String user = "root";
      String password = "mysql";

      Class.forName("com.mysql.cj.jdbc.Driver");
      Connection connection = DriverManager.getConnection(url, user, password);

      int gsID = Integer.parseInt(request.getParameter("gs"));
      int lrID = Integer.parseInt(request.getParameter("lr"));
      int tsID = Integer.parseInt(request.getParameter("ts"));
      int ssID = Integer.parseInt(request.getParameter("ss"));
      int csID = Integer.parseInt(request.getParameter("cs"));
      int nsID = Integer.parseInt(request.getParameter("ns"));

      int gs_voteCount = 0;
      int lr_voteCount = 0;
      int ts_voteCount = 0;
      int ss_voteCount = 0;
      int cs_voteCount = 0;
      int ns_voteCount = 0;

      if(gsID != 0){
        PreparedStatement st = connection.prepareStatement("Select voteCount from gsList where candidate_ID = ?");
        st.setInt(1, gsID);
        ResultSet rs = st.executeQuery();
        if(rs.next()){
          gs_voteCount = rs.getInt(1);
          int cast_vote = gs_voteCount + 1;

          PreparedStatement vote = connection.prepareStatement("UPDATE gslist SET voteCount = ? WHERE candidate_ID = ?");
          vote.setInt(1, cast_vote);
          vote.setInt(2, gsID);
          vote.executeUpdate();
          
        }
      }
      if(lrID != 0){
        PreparedStatement st = connection.prepareStatement("Select voteCount from lrList where candidate_ID = ?");
        st.setInt(1, lrID);
        ResultSet rs = st.executeQuery();
        if(rs.next()){
          gs_voteCount = rs.getInt(1);
          int cast_vote = lr_voteCount + 1;

          PreparedStatement vote = connection.prepareStatement("UPDATE lrlist SET voteCount = ? WHERE candidate_ID = ?");
          vote.setInt(1, cast_vote);
          vote.setInt(2, lrID);
          vote.executeUpdate();
          
        }
      }
      if(tsID != 0){
        PreparedStatement st = connection.prepareStatement("Select voteCount from tsList where candidate_ID = ?");
        st.setInt(1, tsID);
        ResultSet rs = st.executeQuery();
        if(rs.next()){
          ts_voteCount = rs.getInt(1);
          int cast_vote = ts_voteCount + 1;

          PreparedStatement vote = connection.prepareStatement("UPDATE tslist SET voteCount = ? WHERE candidate_ID = ?");
          vote.setInt(1, cast_vote);
          vote.setInt(2, tsID);
          vote.executeUpdate();
          
        }
      }
      if(ssID != 0){
        PreparedStatement st = connection.prepareStatement("Select voteCount from ssList where candidate_ID = ?");
        st.setInt(1, ssID);
        ResultSet rs = st.executeQuery();
        if(rs.next()){
          ss_voteCount = rs.getInt(1);
          int cast_vote = ss_voteCount + 1;

          PreparedStatement vote = connection.prepareStatement("UPDATE sslist SET voteCount = ? WHERE candidate_ID = ?");
          vote.setInt(1, cast_vote);
          vote.setInt(2, gsID);
          vote.executeUpdate();
          
        }
      }
      if(csID != 0){
        PreparedStatement st = connection.prepareStatement("Select voteCount from csList where candidate_ID = ?");
        st.setInt(1, csID);
        ResultSet rs = st.executeQuery();
        if(rs.next()){
          cs_voteCount = rs.getInt(1);
          int cast_vote = cs_voteCount + 1;

          PreparedStatement vote = connection.prepareStatement("UPDATE cslist SET voteCount = ? WHERE candidate_ID = ?");
          vote.setInt(1, cast_vote);
          vote.setInt(2, csID);
          vote.executeUpdate();
          
        }
      }
      if(nsID != 0){
        PreparedStatement st = connection.prepareStatement("Select voteCount from nsList where candidate_ID = ?");
        st.setInt(1, nsID);
        ResultSet rs = st.executeQuery();
        if(rs.next()){
          ns_voteCount = rs.getInt(1);
          int cast_vote = ns_voteCount + 1;

          PreparedStatement vote = connection.prepareStatement("UPDATE nslist SET voteCount = ? WHERE candidate_ID = ?");
          vote.setInt(1, cast_vote);
          vote.setInt(2, nsID);
          vote.executeUpdate();
          
        }
      }


      
    %>
  
    <div class="thank">
      <h3>Your vote was submitted successfully.</h3>
      <h3>Thank you for voting!</h3>
      <a href="../../index.html">Return to Home Page</a>
    </div>

    <div class="footer"></div>
  </body>
</html>
