<%@include file="../connect/connect.jsp"%>

<%
	String idreview = request.getParameter("idreview");
	String idproduct = request.getParameter("idproduct");
	String rate = request.getParameter("rate");
	String review = request.getParameter("review");
	
	String query = "update msreview set rate = " + rate + ", review='" + review + "' where idreview=" + idreview;
	
	st.executeUpdate(query);
	response.sendRedirect("../review.jsp?id="+ idproduct +"&msg=success to udpate comment. thankyou");
%>