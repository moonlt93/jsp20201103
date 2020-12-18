<%@ tag body-content="scriptless" pageEncoding="utf-8" %>
<%@ attribute name="myAttr" %>
<%@ attribute name="myAttr2"  required="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- attribute name을 통해 입력받을 속성을 명시  -->

<h3>attribute 사용가능태그 </h3>
<h3>받은 myAttr: ${myAttr }</h3>
<h3>받은 myAttr: ${myAttr2 }</h3>

