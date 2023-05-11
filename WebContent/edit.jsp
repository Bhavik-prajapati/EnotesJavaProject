<%@page import="com.User.Post"%>
<%@page import="com.Db.DBConnect"%>
<%@page import="com.DAO.PostDAO"%>
<%@page import="com.User.UserDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	UserDetails user1 = (UserDetails) session.getAttribute("userD");

	if (user1 == null) {

		response.sendRedirect("login.jsp");
		session.setAttribute("login-errror", "Please Login.....");

	}
%>





<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_components/allcss.jsp"%>
</head>
<body>

	<%
		Integer note_id = Integer.parseInt(request.getParameter("note_id"));
		
	
		PostDAO post = new PostDAO(DBConnect.getConn());
		Post p = post.getDataById(note_id);
		
	%>





	<div class="container-fluid p-0">
		<%@include file="all_components/navbar.jsp"%>

		<h1 class="text-center py-3">Edit Your Notes</h1>

		<div class="container mb-5 pt-5">

			<div class="row">

				<div class="col-md-12">

					<form action="NoteEditServlet" method="post">

						<input type="hidden" value="<%=note_id%>" name="noteid">



					

						<div class="form-group">

							<label for="exampleInputEmail1">Enter Title</label>
							 <input type="text"  class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Note.." name="title"
							 value="<%=p.getTitle() %>"
							 required 
							 >
						</div>



						<div class="form-group">
							<textarea rows="9" cols="" class="form-control" name="content"
							
							><%=p.getContent() %></textarea>

						</div>

						<div class="container text-center">
							<button type="submit" class="btn btn-secondary">Update
								Notes</button>
						</div>
					</form>



				</div>





			</div>


			<%@include file="all_components/footer.jsp"%>
</body>
</html>