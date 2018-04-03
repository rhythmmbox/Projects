package com.musicstore.controller;

import java.io.IOException;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.musicstore.dao.*;

@SuppressWarnings("serial")
public class LoginController extends HttpServlet {
	
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		String email=req.getParameter("email");
		String pwd=req.getParameter("pwd");
		

		
		
		
		

		 if("admin@sce.com".equals(email)&&"123456".equals(pwd))
		{
			HttpSession sess=req.getSession();
			sess.setAttribute("email", "admin@sce.com");
			sess.setAttribute("name", "Admin");

			 res.sendRedirect("/admin.jsp");
			 			
		}
		else if(UserDao.login(email, pwd))
		{
			HttpSession sess=req.getSession();
			sess.setAttribute("email", email);
			// req.setAttribute("email", email);

			 req.getRequestDispatcher("/home.jsp").forward(req, res);

		}
		else
		{
			res.getWriter().println("<html>"
					+ "<script>"
					+ "var x=alert('Username or password donot match!');"
					+ "</script>"
					+ "</html>");
			RequestDispatcher rd=req.getRequestDispatcher("/home.jsp");
			rd.include(req, res);
		}
		
	}
}