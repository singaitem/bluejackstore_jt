	<div class="col-md-12 footer">
		2017 &copy PT Bluejack Store
		<span class="pull-right">
		<%if(application.getAttribute("ol")==null){%>
			User Online : 0
		<%}else{%>
			User Online : <%=application.getAttribute("ol")%>
		<%}%>
		</span>
	</div>
</body>
</html>