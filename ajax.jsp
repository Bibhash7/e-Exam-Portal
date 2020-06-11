<%@include file="connect.jsp"%>
<%
   String sid=request.getParameter("sid");
   PreparedStatement pst=con.prepareStatement("select * from exam_student where sid=?");
    pst.setString(1,sid);
    ResultSet rs=pst.executeQuery();
    if(rs.next())
    {
%>
<font color=red>This id already present in database. Please type something new.</font>
<%
    }
    else
     out.println("<font color=green> Available</font>");
    con.close();
%>