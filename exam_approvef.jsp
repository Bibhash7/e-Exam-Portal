<%@include file="connect.jsp"%>
<%
  PreparedStatement pst=con.prepareStatement("update exam_student set status=1 where sid=?");
  pst.setString(1,request.getParameter("sid"));
  pst.executeUpdate();
  con.close();
  response.sendRedirect("exam_approve.jsp");
%>