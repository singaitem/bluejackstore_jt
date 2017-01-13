<%@include file="../connect/connect.jsp"%>
<%
	String query="select * from msproducts where idproduct = "+request.getParameter("idproduct");
	ResultSet rs = st.executeQuery(query);
	int stock=0;
	int price=0;
	int quantity=0;
	int subtotal=0;
	if(rs.next()){
		price= Integer.parseInt(rs.getString("price"));
		stock = Integer.parseInt(rs.getString("stock"));
	}
	query="select * from mscarts where idproduct = "+request.getParameter("idproduct")+" and iduser = "+session.getAttribute("iduser");
	rs = st.executeQuery(query);
	String query2="";
	if(rs.next()){
		quantity=Integer.parseInt(rs.getString("quantity"));
		subtotal=Integer.parseInt(rs.getString("subtotal"));
		quantity+=Integer.parseInt(request.getParameter("quantity"));
		subtotal=quantity*price;
		query2="update mscarts set quantity = "+quantity+" ,subtotal="+subtotal+" where idcart = "+rs.getString("idcart");
		stmt.executeUpdate(query2);
	}else{
		quantity=Integer.parseInt(request.getParameter("quantity"));
		subtotal=quantity*price;
		query2="insert into mscarts values(null,"+request.getParameter("idproduct")+","+session.getAttribute("iduser")+","+quantity+","+subtotal+")";
		stmt.executeUpdate(query2);
	}
	stock-=quantity;
	query="update msproducts set stock = "+stock+" where idproduct = "+request.getParameter("idproduct");
	st.executeUpdate(query);
	response.sendRedirect("../cart.jsp");


%>