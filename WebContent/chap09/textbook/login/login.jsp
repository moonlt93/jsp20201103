<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap09.*" %>
<%request.setCharacterEncoding("UTF-8"); %>
<%
String id =request.getParameter("id"); //파라미터를 불러옴.
String password =request.getParameter("password"); //파라미터를 불러옴.

if(id.equals(password)){
	response.addCookie(
			Cookies.createCookie("AUTH",id, "/",-1)
			);

%>
<!DOCTYPE html>
<html>
<head>

<title>문진수</title>
</head>
<body>
로그인에 성공했습니다.

</body>
</html>
<%
} else { //로그인 실패시
%>
<script>
alert("로그인에 실패하였습니다.");
history.go(-1);
</script>

<%
} 
%>