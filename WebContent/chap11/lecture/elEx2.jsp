<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("UTF-8"); %>
<%@ page import="chap08.Car" %>
<jsp:useBean id="car" class="chap08.Car">
	<jsp:setProperty property="name" name="car" value="kia"/>
</jsp:useBean>
<!-- Car객체를 가져와서 page영역에서 객체를 생성? -->
<jsp:useBean id="car2" class="chap08.Car">
	<jsp:setProperty property="name" name="car2" value="volvo"/>
</jsp:useBean>

<%
Car car3 = new Car();
car3.setName("benz");
request.setAttribute("car", car3); /* (불러오기(key), value) value값을 쓰고 싶으면 키=> value */

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

${car } <!-- 각 영역의 "car" attribute를 찾음  --> 
		<!-- 찾는 순서: page,request,session,application 작은거 부터 큰 순서로 -->

<br />
${car.name } 
<br />
${car2 } 
 <br />
${car3 } <!-- 예외처리가 잘 나지 않고 원하는 것이 없다면 아웃풋을 내보내지 않음. -->
 


</body>
</html>