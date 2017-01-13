<%@include file="../connect/connect.jsp"%>
<%
	String email=request.getParameter("email");
	String password=request.getParameter("password");

	String query="select * from msusers where email = '"+email+"' and password = '"+password+"'";
	ResultSet validlogin = st.executeQuery(query);
	if(validlogin.next()){
		session.setAttribute("role",validlogin.getString("role"));
		session.setAttribute("iduser",validlogin.getString("iduser"));
		session.setAttribute("fullname",validlogin.getString("fullname"));
		if(application.getAttribute("ol")==null){
			application.setAttribute("ol",1);
		}else{
			Integer ol = (Integer)application.getAttribute("ol");
			ol++;
			application.setAttribute("ol",ol);
		}
		if(request.getParameter("remember")!=null){
			Cookie rememberemail = new Cookie("rememberemail",request.getParameter("email"));
			Cookie rememberpassword = new Cookie("rememberpassword",request.getParameter("password"));

			rememberemail.setMaxAge(60*60*24);
			rememberpassword.setMaxAge(60*60*24);

			rememberemail.setPath("/");
			rememberpassword.setPath("/");

			response.addCookie(rememberemail);
			response.addCookie(rememberpassword);
		}
		response.sendRedirect("../index.jsp");
	}else{
		response.sendRedirect("../login.jsp?msg=Invalid+Email+or+Password");
	}


%>