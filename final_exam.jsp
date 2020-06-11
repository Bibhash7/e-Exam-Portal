<%@include file="connect.jsp"%>
<body bgcolor="cyan">
<form action=result.jsp method=post>
<%
  int i=1;
  PreparedStatement pst=con.prepareStatement("select * from exam_quostion where subject=?");
  String sub = request.getParameter("sub");
  pst.setString(1,sub);
  out.println("         <h1>Subject: "+sub+"</h1>");
  ResultSet rs=pst.executeQuery();
  while(rs.next())
  {
     int qid=rs.getInt(1);
     String ques=rs.getString(3);
      String opta=rs.getString(4);
     String optb=rs.getString(5);
     String optc=rs.getString(6);
     String optd=rs.getString(7);
%>
<br>
<%=i%>)<%=ques%><br>
  <input type=radio name=r<%=i%> value="<%=opta%>"><%=opta%><br>
  <input type=radio name=r<%=i%> value="<%=optb%>"><%=optb%><br>
  <input type=radio name=r<%=i%> value="<%=optc%>"><%=optc%><br>
  <input type=radio name=r<%=i%> value="<%=optd%>"><%=optd%><br>
   <input type=hidden  name=qid<%=i%> value=<%=qid%>>

<%
   i++;
  }

  con.close();
%>
<input type=hidden name=noq value=<%=i%>>
<input type=submit value=finish>
</form>


















     