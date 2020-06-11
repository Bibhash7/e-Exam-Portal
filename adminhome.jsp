<%@ include file="adminmenu.html" %>
<%
	String avid=(String)session.getAttribute("avid");
	out.println("<center><h2>Welcome"+avid);
%>