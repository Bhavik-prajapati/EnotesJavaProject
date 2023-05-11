package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAO;
import com.Db.DBConnect;
import com.User.UserDetails;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String email=req.getParameter("uemail");
		String password=req.getParameter("upassword");
		
		
		UserDetails us=new UserDetails();
		us.setEmail(email);
		us.setPassword(password);
		
		
		UserDAO dao=new UserDAO(DBConnect.getConn());
		
		UserDetails user=dao.loginUser(us);
		
		if(user!=null) {

			
			HttpSession session=req.getSession();
			session.setAttribute("userD", user);
			resp.sendRedirect("home.jsp");
			
			
			
		}else {
			
			HttpSession session=req.getSession();
			session.setAttribute("login-failed", "invalid username and password");
			resp.sendRedirect("login.jsp");
			
			
		}
		
	}
	
}
