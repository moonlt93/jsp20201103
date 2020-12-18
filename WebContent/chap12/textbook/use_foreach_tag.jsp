<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("UTF-8"); %>
<%

	HashMap<String,Object> mapData = new HashMap<String,Object>();
	mapData.put("name","최범균");
	mapData.put("today",new java.util.Date());
	
%>
<c:set var="intArray" value="<%= new int[] {1,2,3,4,5} %>"/>
<c:set var="map" value="<%=mapData %>"/>

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
<h4>1부터 100까지의 홀수의 합</h4>
<c:set var="sum" value="0"/>
<c:forEach var="i" begin="1" end="100" step="2">
	<c:set var="sum" value="${sum+i }"/>
</c:forEach>
결과 : ${sum }

<!-- var는 변수이름 , 1부터 시작해서 2씩 늘어 나므로 1,3,5,7등등으로 증가. sum+=i느낌으로 증가 -->
 
<h4>구구단: 4단</h4>
<ul>
<c:forEach var="i" begin="1" end="9">
	<li>4*${i}=${4 * i }</li>
</c:forEach>
</ul>

<h4>구구단: 5단</h4>
<ul>
<c:forEach var="i" begin="1" end="9">
	<li>5*${i}=${5 * i }</li>
</c:forEach>
</ul>



 <h4>int형 배열</h4>

<c:forEach var="i" items="${intArray}" 
	begin="2" end="4" varStatus="status">
	${status.index } - ${status.count} -[${i}]<br />
</c:forEach>

<h4>Map</h4>

<c:forEach var="i" items="${map}">
	${i.key }=${i.value} <br />
</c:forEach>
   



</body>
</html>