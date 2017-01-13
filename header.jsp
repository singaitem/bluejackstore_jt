<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bluejack Store</title>
	<script src="public/js/jquery-3.1.1.min.js"></script>
	<script src="public/js/jquery-ui.js"></script>
	<script src="public/js/jquery.nicescroll.js"></script>
	<script src="public/js/jquery.stellar.js"></script>
	<script src="public/bootstrap/js/bootstrap.min.js"></script>
	<script src="public/js/script.js"></script>
	<link rel="stylesheet" href="public/css/jquery-ui.css">
	<link rel="stylesheet" href="public/css/style.css">
	<link rel="stylesheet" href="public/bootstrap/css/bootstrap.css">
	<%@include file="connect/connect.jsp"%>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" style="margin-bottom: 20px">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<ul class="nav navbar-nav">
					<li><a class="navbar-brand" href="index.jsp">Bluejack Store</a></li>
				</ul>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<%
						if(session.getAttribute("role")!=null){
					%>
					<li><a href="product.jsp">Product</a></li>
					<li><a href="transaction.jsp">Transaction</a></li>
					<li><a href="member.jsp">Member</a></li>
					<%}%>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<%	
						if(session.getAttribute("role")!=null){
						if(session.getAttribute("role").equals("member")){
					%>
					<li><a href="cart.jsp">Cart</a></li>
					<%}}%>
					<%
						if(session.getAttribute("role")!=null){
					%>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><%=session.getAttribute("fullname")%><span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="viewprofile.jsp">Update Profile</a></li>
						</ul>
					</li>
					<li><a href="controller/logout.jsp">Logout</a></li>
					<%}else{%>
					<li><a href="login.jsp">Login</a></li>
					<li><a href="register.jsp">Register</a></li>
					<%}%>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
