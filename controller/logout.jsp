<%
	session.invalidate();
	Integer ol = (Integer)application.getAttribute("ol");
	ol--;
	application.setAttribute("ol",ol);
	response.sendRedirect("../index.jsp");
%>