<body bgcolor="cyan">
<center>
<%@include file="connect.jsp" %>
<%@include file="logout-user.html"%>
<%
  try{
    int st=0;
   PreparedStatement pst=con.prepareStatement("insert into exam_student (sid, name, password, status) values(?,?,?,?)");
   pst.setString(1,request.getParameter("sid"));
   pst.setString(2,request.getParameter("nm"));
	pst.setString(3,request.getParameter("pass"));
   pst.setInt(4,st);
   pst.executeUpdate();
   out.println("<h3>signup successfully</h3>");
   con.close();
   }
   catch(Exception e){}
%>

   