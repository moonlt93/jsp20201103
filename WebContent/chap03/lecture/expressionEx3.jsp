<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
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
<%
java.util.Set<Integer> lotto =new java.util.HashSet<>(); /* 여기로 들어감. for문은 왜 못쓰는지, 람다 물어보기*/

while(lotto.size()<6){
	int rand =(int)(Math.random()*45+1);
	lotto.add(rand);
}

%>
<ul>

<li>
<%
for(int num : lotto ){
%>
<!-- 향상된 for -->
<%= num %><!-- 이게 출력 -->
<%
};
%><!-- 마무리 -->

<hr />
<% 
for(Integer i: lotto){
out.print("<li>"+i+"</li>");
}
%>

<hr />
<% 
	final JspWriter out2 =out;
	lotto.forEach((x)->{
	try{ 
		out2.print("<li>"+x+"</li>");
	}catch(Exception e){
		e.printStackTrace();
	}
});

%>


</li>
</ul>

<body>
</html>