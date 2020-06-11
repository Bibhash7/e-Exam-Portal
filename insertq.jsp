<%@ include file="adminmenu.html" %>
<%@ include file="connect.jsp" %>
<form action=insertqs.jsp method=post>
<% int qid=0;
	try
	{
		PreparedStatement pst=con.prepareStatement("select max(qid) from exam_quostion");
		ResultSet rs=pst.executeQuery();
		if(rs.next())
		{
			qid=rs.getInt(1);
			qid++;
			con.close();
		}
	}
		catch(Exception e)
		{}
%>
		<center>
		<table>
		<table border=1>
			<tr>
				<td>Quostion Id</td>
				<td><%=qid%><input type=hidden name=qid value=<%=qid %>></td>
			</tr>
			<tr>
				<td>Subject</td>
				<td>
					<select name=sub>
					<option>Select</option>
					<option value=c>C</option>
					<option value=c++>C++</option>
					<option value=java>JAVA</option>
					<option value=math>MATH</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>quosion</td>
				<td><input type=text name=ques></td>
			</tr>
			</tr>
				<td>Option A</td>
				<td><input type=text name=opta></td>
			</tr>	
			<tr>
				<td>option B</td>
				<td><input type=text name=optb></td>
			</tr>
			<tr>
				<td>option C</td>
				<td><input type=text name=optc></td>
			</tr>
			<tr>
				<td>option D</td>
				<td><input type=text name=optd></td>
			</tr>
			<tr>
				<td>Correct Answar</td>
				<td><input type=text name=cans></td>
			</tr>
			<tr>
				<td><input type=reset value=clear></td>
				<td><input type=submit value=insert></td>
			</tr>
</table></form></body></html>