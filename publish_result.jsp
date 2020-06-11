<%@ include file="connect.jsp" %>
<body bgcolor="cyan">
<center>
<%
   try{
	PreparedStatement pst = con.prepareStatement("select sid, name, result from exam_student order by result desc");
	ResultSet rs = pst.executeQuery();
%>
	<table border=2>
	<tr>
    		<td>Sid</td>
     		<td>Name</td>
		<td>Percentage</td>
	</tr>
<%
	while(rs.next())
	{
		String sid = rs.getString(1);
		String nm = rs.getString(2);
		double per = rs.getDouble(3);
		//int st = rs.getInt(4);
		if(per > 0)
		{
%>
<tr>
    <td><%=sid%></td>
     <td><%=nm%></td>
     <td><%=per%></td>
</tr>
<%
}
}
	con.close();
}
	catch(Exception e){}
%>
