<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:usebean id="car" class="chap08.Car"></jsp:usebean>

<%
/* car.setName(request.getParameter("carName"));
car.setSpeed(Integer.valueOf(request.getParameter("carSpeed"))); */

%>
<jsp:setproperty name="car" property="name"param="carName"/>
<jsp:setproperty name="car" property="speed"param="carSpeed"/>




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
<jsp:getproperty property="name" name="car"/><br />
<jsp:getproperty property="speed" value="등록"></jsp:getproperty>

</form>
</body>
</html>