<%@include file="header.jsp"%>
<div class="container" style="margin-top:50px;">
	<h1 style="text-align: center;">Update Product</h1>
	<div class="row">
		<%
		String query="select * from msproducts where idproduct = "+request.getParameter("id");
		ResultSet rs = st.executeQuery(query);
		if(rs.next()){
		%>
		<div class="col-md-4 col-md-offset-4">
			<img src="public/images/<%=rs.getString("image")%>" alt="" style="max-width:100%;border-radius:10px ;border:1px solid #E1E1E1;">
			<h3 style="text-align: center;"><%=rs.getString("name")%></h3>
		</div>
		<div class="col-md-12">
			<div class="main">
				<div class="main-login main-center">
					<form class="" method="post" action="controller/updateproduct.jsp">
						<input type="hidden" name="idproduct" value="<%=request.getParameter("id")%>">
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Product Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Product Name" required="true" value="<%=rs.getString("name")%>" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="price" class="cols-sm-2 control-label">Product Price</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="number" class="form-control" name="price" id="price"  placeholder="Enter Product Price" required="true" value="<%=rs.getString("price")%>" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="weight" class="cols-sm-2 control-label">Product Weight</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="weight" id="weight"  placeholder="Enter Product Weight" required="true" value="<%=rs.getString("weight")%>"/>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="stock" class="cols-sm-2 control-label">Product Stock</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="number" class="form-control" name="stock" id="stock"  placeholder="Enter Product Stock" min="1" required="true" value="<%=rs.getString("stock")%>"/>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="image">Image</label>
							<input type="file" name="image" id="image" required="true">
						</div>

						<%if(request.getParameter("msg")!=null){%>
						<div class="form-group">
							<label for="" class="error-msg"><%=request.getParameter("msg")%></label>
						</div>
						<%}%>

						<div class="form-group ">
							<button type="submit" id="button" class="btn btn-primary btn-lg btn-block login-button">Update</button>
						</div>

					</form>
				</div>
			</div>
		</div>
		<%}%>
	</div>
</div>
<%@include file="footer.jsp"%>
