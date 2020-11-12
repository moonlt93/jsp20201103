  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>


<%@ include file="/WEB-INF/chap07/include-directive/navbarEx1.jsp" %>


<div class="container">
  <h1>cool page~!!!!!!</h1>
  <h2><%= name %></h2>
</div>

<%@ include file="/WEB-INF/chap07/include-directive/footerEx1.jsp" %>

</body>
</html>

