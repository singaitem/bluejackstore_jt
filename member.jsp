<%@include file="header.jsp"%>
<div class="container" style="margin-top:50px;">
	<h1 style="text-align: center;">Member</h1>
	<div class="row">
		<%
			String query="select * from msusers";
			ResultSet rs = st.executeQuery(query);
			while(rs.next()){
		%>
		<div class="col-xs-12 col-sm-6 col-md-3" style="margin-top: 10px;">
			<div class="col-item">
				<div class="post-img-content">
					<img src="public/images/<%=rs.getString("photo")%>" class="img-control" />
					<span class="post-title">
                        <b><%=rs.getString("iduser")%></b>
                    </span>
				</div>
				<div class="info">
					<div class="row">
						<div class="price col-md-6">
							<h5><%=rs.getString("fullname")%></h5>
							<h5><%=rs.getString("phone")%></h5>
							<h5><%=rs.getString("email")%></h5>
							<h5><%=rs.getString("address")%></h5>
						</div>						
					</div>					
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<%}%>
	</div>
</div>
<%@include file="footer.jsp"%>
