<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap05.Post" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
List<Post> list = (List<Post>) application.getAttribute("list"); // list객체를 생성 application request 객체느낌
if (list == null) {
  list = new ArrayList<Post>();  // list 
  application.setAttribute("list", list); //기본 객체 application속성사용. list값을 저장.
}
String title = request.getParameter("title");
String body = request.getParameter("body");
if (title != null && !title.isEmpty() // 만약  title이 null이 아니거나 title이 비어있지 않거나 body가 null이 아니거나 비어있지 않다면
                                         // isEmpty 인스턴스는 생성되었으나 , List안에 아무것도 없는 상태를 말함.
    && body != null && !body.isEmpty()) {
  
  Post p = new Post(); //새로운 p 객체를 만듬. 
  p.setTitle(title);  // title , body 값을 p에 추가 .
  p.setBody(body); //p 객체에 body를 저장. 
  
  list.add(p);  // 리스트에 p값을 더해라 
}
%>

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
<form action="" method="post">
  제목 : <input type="text" name="title" /> <br />
  <textarea name="body" cols="30" rows="10"></textarea>
  
  <br />
  <input type="submit" value="등록" />
</form>
<hr />
<ul>
<%
for (int i =0; i< list.size(); i++) {
%><!--detail.jsp에서 ? id파라미터값을 i로 넘겨주겠다.  -->
  <li><a href="detail.jsp?id=<%=i %>"><%= list.get(i).getTitle() %></a></li>
<% 
}
%>
</ul>	
</body>
</html>

