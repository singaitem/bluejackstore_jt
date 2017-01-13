<%@include file="../connect/connect.jsp"%>
<%
	String query="select * from mscarts where idcart = "+request.getParameter("idcart");
	ResultSet rs = st.executeQuery(query);
	int quantity=0;
	int stock=0;
	String idproduct="";
	if(rs.next()){
		quantity=Integer.parseInt(rs.getString("quantity"));
		idproduct=rs.getString("idproduct");
	}
	query="select * from msproducts where idproduct = "+idproduct;
	rs = st.executeQuery(query);
	if(rs.next()){
		stock=Integer.parseInt(rs.getString("stock"));
	}
	stock-=quantity;
	query="delete from mscarts where idcart = "+request.getParameter("idcart");
	st.executeUpdate(query);
	query="update msproducts set stock = "+stock+" where idproduct = "+idproduct;
	st.executeUpdate(query);
	response.sendRedirect("../cart.jsp");

%>