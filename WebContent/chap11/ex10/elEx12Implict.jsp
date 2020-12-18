<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("UTF-8"); %>
<!-- p.254

pageContext-> pageContext 클래스 이자 타입 get~~method로 property가 결정됨.
			  




*아래로는 다 map

pageScope
requestScope
sessionScope
applicationScope

param
paramValues
header
headerValues
cookie
initParam
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

${pageContext } <br />
${pageScope } <br />
${requestScope } <br />
${sessionScope } <br />
${applicationScope } <br />
${param } <br />
${paramValues } <br />
${header } <br />
${headerValue } <br />
${cookie } <br />
${initParam } <br />


</body>
</html>