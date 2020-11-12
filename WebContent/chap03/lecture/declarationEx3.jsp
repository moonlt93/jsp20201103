<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>

<%!
Set<Integer> genLotto() {
 Set<Integer> lotto = new HashSet<>();// new 연산자 인스턴스 (객체)를 생성할때 사용 , 참조값 가진다. 
 
 while (lotto.size() < 6) {
  lotto.add((int) (Math.random() * 45 + 1)); 
 }
 
 return lotto;
}
%>

<%!
String colorClass(int num) {
 return "lotto-color" + (num / 10) * 10; // 정수 1~45까지의 수가 나오는데 나눠주면 실수가 나옴.
 										// int는 실수를 받을 수 없으므로 *10을 해서 정수로 만들어줌.
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
<title>문진수</title>
<style>
.lotto-ball{
border:5px solid black;
border-radius:50%;
width: 100px;
height:100px;
text-align: center;
line-height:100px;
}
.lotto-color0{
	color:white;
	background-color:red
}
.lotto-color10{
	color: wine;
	background-color:green;
}
.lotto-color20{
	color: yellow;
	background-color:
	orange;
}
.lotto-color30{
	color:white;
	background-color:
	navy;
}
.lotto-color40{
	color:white;
	background-color:
	pink;

}
</style>
</head>
<body>
<%
Set<Integer> lotto = genLotto();
%>
<%
for (int num : lotto) {
%>
  <div class="lotto-ball <%= colorClass(num) %>"><%= num %></div>
<%	
}
%>

<body>
</html>