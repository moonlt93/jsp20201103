<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("UTF-8"); %>
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
<h1>get attribute</h1>
<h2><%= request.getAttribute("reqAttr1") %></h2>
<h2><%=session.getAttribute("sessionAttr1") %></h2><!-- 시크릿 모드 사용시 세션이 달라서 null로 뜸 -->
<h2><%=application.getAttribute("appAttr1") %></h2>

<!-- 공유객체에는 여러개 쓰지말자. 에러뜬다. -->
</body>
</html>