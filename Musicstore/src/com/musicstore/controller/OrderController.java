package com.musicstore.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.musicstore.dao.OrderDao;
import com.musicstore.dao.ItemDao;


	@SuppressWarnings("serial")
	public class OrderController  extends HttpServlet {
		public void service(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException{
			System.out.println("1");
			int quantity=Integer.parseInt((String)req.getParameter("quantity"));
			System.out.println("2");

			int quant=Integer.parseInt(req.getParameter("quant"));
			quant=quant-quantity;
			@SuppressWarnings("unused")
			HttpSession sess=req.getSession();
		    String name=req.getParameter("item_Name");
			String type=req.getParameter("item_Type");
			int model=Integer.parseInt(req.getParameter("model"));
			String company=req.getParameter("company");
			String photoid=req.getParameter("photoid");
			
			System.out.println("3");

			String email=(String)req.getParameter("email");

req.setAttribute("item_Name",name);
req.setAttribute("item_Type",type);
req.setAttribute("quantity",quantity);
req.setAttribute("email",email);
System.out.println("buy........");


//System.out.println(name);
//System.out.println(type);
//System.out.println(model);
//System.out.println(company);
//System.out.println(email);
//System.out.println("photoid");
System.out.println(quantity);
System.out.println(quant);



String orderId=name + String.valueOf(System.currentTimeMillis());
			Float price=Float.parseFloat(req.getParameter("price"));
			System.out.println("5");

			
			float pricee = totalprice(price,quantity);
			
			//calling stored procedure for registering order details
            OrderDao.register(orderId,name,email,pricee, quantity, String.valueOf(System.currentTimeMillis()), String.valueOf((System.currentTimeMillis()+1000*24*60*60)),"placed");
			System.out.println("6");
			//calling stored procedure for registering item details

			ItemDao.register(name,photoid,quant,type,
					company,model,price);
			
			System.out.println("7");

			RequestDispatcher rd=req.getRequestDispatcher("/Test.jsp");

			rd.include(req, res);
		

		}
		public static float totalprice(float a,int b)
		{
			
			float pricee = a*b;
			return pricee;
			
			
		}
		
}