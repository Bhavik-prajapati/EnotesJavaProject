package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sun.security.provider.certpath.ResponderId;

/**
 * Servlet implementation class LogoutServlet
 */
@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
			
		try {
			
			HttpSession session=req.getSession();
			session.removeAttribute("userD");
			HttpSession session2=req.getSession();
			session2.setAttribute("logout-msg", "Logout succesfully...");
			resp.sendRedirect("login.jsp");
			
			
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		
	}
	
}
