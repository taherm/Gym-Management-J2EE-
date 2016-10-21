<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("mlogin.jsp");
%>