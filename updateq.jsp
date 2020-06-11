<body bgcolor="cyan">
<center>
<%@ include file="connect.jsp" %>
<%
	try
	{
		int qid=Integer.parseInt(request.getParameter("qid"));
		String ques = request.getParameter("ques");
		String opta = request.getParameter("opta");
		String optb = request.getParameter("optb");
		String optc = request.getParameter("optc");
		String optd = request.getParameter("optd");
		String cans = request.getParameter("cans");
		PreparedStatement pst=con.prepareStatement("update exam_quostion set quostions = ?, opta = ?, optb = ?, optc = ?, optd = ? ,cans = ? where qid = ?");
		pst.setString(1,ques);
		pst.setString(2,opta);
		pst.setString(3,optb);
		pst.setString(4,optc);
		pst.setString(5,optd);
		pst.setString(6,cans);
		pst.setInt(7,qid);
		int t =pst.executeUpdate();
		//out.println("qid");
		if(t>0)
			out.println("Updated Successfully");
con.close();
}
catch(Exception e){}
%>
		
