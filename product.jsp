<%@include file="header.jsp"%>
<div class="container" style="margin-top:50px;">
	<h1 style="text-align: center;">Product</h1>
	<div class="row">
		<%
			String query="select * from msproducts";
			ResultSet rs = st.executeQuery(query);
			while(rs.next()){
		%>
		<div class="col-xs-12 col-sm-6 col-md-3" style="margin-top: 10px;">
			<div class="col-item">
				<div class="post-img-content">
					<img src="public/images/<%=rs.getString("image")%>" class="img-control" />
					<span class="post-title">
                        <b>PR00<%=rs.getString("productid")%></b>
                    </span>
				</div>
				<div class="info">
					<div class="row">
						<div class="price col-md-6">
							<h5><%=rs.getString("name")%></h5>
							<h5><%=rs.getString("stock")%> pcs</h5>
							<h5><%=rs.getString("weight")%></h5>
						</div>
						<div class="rating hidden-sm col-md-6">
							<h5 class="price-text-color">Rp. <%=rs.getString("price")%>,-</h5>
							<h5><a href="review.jsp">View Review</a></h5>
						</div>
					</div>
					<div class="separator clear-left">
						<p class="btn-details">
							<input type="number" class="form-control" min="1" value="1" max="<%=rs.getString("stock")%>">
						</p>
						<p class="btn-add">
							<i class="fa fa-shopping-cart"></i>
							<button href="#" class="btn btn-default">Add to cart</button>
						</p>				
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<%}%>
	</div>
</div>
<%@include file="footer.jsp"%>
