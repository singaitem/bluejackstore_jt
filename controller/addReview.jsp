<%@include file="../connect/connect.jsp"%>

<%
	String review = request.getParameter("review");
	String rate = request.getParameter("rate");
	String productid = request.getParameter("idproduct");
	String msg = "";

	if(review.equals("")){
		msg += "review must be filled <br/>";
	}

	if(Integer.parseInt(rate) == 0){
		msg += "please select rate <br />";
	}

	if(msg.equals("")){
		String query = "insert into msreview values(null, "+ session.getAttribute("iduser") +", "+ productid +", '"+ review +"', "+ rate +")";
		st.executeUpdate(query);
		response.sendRedirect("../review.jsp?id="+ productid +"&msg=success to add comment. thankyou");
	}else{
		response.sendRedirect("../review.jsp?id="+ productid +"&msg=" + msg);
	}








	

%>