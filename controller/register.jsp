<%@include file="../connect/connect.jsp"%>
<%
	String fullname = request.getParameter("fullname");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String confirm = request.getParameter("confirm");
	String gender = request.getParameter("gender");
	String birthdate = request.getParameter("birthdate");
	String address = request.getParameter("address");
	String photo = request.getParameter("photo");
	String message="";
	if(confirm.equals(password)==false){
		message+="Password and Confirm doesn't match<br/>";
	}
	if(request.getParameter("gender")==null){
		message+="Please insert gender<br/>";
	}
	if(photo.endsWith(".jpg")==false&&photo.endsWith(".png")==false){
		message+="Photo must ends with .jpg or .png<br/>";
	}
	if(message.equals("")){
		String query="insert into msusers values(null,'"+fullname+"','"+phone+"','"+email+"','"+password+"','"+gender+"','"+birthdate+"','"+photo+"','"+photo+"','member')";
		st.executeUpdate(query);
		response.sendRedirect("../login.jsp");
	}else{
		response.sendRedirect("../register.jsp?msg="+message);
	}
%>