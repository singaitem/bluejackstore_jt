<%@include file="header.jsp"%>
<div class="container" style="margin-top:50px;">
	<h1 style="text-align: center;">My Cart</h1>
	<div class="row">
		<%
		String query="select * from mscarts msc , msproducts msp where iduser = "+session.getAttribute("iduser")+" and msc.idproduct = msp.idproduct";
		ResultSet rs = st.executeQuery(query);
		boolean hascart=false;
		while(rs.next()){
		hascart=true;
		%>
		<div class="col-xs-12 col-sm-6 col-md-3" style="margin-top: 10px;">
			<div class="col-item">
				<div class="post-img-content">
					<img src="public/images/<%=rs.getString("image")%>" class="img-control" />
					<span class="post-title">
						<b>CRT00<%=rs.getString("idcart")%></b>
					</span>
				</div>
				<div class="info">
					<div class="row">
						<div class="price col-md-6">
							<h5><%=rs.getString("name")%></h5>
							<h5><%=rs.getString("quantity")%> pcs</h5>
						</div>
						<div class="rating hidden-sm col-md-6">
							<h5 class="price-text-color">Rp. <%=rs.getString("subtotal")%>,-</h5>
						</div>
					</div>
					<div class="separator clear-left">
						<form action="controller/removecart.jsp" method="post">
							<input type="hidden" name="idcart" value="<%=rs.getString("idcart")%>">
							<p class="btn-add">
								<i class="fa fa-shopping-cart"></i>
								<button class="btn btn-default" type="submit">Remove</button>
							</p>
						</form>			
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<%}%>
		<%if(hascart==true){%>
		<div class="col-md-12">
			<a class="btn btn-success" href="controller/checkout.jsp" style="width: 100%;margin-top: 20px;">Checkout</a>
		</div>
		<%}%>
	</div>
</div>
<%@include file="footer.jsp"%>
