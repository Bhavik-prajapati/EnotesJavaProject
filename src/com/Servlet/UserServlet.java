package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAO;
import com.Db.DBConnect;
import com.User.UserDetails;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		String name = req.getParameter("fname");
		String email = req.getParameter("uemail");
		String password = req.getParameter("upassword");

		UserDetails us = new UserDetails();
		us.setName(name);
		us.setEmail(email);
		us.setPassword(password);

		UserDAO dao = new UserDAO(DBConnect.getConn());
		PrintWriter out = res.getWriter();
		boolean f = dao.addUser(us);
		HttpSession session;

		if (f) {

			session = req.getSession();

			session.setAttribute("reg-sucess", "Register Succesfully...");
			res.sendRedirect("register.jsp");

		} else {
			session = req.getSession();

			session.setAttribute("failed-msg", "Something went wrong on server...");
			res.sendRedirect("register.jsp");

		}

	}

}
