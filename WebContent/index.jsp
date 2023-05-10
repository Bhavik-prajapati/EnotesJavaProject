<%@page import="com.Db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Homepage</title>
<%@include file="all_components/allcss.jsp"%>


</head>
<body>


	<%@include file="all_components/navbar.jsp"%>
	
	

	<div class="container-fluid back-img">
		<div class="text-center" style="padding-top: 180px">	
			<h1 class="text-white">Keep Your Notes Here!.</h1>
			<a class="btn btn-light" href="login.jsp">Login</a> <a
				class="btn btn-light" href="register.jsp">Register</a>
		</div>
	</div>


	<%@include file="all_components/footer.jsp"%>
</body>
</html>