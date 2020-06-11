<%@include file="connect.jsp" %>
<%@include file="logout-user.html"%>
<body bgcolor="cyan">
<center>
<h1>Hello <%=session.getAttribute("name")%></h1>
<%
  int i=0, st = 0;
  int noq=Integer.parseInt(request.getParameter("noq"));
  int m=0;
  for(i=1;i<noq;i++)
  {
     int qid=Integer.parseInt(request.getParameter("qid"+i));
     String uans=request.getParameter("r"+i);
     PreparedStatement pst=con.prepareStatement("select cans from exam_quostion where qid=?");
     pst.setInt(1,qid);
     ResultSet rs=pst.executeQuery();
      String cans="";
     if(rs.next())
     {
       		cans=rs.getString(1);
     }
     
	if(cans.equals(uans))
	    m++;
  }
  double per = m*100/(noq-1);
  String s = (String)session.getAttribute("sid");
  PreparedStatement pst1=con.prepareStatement("update exam_student set result = ? , status = ? where sid= ?");
  pst1.setDouble(1,per);
  pst1.setInt(2, st);
  pst1.setString(3,s);
  pst1.executeUpdate();
  out.println("<h1>Your score:"+m);
  out.println("<h1> Out Of:"+(noq-1));
  con.close();
%>
</center>
</body>





