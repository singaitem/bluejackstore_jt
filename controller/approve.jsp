<%@include file="../connect/connect.jsp"%>
<%
	String query="update trtransactions set status = 'Completed' where idtransaction = "+request.getParameter("idtransaction");
	st.executeUpdate(query);
	response.sendRedirect("../transaction.jsp");

%>