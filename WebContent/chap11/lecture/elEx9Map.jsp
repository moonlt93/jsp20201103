<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("UTF-8"); %>
<%
Map<String,String> map = new HashMap<>();
map.put("a","java");
map.put("b","html");
map.put("c","css");
map.put("3","servlet");
map.put("class","spring");
map.put("my key", "my value");


request.setAttribute("mymap", map);
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
${mymap }
<hr />
${mymap.a } <br />
${mymap.b } <br />
${mymap.c } <br />
${mymap["3"] } <br />
${mymap["class"] } <br />
${mymap["my key"] } <br />
<!-- 작은 따옴표두 괜츈 -->

<hr />
${mymap["a"] } <br />
${mymap[b] } <br />
${mymap[c] } <br />
<!-- b ,c는 영역에 아무리 찾아도 없으므로 나오지 않는다. -->
</body>
</html>