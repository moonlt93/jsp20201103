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
<%= pageContext %> <br />
${pageContext.request } <br />
${pageContext.session } <br />
${pageContext.ServletConfig } <br />
${pageContext.servletContext } <br />
${pageContext.response } <br />
<hr />
<%=request.getContextPath() %> <br />
${pageContext.request.contextPath() } <br />
${pageContext.request.cookie[0].name } <br />
${pageContext.request.cookie[0].value } <br />

</body>
</html>