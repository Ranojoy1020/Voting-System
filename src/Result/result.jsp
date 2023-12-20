<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>College Voting System - Results</title>
    <link rel="stylesheet" type="text/css" href="style.css">
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
    
    <form class = "main" action = "" method = "get">
                <h2>Results</h2>
                <%
                    String url = "jdbc:mysql://localhost:3306/registertest";
                    String user = "root";
                    String password = "mysql";

                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection connection = DriverManager.getConnection(url, user, password);

                    String selectGS = "SELECT * FROM gslist INNER JOIN candidateList ON gslist.candidate_ID = candidateList.candidateID";
                    Statement GSstmt = connection.createStatement();
                    ResultSet GSresult = GSstmt.executeQuery(selectGS);
                %>

                    <div class = "categoryTable">
                        <h3>General Secretary</h3>
                        <table>
                            <tr>
                                <th>Candidate Name</th>
                                <th>Email ID</th>
                                <th>Contact No.</th>
                                <th>Vote Count</th>
                            </tr>
                        <%    while(GSresult.next()){ %>
                                <tr>
                                <td>
                                    <%=GSresult.getString("candidateName") %>
                                </td>
                                <td>
                                    <%=GSresult.getString("candidateEmail") %>
                                </td>
                                <td>
                                    <%=GSresult.getString("candidatePhone") %>
                                </td>
                                <td>
                                    <%=GSresult.getString("voteCount") %>
                                </td>
                                </tr>
                        <%    } %>
                        </table>
                    </div>

                <%      String selectLR = "SELECT * FROM lrlist INNER JOIN candidateList ON lrlist.candidate_ID = candidateList.candidateID";
                        Statement LRstmt = connection.createStatement();
                        ResultSet LRresult = LRstmt.executeQuery(selectLR);
                %>
                    <div class = "categoryTable">
                        <h3>Lady Representative</h3>
                        <table>
                            <tr>
                                <th>Candidate Name</th>
                                <th>Email ID</th>
                                <th>Contact No.</th>
                                <th>Vote Count</th>
                            </tr>
                        <%    while(LRresult.next()){ %>
                                <tr>
                                <td>
                                    <%=LRresult.getString("candidateName") %>
                                </td>
                                <td>
                                    <%=LRresult.getString("candidateEmail") %>
                                </td>
                                <td>
                                    <%=LRresult.getString("candidatePhone") %>
                                </td>
                                <td>
                                    <%=LRresult.getString("voteCount") %>
                                </td>
                                </tr>
                        <%    } %>
                        </table>
                    </div>

                <%      String selectTS = "SELECT * FROM tslist INNER JOIN candidateList ON tslist.candidate_ID = candidateList.candidateID";
                        Statement TSstmt = connection.createStatement();
                        ResultSet TSresult = LRstmt.executeQuery(selectTS);
                %>
                    <div class = "categoryTable">
                        <h3>Technical Secretary</h3>
                        <table>
                            <tr>
                                <th>Candidate Name</th>
                                <th>Email ID</th>
                                <th>Contact No.</th>
                                <th>Vote Count</th>
                            </tr>
                        <%    while(TSresult.next()){ %>
                                <tr>
                                <td>
                                    <%=TSresult.getString("candidateName") %>
                                </td>
                                <td>
                                    <%=TSresult.getString("candidateEmail") %>
                                </td>
                                <td>
                                    <%=TSresult.getString("candidatePhone") %>
                                </td>
                                <td>
                                    <%=TSresult.getString("voteCount") %>
                                </td>
                                </tr>
                        <%    } %>
                        </table>
                    </div>

                <%      String selectSS = "SELECT * FROM sslist INNER JOIN candidateList ON sslist.candidate_ID = candidateList.candidateID";
                        Statement SSstmt = connection.createStatement();
                        ResultSet SSresult = LRstmt.executeQuery(selectSS);
                %>
                    <div class = "categoryTable">
                        <h3>Sports Secretary</h3>
                        <table>
                            <tr>
                                <th>Candidate Name</th>
                                <th>Email ID</th>
                                <th>Contact No.</th>
                                <th>Vote Count</th>
                            </tr>
                        <%    while(SSresult.next()){ %>
                                <tr>
                                <td>
                                    <%=SSresult.getString("candidateName") %>
                                </td>
                                <td>
                                    <%=SSresult.getString("candidateEmail") %>
                                </td>
                                <td>
                                    <%=SSresult.getString("candidatePhone") %>
                                </td>
                                <td>
                                    <%=SSresult.getString("voteCount") %>
                                </td>
                                </tr>
                        <%    } %>
                        </table>
                    </div>

                <%      String selectCS = "SELECT * FROM cslist INNER JOIN candidateList ON cslist.candidate_ID = candidateList.candidateID";
                        Statement CSstmt = connection.createStatement();
                        ResultSet CSresult = LRstmt.executeQuery(selectCS);
                %>
                    <div class = "categoryTable">
                        <h3>Cultural Secretary</h3>
                        <table>
                            <tr>
                                <th>Candidate Name</th>
                                <th>Email ID</th>
                                <th>Contact No.</th>
                                <th>Vote Count</th>
                            </tr>
                        <%    while(CSresult.next()){ %>
                                <tr>
                                <td>
                                    <%=CSresult.getString("candidateName") %>
                                </td>
                                <td>
                                    <%=CSresult.getString("candidateEmail") %>
                                </td>
                                <td>
                                    <%=CSresult.getString("candidatePhone") %>
                                </td>
                                <td>
                                    <%=CSresult.getString("voteCount") %>
                                </td>
                                </tr>
                        <%    } %>
                        </table>
                    </div>

                <%      String selectNS = "SELECT * FROM nslist INNER JOIN candidateList ON nslist.candidate_ID = candidateList.candidateID";
                        Statement NSstmt = connection.createStatement();
                        ResultSet NSresult = NSstmt.executeQuery(selectNS);
                %>
                    <div class = "categoryTable">
                        <h3>Newsletter Secretary</h3>
                        <table>
                            <tr>
                                <th>Candidate Name</th>
                                <th>Email ID</th>
                                <th>Contact No.</th>
                                <th>Vote Count</th>
                            </tr>
                        <%    while(NSresult.next()){ %>
                                <tr>
                                <td>
                                    <%=NSresult.getString("candidateName") %>
                                </td>
                                <td>
                                    <%=NSresult.getString("candidateEmail") %>
                                </td>
                                <td>
                                    <%=NSresult.getString("candidatePhone") %>
                                </td>
                                <td>
                                    <%=NSresult.getString("voteCount") %>
                                </td>
                                </tr>
                        <%    } %>
                        </table>
                    </div>

                    <%-- <div>
                    <label for="confirm">
                        <input type="checkbox" name="check" id="check" required>Confirm
                    </label>

                    <button type="submit" class="submitBtn" id="submitBtn">Submit</button>
                    </div> --%>
    </form>

    <div class="footer"></div>
</body>
</html>
