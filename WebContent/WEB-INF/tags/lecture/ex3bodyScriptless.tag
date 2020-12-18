<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--forEach문을 통해 몇번 반복할지 설정, 
<jsp:doBody> 액션태그를 이용 body를 출력하거나 el 변수로 저장. -->

<c:forEach begin="1" end="5">
  <jsp:doBody />
</c:forEach>

