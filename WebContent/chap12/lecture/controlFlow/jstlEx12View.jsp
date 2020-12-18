<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<!-- 
request.getParameter("dark")== ${not empty param.dark} -> 이 코드를 var 어트리뷰트에 "dark"라는 이름으로 저장한것.
코드가 길어서 간단하게 사용하기 위해

Form에서 input태그의 name속성값인 "dark" 파라미터를 얻어 온것.

var("dark")= not empty param.dark


 -->


<c:if test="${not empty param.dark  }" var="dark" scope="session"><!-- 검정색일때 var가 attribute네   -->
   <div style="background-color: black; color:white;">
   Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse beatae molestiae tenetur aliquam totam facere necessitatibus rerum iure eum architecto consectetur dolor provident velit magnam iste quaerat adipisci maiores delectus.
   </div>
</c:if>

<c:if test="${!dark }"> <!-- 검정색 아닐때  -->
   <div style="background-color: white; color:black;">
   Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse beatae molestiae tenetur aliquam totam facere necessitatibus rerum iure eum architecto consectetur dolor provident velit magnam iste quaerat adipisci maiores delectus.
   </div>
</c:if>
<!-- jsp  empty null값의 유무 판단.    -->

</body>
</html>

