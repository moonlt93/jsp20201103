<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("UTF-8"); %>
<%@ page import="java.sql.*" %>
<%

String eno= request.getParameter("eno");
String sql = "SELECT d.dname " 
        + "FROM employee e, department d "
        + "WHERE e.dno = d.dno "
        + "AND e.eno = ?";

Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

Connection con = DriverManager.getConnection(url, id, pw);
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setInt(1,Integer.valueOf(eno));
ResultSet rs = pstmt.executeQuery();


String dname="";
if(rs.next()){
	dname =rs.getString(1);
}


pstmt.close();
con.close();
%>



<body>
<h1><%= eno  %>의 부서는 <%= dname %></h1>

</body>
</html>