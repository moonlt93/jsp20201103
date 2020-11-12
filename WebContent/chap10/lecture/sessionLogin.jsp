<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("UTF-8"); %>

<%
String id = request.getParameter("id"); // 저장된 id하나를 가져옴.
String password = request.getParameter("password");// 저장된 password하나를 가져옴.

	if(id.equals(password)){
		session.setAttribute("MEMBERID",id); //setattribute를 통해 값을 저장한다. password가 같으면 id를 저장///..>?
	
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
로그인에 성공했습니다.

</body>
</html>
<% 
	}else {//로그인 실패시.
%>
<script>
alert("로그인에 실패했습니다.");
history.go(-1);
</script>
<%
}
%>