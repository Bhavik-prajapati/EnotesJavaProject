
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>

<%@include file="all_components/allcss.jsp"%>


</head>

<body>


	<%@include file="all_components/navbar.jsp"%>

	<div class="container-fluid back-img">

		<div class="row" style="padding-top: 180px">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-header">Login Here</div>
					
					
					<%
					
					String invalidmsg=(String)session.getAttribute("login-failed");
					if(invalidmsg!=null){
						%>
						
						<div class="alert alert-danger" role="alert"><%=invalidmsg%></div>
						
						
						<%
						session.removeAttribute("login-failed");
						
						
					}
					
					%>
					
					<%

					String withoutloginmsg=(String)session.getAttribute("login-errror");
					
					if(withoutloginmsg!=null){
						%>
						
						<div class="alert alert-danger" role="alert">
						<%=withoutloginmsg %>
						</div>
						
						<%
						session.removeAttribute("login-errror");
						
					}
					
					%>
					
					<%
					
						
					String lgmsg=(String)session.getAttribute("logout-msg");
					if(lgmsg!=null){
						%>
						
						<div class="alert alert-success" role="alert">
						<%=lgmsg%>
						</div>
						
						
						<%
						session.removeAttribute("logout-msg");
								
					}
					
					%>
					
					
					<div class="card-body">
						<form action="loginServlet" method="post">
							<div class="form-group">

								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email"
									name="uemail" required />
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" name="upassword" required />
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
	</div>

	<%@include file="all_components/footer.jsp"%>


	
</body>
</html>