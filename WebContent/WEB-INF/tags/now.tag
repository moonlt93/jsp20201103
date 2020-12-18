<%@ tag body-content="empty" pageEncoding="utf-8" %>
<%@ tag import ="java.util.Calendar" %>

<%

Calendar cal =Calendar.getInstance();
%>
<%=cal.get(Calendar.YEAR) %>년
<%=cal.get(Calendar.MONTH)+1 %>달
<%=cal.get(Calendar.DATE) %>일

<!-- tag body-content 가 비어있어야함. 안그러면 오류남 -->
 