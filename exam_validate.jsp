<%@include file="connect.jsp"%>
<body bgcolor="cyan">
<center>
<%
  PreparedStatement pst=con.prepareStatement("select * from exam_student where sid=? and password=?");
   pst.setString(1,request.getParameter("sid"));
   pst.setString(2,request.getParameter("pass"));
   ResultSet rs=pst.executeQuery();
   if(rs.next())
   {
      String sid=rs.getString(1);
      String name=rs.getString(2);
      int status=rs.getInt(4);
      if(status==0)
       out.println("<h3>Plese wait for approve</h3>");
      else
        {
        session.setAttribute("sid",sid);
        session.setAttribute("name",name);
        response.sendRedirect("exam_home.jsp");
 	}
     }
   else
    out.println("<h3><font color=red>Invalid sid or password</font></h3>");
   con.close();
%>