<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("UTF-8"); %>
<title>문진수</title>

</head>
<body>

<form action="view.jsp"> <!--GETCONTEXTPATH() MYJSP3  -->

보고 싶은 페이지 선택:
	<select name="code" ><!-- 페이지 선택 value -->
	<option value="A">A 페이지</option>
	<option value="B">B 페이지</option>
	<option value="C">C 페이지</option>
	</select>
	
<input type="submit" value="이동" /> <!-- 이동 누르면 action view.jsp타고 감. -->
</form>
</body>
</html>