<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="member" class="chap08.member.MemberInfo" scope="request"/><!-- id 객체 접근시 사용할 이름 , class 불러올 자바 빈 클래스, scope 객체를 저장할 영역. -->
<%
Object o =request.getAttribute("member");
System.out.println(o);
%>
<jsp:forward page="javaBeanEx4Forward.jsp"/>
