<%@page import="com.User.UserDetails"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
	<div class="container">
		<a class="navbar-brand" href="#!">
		<i class="fa-solid fa-pen"></i>
		Keep Notes</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="home.jsp">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="addNotes.jsp" >Add
						Notes</a></li>
				<li class="nav-item"><a class="nav-link" href="showNotes.jsp">Show
						Notes</a></li>

				<%
					UserDetails user = (UserDetails) session.getAttribute("userD");
					if (user != null) {
				%>
				<li class="nav-item ml-auto"><a class="nav-link"
					data-toggle="modal" data-target="#exampleModal" type="submit">
						<%=user.getName()%>
				</a></li>
				<li class="nav-item"><a  class="nav-link" type="submit"
					href="LogoutServlet">Logout</a></li>
					
					
					
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">user details</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">

						<div class="container text-center">

							<i class="fa fa-user fa-3x"></i>
							<h5><%=user.getName()%></h5>

							<table class="table">

								<tbody>
									<tr>
										<th>User id</th>
										<td><%=user.getId()%></td>
									</tr>

									<tr>
										<th>Full Name</th>
										<td><%=user.getName()%></td>
									</tr>

									<tr>
										<th>Email</th>
										<td><%=user.getEmail()%></td>
									</tr>
								</tbody>

							</table>
							<div>

								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Close</button>


							</div>


						</div>

					</div>

				</div>
			</div>
		</div>
					
					
					
					

				<%
					} else {
				%>
				<li class="nav-item ml-auto"><a class="nav-link"
					href="login.jsp">Login</a></li>
				<li class="nav-item"><a class="nav-link" href="register.jsp">Register</a></li>
				<%
					}
				%>

			</ul>
		</div>


		





	</div>
</nav>
