<%@ include file="adminmenu.html" %>
<%@ include file="connect.jsp" %>
<%
	try
	{
			int qid=Integer.parseInt(request.getParameter("qid"));
			String sub=request.getParameter("sub");
			String ques=request.getParameter("ques");
			String opta=request.getParameter("opta");
			String optb=request.getParameter("optb");
			String optc=request.getParameter("optc");
			String optd=request.getParameter("optd");
			String cans=request.getParameter("cans");
			PreparedStatement pst=con.prepareStatement("insert into exam_quostion values(?,?,?,?,?,?,?,?)");
			pst.setInt(1,qid);
			pst.setString(2,sub);
			pst.setString(3,ques);
			pst.setString(4,opta);
			pst.setString(5,optb);
			pst.setString(6,optc);
			pst.setString(7,optd);
			pst.setString(8,cans);
			int t=pst.executeUpdate();
			if(t>0)
				out.println("<h3>Quostion inserted successfully</h3>");
			con.close();
	}
			catch(Exception e)
			{}
%>