<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Candidate List- College Voting System</title>
    <link rel="stylesheet" type="text/css" href="list.css" />
</head>
<body>
    <header>
        <h1>List of Candidates</h1>
    </header>

    <main>
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
                                </tr>
                        <%    } %>
                        </table>
                    </div>
    </main>

    <footer>
        <p>&copy; 2023 College Voting System. All rights reserved.</p>
    </footer>
</body>
</html>
