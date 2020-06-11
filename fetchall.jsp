<%@ include file="adminmenu.html" %>
<%@ include file="connect.jsp" %>
<% 
	try
	{
		PreparedStatement pst=con.prepareStatement("select *from exam_quostion");
		ResultSet rs=pst.executeQuery();
		%>
		<table border=2>
		<tr>
			<th> Quostion Id</th>
			<th> Subject</th>
			<th>Quostion</th>
			<th>Option A </th>
			<th>Option B</th>
			<th>Option C</th>
			<th>Option D</th>
			<th>Correct Answar</th>
		<tr>
	<%
		while(rs.next())
		{
	%>
	<tr>
		<td><%=rs.getInt(1)%></td>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getString(4)%></td>
		<td><%=rs.getString(5)%></td>
		<td><%=rs.getString(6)%></td>
		<td><%=rs.getString(7)%></td>
		<td><%=rs.getString(8)%></td>
	</tr>
	<%
		}
	
		con.close();
	}
		catch(Exception e){}
	%>
	</table></form></body></html>