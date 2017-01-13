<%@include file="header.jsp"%>
<div class="container" style="margin-top: 60px;">
	<div class="row main">
		<div class="main-login main-center">
			<h1>Add Product</h1>
			<form class="" method="post" action="controller/addproduct.jsp">
				<input type="hidden" name="idproduct" value="<%=request.getParameter("id")%>">
				<div class="form-group">
					<label for="name" class="cols-sm-2 control-label">Product Name</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
							<input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Product Name" required="true"/>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="price" class="cols-sm-2 control-label">Product Price</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
							<input type="number" class="form-control" name="price" id="price"  placeholder="Enter Product Price" required="true"/>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="weight" class="cols-sm-2 control-label">Product Weight</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
							<input type="text" class="form-control" name="weight" id="weight"  placeholder="Enter Product Weight" required="true"/>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="stock" class="cols-sm-2 control-label">Product Stock</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
							<input type="number" class="form-control" name="stock" id="stock"  placeholder="Enter Product Stock" min="1" required="true" />
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
					<button type="submit" id="button" class="btn btn-primary btn-lg btn-block login-button">Add</button>
				</div>

			</form>
		</div>
	</div>
</div>
<%@include file="footer.jsp"%>