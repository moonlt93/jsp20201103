<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("UTF-8"); %>
<!--bean이 아닐 경우 -->
<%
List<String> list = new ArrayList<>();
list.add("java");
list.add("jsp");
list.add("servlet");
list.add("html");
list.add("css");

request.setAttribute("mylist",list);

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

${mylist }
<hr />
${mylist[0] } <br /><!-- 얘는 bean이 아니고 list이므로 -->
${mylist[1] } <br />
${mylist[2] } <br />
<hr />
<%-- ${mylist.0 } <br /> 안되는 거임 --%>
<hr />
${mylist["0"] } <br /><!-- 얘는 bean이 아니고 list이므로 -->
${mylist["1"] } <br />
${mylist["2"] } <br />
<hr />

</body>
</html>