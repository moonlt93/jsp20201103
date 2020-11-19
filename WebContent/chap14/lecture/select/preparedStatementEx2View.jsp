<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("UTF-8"); %>
<%@ page import="java.sql.*" %>

<%
String dno= request.getParameter("dno");
String sql="SELECT max(salary),min(salary),avg(salary), "
			+"sum(salary) "
			+"FROM employee "
			+"Where dno= ?";
Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

int max = 0;
int min = 0;
double avg = 0;
int sum = 0;

try(
Connection con = DriverManager.getConnection(url, id, pw);
PreparedStatement pstmt = con.prepareStatement(sql);
		){
	int DNONO = Integer.valueOf(dno); /* STRING->INT로 들어가는 DATA 형식 신경쓸것.  */
	pstmt.setInt(1, DNONO);
	ResultSet rs = pstmt.executeQuery();
	
	if(rs.next()){
		System.out.println(rs);
		max=rs.getInt(1);
		min=rs.getInt(2);
		avg=rs.getDouble(3);
		sum=rs.getInt(4);
		
	}
}catch(Exception e){
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
<title>문진수</title>

</head>
<body>
<h1>max=<%=max %></h1>
<h1>min=<%=min %></h1>
<h1>avg=<%=avg %></h1>
<h1>sum=<%=sum %></h1>

</body>
</html>