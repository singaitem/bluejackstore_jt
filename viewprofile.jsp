<%@include file="header.jsp"%>

<%
String query = "select * from msusers where iduser = " + session.getAttribute("iduser");
ResultSet rs = st.executeQuery(query);
if(rs.next()){
%>


<br><br>
<div class="container">
	<div class="well col-xs-8 col-sm-8 col-md-8 col-lg-8 col-xs-offset-2 col-sm-offset-2 col-md-offset-2 col-lg-offset-2">

		<div class="row user-infos cyruxx">
			<div class="col-xs-12 col-sm-12 col-md-10 col-lg-10 col-xs-offset-0 col-sm-offset-0 col-md-offset-1 col-lg-offset-1">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">User information</h3>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-3 col-lg-3 hidden-xs hidden-sm">
								<img class="img-circle"
								src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=100"
								alt="User Pic">
							</div>
							<div class="col-xs-2 col-sm-2 hidden-md hidden-lg">
								<img class="img-circle"
								src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=50"
								alt="User Pic">
							</div>
							
							<div class=" col-md-9 col-lg-9 hidden-xs hidden-sm">
								<strong><%= rs.getString("fullname") %></strong><br>
								<table class="table table-user-information">
									<tbody>
										<tr>
											<td>Phone</td>
											<td><%= rs.getString("phone") %></td>
										</tr>
										<tr>
											<td>Email</td>
											<td><%= rs.getString("email") %></td>
										</tr>
										<tr>
											<td>Gender</td>
											<td><%= rs.getString("gender") %></td>
										</tr>
										<tr>
											<td>Date of Birth</td>
											<td><%= rs.getString("birthdate") %></td>
										</tr>
										<tr>
											<td>Address</td>
											<td><%= rs.getString("address") %></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="panel-footer">
						<button class="btn btn-sm btn-primary" type="button"
						data-toggle="tooltip"
						data-original-title="Send message to user">
						<i class="glyphicon glyphicon-envelope"></i>
					</button>

					<div class="pull-right">
						<a href="#">
							<button class="btn btn-sm btn-warning" type="button"
							data-toggle="tooltip"
							data-original-title="Edit this user">
							<i class="glyphicon glyphicon-edit"></i>
							Update
						</button>
					</a>
					
				</div>
			</div>
		</div>
	</div>
</div>



</div>
</div>

<%}%>


<%@include file="footer.jsp"%>
