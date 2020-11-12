<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("UTF-8"); %>

<%--
<jsp forward> 액션태그를 실행하면
생성했던 출력결과는 모두 제거 된다. 


--%>
</head>
<body>
이 페이지는 from.jsp가 생성한 것입니다.

<jsp:forward page="to.jsp"/>

</body>
</html>