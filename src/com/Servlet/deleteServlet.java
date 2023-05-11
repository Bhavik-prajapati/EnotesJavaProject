package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.PostDAO;
import com.Db.DBConnect;
import com.mysql.cj.Session;
import com.mysql.cj.xdevapi.SessionFactory;

/**
 * Servlet implementation class deleteServlet
 */
@WebServlet("/deleteServlet")
public class deleteServlet  extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
		Integer noteid=Integer.parseInt(req.getParameter("note_id"));
		
		PostDAO dao=new PostDAO(DBConnect.getConn());
		HttpSession session=null;
		boolean f=dao.DeleteNode(noteid);
		if(f) {
			
				session=req.getSession();
				session.setAttribute("updatemsg", "Note deleted Succesfully...");
				resp.sendRedirect("showNotes.jsp");
				
				
			
		}else {
			
			session=req.getSession();
			session.setAttribute("wrongMsg", "something went wrong.....");
			resp.sendRedirect("showNotes.jsp");
			
			
			
			
			
			
		}
		
		
		
		
		
	}

}
