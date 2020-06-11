<%@include file="connect.jsp" %>
<body bgcolor="cyan">
<center>
<form action="exam_approvef.jsp" mehthod=post>
<%
  try{
   PreparedStatement pst=con.prepareStatement("select * from exam_student where status=0");
  ResultSet rs=pst.executeQuery();
%>
<table border=2>
<tr>
    <td>Sid</td>
     <td>Name</td>
    <td></td>
</tr>
<%
    while(rs.next())
    {
      String sid=rs.getString(1);
      String nm=rs.getString(2);
%>
<form action="exam_approvef.jsp" method=post>
<tr>
    <td><%=sid%></td>
     <td><%=nm%></td>
    <td><input type=hidden name=sid value=<%=sid%>><input type=submit value="Approve"></td>
</tr>
</form>
<%
    }
    con.close();
    }
    catch(Exception e){}
%>
</table>
</center>
</body>