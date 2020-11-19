<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("UTF-8"); %>
<%@ page import="java.sql.*" %>
<%
String eno=request.getParameter("eno");
/* String sql="SELECT ename FROM employee WHERE eno "+eno; */
String sql= "SELECT ename FROM employee "+"WHERE eno= ?";
			 Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";
Connection con = DriverManager.getConnection(url, id, pw);
PreparedStatement stmt = con.prepareStatement(sql);
/* prepared statement statement를 상속받는 인터페이스, sql 구문을 실행,성능 빠름, like같은 키워드 사용x */
/*  변수가 들어갈 자리는 '?' 대응값을 지정시 setstring, setint 등의 setxx 메소드*/
stmt.setInt(1,Integer.parseInt(eno));
ResultSet rs = stmt.executeQuery();

String name="";
if(rs.next()){
	name=rs.getString(1);
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
<title>문진수</title>
</head>
<body>
<h1><%=name %></h1>

</body>
</html>