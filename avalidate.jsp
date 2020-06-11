<%@include file= "connect.jsp" %>
<% 
	String avid=request.getParameter("avid");
	String apass=request.getParameter("apass");
	PreparedStatement pst=con.prepareStatement("select *from exam_admin where adminid=? and password=?");
	pst.setString(1,avid);
	pst.setString(2,apass);
	ResultSet rs=pst.executeQuery();
	if(rs.next())
	{
		session.setAttribute("avid",avid);
		response.sendRedirect("adminhome.jsp");
	}
	else
	{
	%>

		<%@include file="admin.html" %>
		<center><h3><font color=red>Invalid UserId or Password</font></h3></center>
<%
	}
	con.close();
%>
	