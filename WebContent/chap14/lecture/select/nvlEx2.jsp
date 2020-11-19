<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("UTF-8"); %>
<%@ page import="java.sql.*" %>
<%

class Emp{
	private String ename;
	private int sal;
	
	public void setEname(String ename){
		this.ename=ename;
	}
	public void setSal(int sal){
		this.sal=sal;
	}
	public String getEname(){
		return this.ename;
	}
	public int getSal(){
		return this.sal;
	}
}
String sql="SELECT ename,salary*12+NVL(commission,0)"+"FROM employee";

List<Emp> list= new ArrayList<>(); /* 리스트 생성  */
Class.forName("oracle.jdbc.driver.OracleDriver");/* 클래스 클래스를 통해.forname 메소드로 데이터 로딩  */
String url = "jdbc:oracle:thin:@localhost:1521:orcl";/* url로 연결 */
String id = "c##mydbms";
String pw = "admin";
Connection con = DriverManager.getConnection(url, id, pw);/* url id pw 커넥트 */
Statement stmt = con.createStatement(); /* 스테이트먼트 생성 DB로 SQL문을 보내기위한 SQL서버STATEMENT 개체를 만듬.  */
ResultSet rs = stmt.executeQuery(sql);  /* 결과 값 저장. sql 수행 메소드 resultset값을 반환*/
while (rs.next())
	/*다음요소 선택하도록 반환  */
	{
  Emp emp = new Emp();/* 객체 생성 */
  emp.setEname(rs.getString(1));/* ENAME 저장  */
  emp.setSal(rs.getInt(2));/* SAL 저장 */
  list.add(emp); /* LIST에 추가  */
}
stmt.close();
con.close();
%>


	
<!-- 	// 5. 처리
	while (rs.next()) {
		Emp ddd = new Emp();/* 객체 생성  */
	/*	ddd.setEname(rs.getString(1)); /* set ename list에 넣어줌*/
	/*	ddd.setSal(rs.getString(2));/* set sal  list에 넣어줌*/
	/*	list.add(ddd);
	}
} catch (Exception e) {
	e.printStackTrace();
}
    */
 -->
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
<h1>이름/연봉</h1>
<ul>
<%
for(Emp e: list){
%>
<li><%=e.getEname() %>:<%=e.getSal() %></li>	
<% 
}
%>

</ul>
</body>
</html>