<%@include file="../connect/connect.jsp"%>


<%
	String oldpass = request.getParameter("oldpass");
	String dboldpass = "";
	String newpass = request.getParameter("newpass");
	String cnewpass = request.getParameter("cnewpass");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String photo = request.getParameter("photo");
	String msg = "";

	String query = "select password from msusers where password = '"+ oldpass + "'";
	ResultSet rs = st.executeQuery(query);
	if(rs.next()){
		dboldpass = rs.getString("password");
	}

	if(!dboldpass.equals(oldpass)){
		msg += "Old password must be same with your old password <br />";
	}

	if(!newpass.equals(cnewpass)){
		msg += "New password must be same with confirm new password <br />";
	}

	if(address.equals("")){
		msg += "Address must be filled <br/>";
	}
	try{
		Long.parseLong(phone);
	}catch(Exception e){
		msg += "Phone must be numeric <br/>";
	}
	if(photo.endsWith(".jpg")==false&&photo.endsWith(".png")==false){
		msg+="Photo must ends with .jpg or .png<br/>";
	}


	if(msg.equals("")){
		query = "update msusers set password = '" + newpass + "', phone='" + phone + "', address='" + address + "' where iduser=" + session.getAttribute("iduser");
		st.executeUpdate(query);
		response.sendRedirect("../viewprofile.jsp?msg=success to update profile");
	}else{
		response.sendRedirect("../updateprofile.jsp?msg=" + msg);
	}


%>