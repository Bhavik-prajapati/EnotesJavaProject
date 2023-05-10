<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<%@include file="all_components/allcss.jsp"%>


</head>
<body>


	<%@include file="all_components/navbar.jsp"%>

	<div class="container-fluid back-img">

		<div class="row" style="padding-top: 180px">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-header">Register Here</div>



					<%
						String regMsg = (String) session.getAttribute("reg-sucess");
						if (regMsg != null) {
					%>
					<div class="alert alert-success" role="alert"><%=regMsg%>
						<a href="login.jsp">Click to Login</a>
					</div>

					<%
					
					session.removeAttribute("reg-sucess");
					
					
						}
					%>
					<%
						String failedmsg = (String) session.getAttribute("failed-msg");

						if (failedmsg != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=failedmsg%></div>

					<%
					session.removeAttribute("failed-msg");
					
						}
					%>


					<div class="card-body">
						<form action="UserServlet" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">full Name</label> <input
									
									type="text" class="form-control" id="exampleInputEmail1"
									required
									aria-describedby="emailHelp" placeholder="Enter Name"
									name="fname" /> <label for="exampleInputEmail1">Email
									address</label> <input type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter email" name="uemail" required />
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									required
									placeholder="Password" name="upassword" />
							</div>
							<br />

							<button type="submit"
								class="btn btn-primary badge-pill btn-block bg-black text-white rounded-pill w-100">Submit</button>
					</div>

					</form>
				</div>
			</div>
		</div>
	</div>


	<%@include file="all_components/footer.jsp"%>
</body>
</html>