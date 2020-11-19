<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String sql = "SELECT hiredate FROM employee WHERE eno = 7369";
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String user = "c##mydbms";
String pw = "admin";
java.sql.Date hireDate = null; /* 테이블변수 컬럼안의 변수를 받을그릇을 생성 */
Class.forName("oracle.jdbc.driver.OracleDriver");
try (Connection conn = DriverManager.getConnection(url, user, pw);
    Statement stmt = conn.createStatement();) {
  
  ResultSet rs = stmt.executeQuery(sql);
  
  if (rs.next()) {
  	hireDate = rs.getDate("hiredate"); /* .get타입("") 내가 받고싶은 테이블 타입을 써준다.  */
  }
} catch (Exception e) {
  e.printStackTrace(); 
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<h1>hireDate: <%= hireDate %></h1>
</body>
</html>