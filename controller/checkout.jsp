<%@include file="../connect/connect.jsp"%>
<%
	String query="select * from mscarts where iduser = "+session.getAttribute("iduser");
	ResultSet rs = st.executeQuery(query);
	int total=0;
	while(rs.next()){
		total+=Integer.parseInt(rs.getString("subtotal"));
	}
	query="insert into trtransactions values(null,"+session.getAttribute("iduser")+",'Waiting for Approval',default,"+total+")";
	st.executeUpdate(query);
	query="select * from trtransactions where iduser = "+session.getAttribute("iduser")+" and status = 'Waiting for Approval' order by datetime desc";
	rs = st.executeQuery(query);
	String idtransaction="";
	if(rs.next()){
		idtransaction = rs.getString("idtransaction");
	}
	query="select * from mscarts where iduser = "+session.getAttribute("iduser");
	rs = st.executeQuery(query);
	String query2="";
	while(rs.next()){
		query2="insert into trdetails values(null,"+idtransaction+","+rs.getString("idproduct")+","+rs.getString("quantity")+","+rs.getString("subtotal")+")";
		stmt.executeUpdate(query2);
	}
	query="delete from mscarts where iduser = "+session.getAttribute("iduser");
	st.executeUpdate(query);
	response.sendRedirect("../transaction.jsp");
%>