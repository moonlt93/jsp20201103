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
<h1>방명록</h1>

<form action="jstlEx25Process.jsp" method="post">
제목 : <input type="text" name="title" />
<br />
<textarea name="body" cols="30" rows="3"></textarea>
<br />
<input type="submit" value="등록" />
</form>
<hr />
<c:if test="${empty list }" >
  <h3>목록 없음</h3>
</c:if>

<c:if test="${not empty list }" >
<ul>
	<li>${item.title }</li>
  	<c:forEach items="${list }" var="item" varStatus="stat">
    <li>
      <a href="jstlEx25Detail.jsp?id=${stat.index }">
        ${item.title }
      </a>
    </li>
  </c:forEach>
</ul>
</c:if>
<!-- c:if 만약 test= list가 null이 아니거나 null이어도 길이가 0일때 실행 -->
<!-- c:forEach items를 통해 list를 뽑아냄. 변수는 item ,뽑아낸 목록은 변수 item에 담김, varstatus는 stat이란 이름으로 지정   -->
<!-- ul 순서가 필요없는 목록 li 목록을 만드는 태그 -->
<!-- list를 만들고 이동할 링크를 설정 ?id=123456식으로 내용을 불러올것임. -->
<!--varStatus LoopTagStatus 타입으로 루프상태를 저장할 EL 변수이름.   -->
<!--배열에 담겨있는 title .gettitle메소드실행   -->

</body>
</html>

