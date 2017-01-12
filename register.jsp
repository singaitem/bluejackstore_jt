<%@include file="header.jsp"%>
<div class="container" style="margin-top: 60px;">
	<div class="row main">
		<div class="main-login main-center">
			<h1>Register</h1>
			<form class="" method="post" action="controller/register.jsp">
				<div class="form-group">
					<label for="fullname" class="cols-sm-2 control-label">Your Name</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
							<input type="text" class="form-control" name="fullname" id="fullname"  placeholder="Enter your Full Name" required="true" />
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="phone" class="cols-sm-2 control-label">Your Phone</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
							<input type="text" class="form-control" name="phone" id="phone"  placeholder="Enter your Phone" required="true"/>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="email" class="cols-sm-2 control-label">Your Email</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
							<input type="email" class="form-control" name="email" id="email"  placeholder="Enter your Email" required="true"/>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="password" class="cols-sm-2 control-label">Password</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
							<input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password" required="true"/>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="confirm" class="cols-sm-2 control-label">Confirm Password</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
							<input type="password" class="form-control" name="confirm" id="confirm"  placeholder="Enter your Confirm Password" required="true"/>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="confirm" class="cols-sm-2 control-label">Gender</label>
					<div class="cols-sm-10">
						<input type="radio" name="gender" value="male" id="male">
						<label for="male">Male</label>
						<input type="radio" name="gender" value="female" id="female">
						<label for="female">Female</label>
					</div>
				</div>
				<div class="form-group">
					<label for="birthdate" class="cols-sm-2 control-label">Your Birthdate</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
							<input type="date" class="form-control" name="birthdate" id="birthdate"  placeholder="Enter your Birthdate" required="true"/>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="address" class="cols-sm-2 control-label">Your Address</label>
					<div class="cols-sm-10">
						<textarea name="address" id="address" class="form-control" placeholder="Enter your Address" required="true"></textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="photo">Photo</label>
					<input type="file" name="photo" id="photo" required="true">
				</div>
				<div class="form-group" style="margin-bottom: 50px;">
					<span class="pull-right"><a href="login.jsp" style="color: white;">Already have an account? Login here</a></span>
				</div>
				
				<%if(request.getParameter("msg")!=null){%>
				<div class="form-group">
					<label for="" class="error-msg"><%=request.getParameter("msg")%></label>
				</div>
				<%}%>

				<div class="form-group ">
					<button type="submit" id="button" class="btn btn-primary btn-lg btn-block login-button">Register</button>
				</div>

			</form>
		</div>
	</div>
</div>
<%@include file="footer.jsp"%>