<%@include file="../connect/connect.jsp"%>
<%
	String name = request.getParameter("name");
	String price = request.getParameter("price");
	String weight = request.getParameter("weight");
	String stock = request.getParameter("stock");
	String image = request.getParameter("image");
	String message="";

	if(image.endsWith(".jpg")==false&&image.endsWith(".png")==false){
		message+="Photo must ends with .jpg or .png<br/>";
	}
	if(message.equals("")){
		String query="update msproducts set name='"+name+"',price="+price+",weight='"+weight+"',stock="+stock+",image='"+image+"' where idproduct = "+request.getParameter("idproduct");
		st.executeUpdate(query);
		response.sendRedirect("../product.jsp");
	}else{
		response.sendRedirect("../updateproduct.jsp?id="+request.getParameter("idproduct")+"&msg="+message);
	}

%>