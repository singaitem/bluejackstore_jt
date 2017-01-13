<%@include file="header.jsp"%>
<div class="container" style="margin-top:50px;">
	<h1 style="text-align: center;">Transactions</h1>
	<div class="row">
		<%
		String query="select * from trtransactions trt , msusers msu where trt.iduser = msu.iduser";
		if(session.getAttribute("role").equals("member")){
			query+=" and trt.iduser = "+session.getAttribute("iduser");
		}
		System.out.println(session.getAttribute("role"));
		ResultSet rs = st.executeQuery(query);
		while(rs.next()){
		%>
		<div class="col-xs-12 col-sm-12 col-md-12" style="margin-top: 10px;">
			<div class="panel panel-primary">
				<!-- Default panel contents -->
				<div class="panel-heading">
					<h2 class="panel-title">
						TR00<%=rs.getString("idtransaction")%>
					</h2>
				</div>
				<div class="panel-body">
					<h3>
						<%=rs.getString("fullname")%>
					</h3>
				</div>
				<ul class="list-group">
					<li class="list-group-item">
						<h4><%=rs.getString("datetime")%></h4>
						<h4><%=rs.getString("status")%></h4>
						<h4>Total : Rp.<%=rs.getString("total")%>,-</h4>
						<table class="table table-hover">
							<thead>
								<tr>
									<th>Product Name</th>
									<th>Product Price</th>
									<th>Quantity</th>
									<th>Subtotal</th>
								</tr>
							</thead>
							<tbody>
								<%
									String query2="select * from trdetails trd , msproducts msp where trd.idproduct = msp.idproduct and trd.idtransaction = "+rs.getString("idtransaction")+"";
									ResultSet rs2 = stmt.executeQuery(query2);
									while(rs2.next()){
								%>
								<tr>
									<td><%=rs2.getString("name")%></td>
									<td>Rp.<%=rs2.getString("price")%>,-</td>
									<td><%=rs2.getString("quantity")%>pcs</td>
									<td>Rp.<%=rs2.getString("subtotal")%>,-</td>
								</tr>
								<%}%>
							</tbody>
						</table>
					</li>
				</ul>
				<%if(session.getAttribute("role").equals("admin")&&rs.getString("status").equals("Waiting for Approval")){%>
				<div class="panel-footer">
					<form action="controller/approve.jsp">
						<input type="hidden" name="idtransaction" value="<%=rs.getString("idtransaction")%>">
						<button class="btn btn-success" style="width: 100%;" type="submit">Approve</button>
					</form>
				</div>
				<%}%>
			</div>
		</div>
		<%}%>
	</div>
</div>
<%@include file="footer.jsp"%>
