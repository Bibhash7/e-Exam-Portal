<%@ include file="adminmenu.html" %>
<%@ include file="connect.jsp" %>
<% 
	try
	{
		int qid=Integer.parseInt(request.getParameter("qid"));
		PreparedStatement pst=con.prepareStatement("delete from exam_quostion where qid=?");
		pst.setInt(1,qid);
		int t=pst.executeUpdate();
		if(t>0)
		{
			out.println("<h3>Deleted Successfully");
		}
		con.close();
	}
	catch(Exception e)
	{}
%>