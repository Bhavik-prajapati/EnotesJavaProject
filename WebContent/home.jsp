

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    
<%
	UserDetails user2 = (UserDetails) session.getAttribute("userD");

	if (user2 == null) {

		response.sendRedirect("login.jsp");
		session.setAttribute("login-errror", "Please Login.....");

	}
	
%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Write here</title>
<%@include file="all_components/allcss.jsp"%>

</head>
<body>
		
		
			
			
			
			<div class="container-fluid p-0">
			<%@include file="all_components/navbar.jsp"%>
			
			<div class="card py-5">
			
			<div class="card-body text-center">
			
			<img alt="" src="img/writing.png" class="img-fluid mx-auto" style="height: 60vh">
			<h1>START TAKING YOUR NOTES</h1>
			<a href="addNotes.jsp" class="btn btn-secondary" >Start Here</a>
			
			
			</div>
			
			
			
			</div>
			
			
			
			
			
			</div>
			
			
			
			
		
			<%@include file="all_components/footer.jsp"%>
	
</body>
</html>