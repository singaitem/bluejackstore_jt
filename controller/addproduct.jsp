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
		String query="insert into msproducts values(null,'"+name+"',"+price+",'"+weight+"',"+stock+",'"+image+"',1)";
		st.executeUpdate(query);
		response.sendRedirect("../product.jsp");
	}else{
		response.sendRedirect("../addproduct.jsp?&msg="+message);
	}


%>