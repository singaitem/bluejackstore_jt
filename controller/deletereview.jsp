<%@include file="../connect/connect.jsp"%>

<%
	String idreview = request.getParameter("id");
	
	String query = "delete from msreview where idreview = " + idreview;
	st.executeUpdate(query);
	response.sendRedirect("../review.jsp?id="+ request.getParameter("idproduct") +"&msg=success to delete comment. thankyou");
%>