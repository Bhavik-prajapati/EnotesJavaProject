<%@page import="com.User.Post"%>
<%@page import="java.util.List"%>
<%@page import="com.Db.DBConnect"%>
<%@page import="com.DAO.PostDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%
	UserDetails user3 = (UserDetails) session.getAttribute("userD");

	if (user3 == null) {

		response.sendRedirect("login.jsp");
		session.setAttribute("login-errror", "Please Login.....");

	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>show notes</title>

<%@include file="all_components/allcss.jsp"%>


</head>

<body>



	<%@include file="all_components/navbar.jsp"%>


	<%
		String updatemsg = (String) session.getAttribute("updatemsg");
		if (updatemsg != null) {
	%>


	<div class="alert alert-success" role="alert">

		<%=updatemsg%>

	</div>




	<%
		session.removeAttribute("updatemsg");

		}
	%>
	
	
	
	
	<%
		String wrongMsg = (String) session.getAttribute("wrongMsg");
		if (wrongMsg != null) {
	%>


	<div class="alert alert-danger" role="alert">

		<%=wrongMsg%>

	</div>




	<%
		session.removeAttribute("updatemsg");

		}
	%>
	
	
	
	




	<div class="container">

		<h2 class="text-center">All Notes</h2>
		<div class="row py-5">




			<%
				if (user3 != null) {

					PostDAO ob = new PostDAO(DBConnect.getConn());
					List<Post> post1 = ob.getdata(user3.getId());
					for (Post po : post1) {
			%>

			<div class="col-md-4 col-sm-12">

				<div class="card mt-4">


					<div class="col-md-12 col-sm-12 p-3">

						<h5 class="card-title"><%=po.getTitle()%></h5>
						<p><%=po.getContent()%></p>

						<p>
							<b class="text-success">Published by:<%=user3.getName()%>
							</b> <b class="text-primary"></b>
						</p>

						<p>
							<b class="text-success">Published date:<%=po.getPdate()%>
							</b> <b class="text-primary"></b>

						</p>

						<div class="container text-center mt-2">
							<a href="deleteServlet?note_id=<%=po.getId()%>"
								class="btn btn-danger">Delete</a> <a
								href="edit.jsp?note_id=<%=po.getId()%>"
								class="btn btn-secondary">Edit</a>
						</div>
					</div>

				</div>
			</div>

			<%
				}

				}
			%>

		</div>




	</div>


	<%@include file="all_components/footer.jsp"%>





</body>
</html>