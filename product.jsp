<%@include file="header.jsp"%>
<div class="container" style="margin-top:50px;">
	<h1 style="text-align: center;">Product</h1>
	<div class="col-md-8 col-md-offset-2">
		<form action="" class="form-inline" style="text-align: center;">
			<div class="form-group">
				<input type="text" placeholder="Search" class="form-control" name="search">
				<button class="btn btn-default">Search</button>
			</div>	
		</form>
	</div>
	<div class="row">
		<%
		int limit = 5;
		int offset=0;
		String query="select * from msproducts";
		if(request.getParameter("search")!=null){
			query+=" where name like '%"+request.getParameter("search")+"%'";
		}
		if(request.getParameter("page")!=null){
			offset = (Integer.parseInt(request.getParameter("page"))-1)*limit;
		}
		query+=" limit "+limit+" offset "+offset;
		ResultSet rs = st.executeQuery(query);
		while(rs.next()){
		%>
		<div class="col-xs-12 col-sm-6 col-md-3" style="margin-top: 10px;">
			<div class="col-item">
				<div class="post-img-content">
					<img src="public/images/<%=rs.getString("image")%>" class="img-control" />
					<span class="post-title">
						<b>PR00<%=rs.getString("idproduct")%></b>
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
							<h5><a href="review.jsp?id=<%= rs.getString("idproduct")%>">View Review</a></h5>
						</div>
					</div>
					
					<div class="separator clear-left">
						<%if(session.getAttribute("role").equals("member")){%>
						<form action="controller/addtocart.jsp" method="post">
							<input type="hidden" name="idproduct" value="<%=rs.getString("idproduct")%>">
							<p class="btn-details">
								<input type="number" name="quantity" class="form-control" min="1" value="1" max="<%=rs.getString("stock")%>">
							</p>
							<p class="btn-add">
								<i class="fa fa-shopping-cart"></i>
								<button class="btn btn-default" type="submit">Add to cart</button>
							</p>
						</form>
						<%}else if(session.getAttribute("role").equals("admin")){%>
						<div style="margin-top: 10px;text-align: center;">
							<a href="updateproduct.jsp?id=<%=rs.getString("idproduct")%>" class="btn btn-default">Update Product</a>
						</div>

						<%}%>				
					</div>
					
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<%}%>
		<div class="col-md-12 text-center">
		<nav aria-label="Page navigation">
			<ul class="pagination">
				<%if(offset!=0){%>
				<li>
					<a href="product.jsp?page=<%=Integer.parseInt(request.getParameter("page"))-1%><%if(request.getParameter("query")!=null)out.print("&query="+request.getParameter("query"));%>" aria-label="Previous">
						<span aria-hidden="true">&laquo;</span>
					</a>
				</li>
				<%}%>
				<%
					String query2="select count(idproduct)'count' from msproducts";
					if(request.getParameter("search")!=null){
						query2+=" where name like '%"+request.getParameter("search")+"%'";
					}
					ResultSet counter = stmt.executeQuery(query2);
					int total = 0;
					boolean last = false;
					int current =0;
					if(counter.next()){
						total=Integer.parseInt(counter.getString("count"));
					}
					if(total%limit!=0){
						total/=limit;
						total+=1;
					}else{
						total/=limit;
					}
					if(request.getParameter("page")!=null){
						if(Integer.parseInt(request.getParameter("page"))==total){
							last=true;
						}
						current=Integer.parseInt(request.getParameter("page"));
					}else{
						if(total==1){
							last=true;
						}
					}
					for(int i=0;i<total;i++){
				%>
				<li><a href="product.jsp?page=<%=i+1%><%if(request.getParameter("search")!=null)out.print("&search="+request.getParameter("search"));%>"><%=i+1%></a></li>
				<%}%>
				<%if(last==false){%>
				<li>
					<a href="product.jsp?page=<%=current+1%><%if(request.getParameter("search")!=null)out.print("&search="+request.getParameter("search"));%>" aria-label="Next">
						<span aria-hidden="true">&raquo;</span>
					</a>
				</li>
				<%}%>
			</ul>
		</nav>
	</div>
	</div>
</div>
<%@include file="footer.jsp"%>
