<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<c:set var= "myVar1" value="my value1"/>
<c:set var="myVar2" value=" my value2" scope="request"/>
<c:set var="myVar1" value="my value1, request" scope="request"/>


${myVar1 } <br /> <!-- my value1 -->
${myVar2 } <br /> <!-- my value2 -->
<hr />


<c:remove var="myVar1"/> <!-- 전구간 삭제 -->
<c:remove var="myVar2" scope="request"/> <!-- 응답받은 request 객체에서 삭제.  -->
${myVar1 } <br />
${myVar2 } <br />

</body>
</html>