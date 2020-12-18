<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("UTF-8"); %>
<html>
<body>
	<c:url value="/chap12/jstlEx26url.jsp" var="searchUrl">
	<c:param name="w" value="blog"/>
	<c:param name="q" value="공원"/>
	</c:url>	
	<ul>
		<li>${searchUrl}</li>
		<li><c:url value="/use_if_tag.jsp"/></li>
		<li><c:url value="./use_if_tag.jsp"/></li>
	</ul>
	
	
</body>
</html>