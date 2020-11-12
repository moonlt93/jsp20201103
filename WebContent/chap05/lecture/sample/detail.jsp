<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap05.Post" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String id = request.getParameter("id");
int i = Integer.parseInt(id);
List<Post> list = (List<Post>) application.getAttribute("list");
Post post = list.get(i);
%>
<%-- <% 
List<Post> list = (List<Post>)application.getAttribute("list"); /*list이름을 가진 Post형식의 객체를 생성 application 기본객체가 가진 속성인 getAttribute를 통해 list 형성    */
String damit = request.getParameter("id"); // 문자열 형식 damit 객체에 id 파라미터 값을 넣는다.
if(damit != null && list != null)  // 만약 damit이 null이 아니거나 && list가 null이 아닐때
	{ 
	int num =Integer.valueOf(damit); // String 형식의 damit을  int num으로 변환.
	Post post = new Post(); //새로운 Post객체 형성
	 post.setTitle(list.get(num).getTitle());  // list안의 값들 중에서 title로 쓰고 싶은 값을 반환하여 title로 저장.
	 post.setBody(list.get(num).getBody()); /* body라는 필드값에 파라미터값을 저장한다. */
			
			
	
	
}


%> --%>

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
제목 : <input type="text" value="<%= post.getTitle() %>" readonly />
<br />
<textarea cols="30" rows="10" readonly><%= post.getBody() %></textarea>
<br />
<a href="post.jsp" >게시글 작성</a>
</body>
</html>