<%@include file="header.jsp"%>

<%
String query = "select * from msusers where iduser = " + session.getAttribute("iduser");
ResultSet rs = st.executeQuery(query);
if(rs.next()){
%>


<br><br>
<div class="container">
	<div class="well col-xs-8 col-sm-8 col-md-8 col-lg-8 col-xs-offset-2 col-sm-offset-2 col-md-offset-2 col-lg-offset-2">
		<form action="controller/updateprofile.jsp" method="POST">
			<div class="row user-infos cyruxx">
				<div class="col-xs-12 col-sm-12 col-md-10 col-lg-10 col-xs-offset-0 col-sm-offset-0 col-md-offset-1 col-lg-offset-1">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title">User information</h3>
						</div>

						<div class="panel-body">
							<div class="row">
								<div class="col-md-3 col-lg-3 hidden-xs hidden-sm">
									<img class="img-circle"	src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=100" alt="User Pic">
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
												<td>Old Password</td>
												<td>
													<input type="password" name="oldpass"/>
												</td>
											</tr>

											<tr>
												<td>New Password</td>
												<td>
													<input type="password" name="newpass"/>
												</td>
											</tr>

											<tr>
												<td>Confirm New Password</td>
												<td>
													<input type="password" name="cnewpass"/>
												</td>
											</tr>

											<tr>
												<td>Phone</td>
												<td>
													<input type="text" name="phone" value="<%= rs.getString("phone")%>"/>
												</td>
											</tr>
											<tr>
												<td>Address</td>
												<td>
													<textarea rows="5" name="address"><%= rs.getString("address")%></textarea>
												</td>
											</tr>
											<tr>
												<td>Photo</td>
												<td>
													<input type="file" name="photo"/>
												</td>
											</tr>										
										</tbody>
									</table>
									
								</div>
							</div>
						</div>
						<div class="panel-footer">						
							<button class="btn btn-sm btn-primary" id="btn-back">Back</button>
							<div class="pull-right">							
								<button class="btn btn-sm btn-warning" type="submit">
									<i class="glyphicon glyphicon-edit"></i>submit
								</button>				
							</div>
							<%if(request.getParameter("msg")!=null){%>
							<div class="form-group">
								<label for="" class="error-msg"><%=request.getParameter("msg")%></label>
							</div>
							<%}%>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#btn-back').click(function(){
			parent.history.back();
		});
	});
</script>
<%}%>


<%@include file="footer.jsp"%>
