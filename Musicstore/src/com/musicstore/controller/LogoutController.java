package com.musicstore.controller;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
public class LogoutController extends HttpServlet{
	public void service (HttpServletRequest req, HttpServletResponse res)throws IOException
	 {
		 HttpSession sess=req.getSession();
		 sess.invalidate();
		 res.sendRedirect("/home.jsp");
	 }
}
