package com.musicstore.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.musicstore.dao.UserDao;


@SuppressWarnings("serial")
public class SignupController  extends HttpServlet {
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException{
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String pwd=req.getParameter("pwd");
		
		/*if("admin@msit".equals(email))
		{
			RequestDispatcher rd1=req.getRequestDispatcher("/home");
			rd1.include(req, res);


		}*/
		
				UserDao.register(name,email, pwd);
				HttpSession sess=req.getSession();
				sess.setAttribute("email", email);
				sess.setAttribute("name", name);

				RequestDispatcher rd=req.getRequestDispatcher("/home.jsp");

				rd.include(req, res);
		
		
	}
}