<%@include file="header.jsp"%>


<%
    String query = "select * from msreview a join msproducts b on a.idproduct = b.idproduct where a.idproduct = " + request.getParameter("id");
    ResultSet rs = st.executeQuery(query);
    if(rs.next()){
%>

<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
<div class="container" style="margin-top: 50px">
    <div class="row">
        <div class="col-md-12">
            <div class="detailBox">
                <div class="titleBox">
                  <label>Review Box</label>
                  <button type="button" class="close" aria-hidden="true">&times;</button>
                  </div>
                  <div class="commentBox">

                      <p class="taskDescription">
                          <img src="public/images/<%= rs.getString("image") %>" width="250" height="150">
                          <label><%= rs.getString("name")%></label>
                      </p>
                  </div>
                  <div class="actionBox">
                    <ul class="commentList">
                        <%
                            query = "select * from msreview a join msusers b on a.iduser = b.iduser where idproduct = " + rs.getString("idproduct");
                            ResultSet rs2 = stmt.executeQuery(query);
                            while(rs2.next()){

                        %>
                        <li>
                            <div class="commenterImage">
                              <img src="public/images/45.jpg" width="0"/>
                            </div>
                            <div class="commentText">
                                <p class=""><%= rs2.getString("review")%></p> <span class="date sub-text">rate : <%= rs2.getString("rate") %></span>
                                <% if(rs2.getString("iduser").equals(session.getAttribute("iduser"))){%>
                                    <div class="pull-right">
                                        <a href="editreview.jsp?id=<%=rs.getString("idproduct")%>&idreview=<%= rs2.getString("idreview")%>">
                                            <button class="btn btn-primary">Edit</button>
                                        </a>
                                        <a href="controller/deletereview.jsp?id=<%=rs2.getString("idreview")%>&idproduct=<%= rs.getString("idproduct")%>">
                                            <button class="btn btn-danger" onclick="return confirm('are you sure ?')">Delete</button></div>
                                        </a>                                        
                                    </div>
                                <%}%>
                        </li>
                        <%}%>
                        
                    </ul>

                    <%
                        query = "select * from msreview where idreview = " + request.getParameter("idreview") ;
                        rs = st.executeQuery(query);
                        if(rs.next()){
                    %>
                    <form role="form" action="controller/updatereview.jsp" method="POST">
                        <div class="form-group">
                            <label>Add Review</label>
                            <textarea class="form-control" rows="5" placeholder="Your comments" name="review"><%= rs.getString("review") %></textarea>
                            <label>Rate</label>
                            <select name="rate">
                                <option value="<%= rs.getString("rate") %>" selected><%= rs.getString("rate")%></option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                            <input type="hidden" name="idproduct" value="<%= rs.getString("idproduct")%>"/>
                            <input type="hidden" name="idreview" value="<%= rs.getString("idreview")%>"/>
                        </div>
                        <div class="form-group">

                            <button type="submit" class="btn btn-default">Update</button>
                        </div>
                        <%if(request.getParameter("msg")!=null){%>
                        <div class="form-group">
                            <label for="" class="error-msg"><%=request.getParameter("msg")%></label>
                        </div>
                        <%}%>
                    </form>


                    <%}%>
                </div>
            </div>
        </div>
    </div>
</div>

<%}%>
<%@include file="footer.jsp"%>