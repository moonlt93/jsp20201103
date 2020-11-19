<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("UTF-8"); %>
<%@ page import="java.sql.*" %>
<%
String dno = request.getParameter("dno");/*파라미터 1  */
String name = request.getParameter("name");/*파라미터 2  */
name = name.toUpperCase(); /* 이건 걍 글씨키워주기용인가  */
String sql = "SELECT ename FROM employee "
           + "WHERE dno = ? AND ename LIKE ? ";
Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";
Connection con = DriverManager.getConnection(url, id, pw);
PreparedStatement pstmt = con.prepareStatement(sql);
int eebb = Integer.valueOf(dno);
pstmt.setInt(1, eebb);
pstmt.setString(2,"%"+name+"%");
ResultSet rs = pstmt.executeQuery();
List<String> list = new ArrayList<>();
while (rs.next()) {
	  list.add(rs.getString(1)); 
	}
pstmt.close();
con.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>문진수</title>
</head>
<body>
<h1><%= dno %>부서 직원 목록</h1>
<ul>
<%
for (String n : list) {
%>
  <li><%= n %></li>
<%
}
%>
</ul>
</body>
</html>