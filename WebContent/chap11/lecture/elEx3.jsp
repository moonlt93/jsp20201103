<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="car" class="chap08.Car" >
	<jsp:setProperty name="car" property="name" value="hyendai"/>
	<jsp:setProperty name="car" property="speed" value="130"/>	
</jsp:useBean>

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
${car.name } <br />
${car.speed } <br />
<%-- ${car.stop }  <br /> --%>

<hr />
${car["name"] } <br />  <!-- 문자열로 넣어도 같은 결과를 출력 -->
${car["speed"] } <br />
<%-- ${car["stop"] } <br />
 --%>
</body>
</html>