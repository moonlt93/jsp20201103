<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("UTF-8"); %>
<!-- 
각 영역의 attribute를 <name,object> 쌍으로 가지고 있는 map

pageScope
requestScope
sessionScope
applicationScope

 -->
<%
pageContext.setAttribute("myAttr1","my Value1!!!!!");
pageContext.setAttribute("my attr1", "my value1");

request.setAttribute("myAttr1", "my request Value1!!!!!!!");
request.setAttribute("myAttr2", "my Value2!!!!!!!");
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
${myAttr1 } <br /> <!-- setAttribute를 통해 key 값인 myAttr1이 my Value1!!!을 내보냄 -->
${pageScope["my attr1"] } <br /> <!-- 얘도 key 값인 my attr1을 통해 my value1을 내보냄  -->
${myAttr2} <br />  <!-- my Value2!!!!!! -->
${requestScope.myAttr1 } <br /> <!-- request기본 객체에 담긴, key값인 myAttr1을 넣어서, my request Value1!!!!!! 이거 호출  -->

</body>
</html>