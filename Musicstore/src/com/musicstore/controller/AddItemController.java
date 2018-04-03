package com.musicstore.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicstore.dao.InstrumentDao;
import com.musicstore.dao.ItemDao;




	@SuppressWarnings("serial")
	public class AddItemController extends HttpServlet {
		
		public void service(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
            
			String name=req.getParameter("item_name");
			String type=req.getParameter("item_type");
			String inst_type=req.getParameter("inst_type");
			String comp_name=req.getParameter("company_name");	
			String model_no=req.getParameter("model_no");
			String quant=req.getParameter("quantity");
			String price=req.getParameter("price");
			String loc=req.getParameter("loc");
			
			req.setAttribute("item_name", name);
	     	   req.setAttribute("item_type", type);
	     	   req.setAttribute("inst_type", inst_type);
	     	  req.setAttribute("company_name", comp_name);
	     	 req.setAttribute("model_no", model_no);
	     	 req.setAttribute("quantity", quant);
	     	 req.setAttribute("price", price);
	     	 req.setAttribute("loc", loc);

	     	 


			InstrumentDao.register(type,inst_type,"");
			
			ItemDao.register(name,"",Integer.parseInt(quant),type,
					comp_name,Integer.parseInt(model_no),Float.parseFloat(price));
			
			RequestDispatcher rd=req.getRequestDispatcher("/uploadphoto.jsp");

			rd.include(req, res);


}
	}
