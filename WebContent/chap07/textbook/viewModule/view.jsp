<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("UTF-8"); %>
<%
	String code= request.getParameter("code"); /* parameter 값에 Option value가 들어감. */
	String viewPageURI=null;
	
	if(code.equals("A")){
	viewPageURI="a.jsp";
	}else if(code.equals("B")){
	viewPageURI="b.jsp";
	}else if(code.equals("C")){
	viewPageURI="c.jsp";
	}
	
	%><!-- 조건에 따라 여러페이지가 일하게 할 수있음 하지만 , 사용자에게는 표시 안되지롱. 객체넘기기도 가능? -->
	<jsp:forward page="<%=viewPageURI %>"/>
	
	