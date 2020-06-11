<%@ include file="adminmenu.html" %>
<%@ include file="connect.jsp" %>
<%
	try
	{
		int qid=Integer.parseInt(request.getParameter("qid"));
		PreparedStatement pst=con.prepareStatement("select *from exam_quostion where qid=?");
		pst.setInt(1,qid);
		ResultSet rs=pst.executeQuery();
%>
		<form action=updateq.jsp method=post>
<%
	if(rs.next())
	{
		out.println("<input type=hidden name=qid value="+rs.getInt(1)+">");
%>
Quostion:<input type=text name=ques value=<%= rs.getString(3)%>><br>
Option A:<input type=text name=opta value=<%= rs.getString(4)%>><br>
Option B:<input type=text name=optb value=<%= rs.getString(5)%>><br>
Option C:<input type=text name=optc value=<%= rs.getString(6)%>><br>
Option D:<input type=text name=optd value=<%= rs.getString(7)%>><br>
Cans:<input type=text name=cans value=<%= rs.getString(8)%>><br>
<input type=submit value=update>
<%
}
con.close();
}
catch(Exception e){}
%>
		
