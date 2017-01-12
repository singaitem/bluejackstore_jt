<%@include file="header.jsp"%>
<div class="container" style="margin-top: 60px;">
	<div class="row main">
		<div class="main-login main-center">
			<h1>Login</h1>
			<form class="" method="post" action="controller/login.jsp">
				<% 
					String rememberemail = "";
					String rememberpassword = "";
					Cookie[] cookies = request.getCookies();
					if(cookies!=null){
						for(int i=0;i<cookies.length;i++){    
					    	if(cookies[i].getName().equals("rememberemail")){
					        	rememberemail = cookies[i].getValue();
					      	}else if(cookies[i].getName().equals("rememberpassword")){
					        	rememberpassword = cookies[i].getValue();
					      	}
					    }
					}
				%>
				<div class="form-group">
					<label for="email" class="cols-sm-2 control-label">Your Email</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
							<input type="email" class="form-control" name="email" id="email" value="<%=rememberemail%>" placeholder="Enter your Email"/>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="password" class="cols-sm-2 control-label">Password</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
							<input type="password" class="form-control" name="password" id="password" value="<%=rememberpassword%>"  placeholder="Enter your Password"/>
						</div>
					</div>
				</div>
				<div class="form-group">
					<input type="checkbox" name="remember" id="remember">
					<label for="remember">Remember Me</label>
				</div>
				<div class="form-group" style="margin-bottom: 50px;">
					<span class="pull-right"><a href="register.jsp" style="color: white;">Don't have an account? Register here</a></span>
				</div>
				<%if(request.getParameter("msg")!=null){%>
				<div class="form-group">
					<label for="" class="error-msg"><%=request.getParameter("msg")%></label>
				</div>
				<%}%>
				<div class="form-group ">
					<button type="submit" id="button" class="btn btn-primary btn-lg btn-block login-button">Login</button>
				</div>

			</form>
		</div>
	</div>
</div>
<%@include file="footer.jsp"%>