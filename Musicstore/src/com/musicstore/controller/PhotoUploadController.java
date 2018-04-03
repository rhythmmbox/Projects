package com.musicstore.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;

@SuppressWarnings("serial")
public class PhotoUploadController extends HttpServlet{
	private BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();

    public void doPost(HttpServletRequest req, HttpServletResponse res)
        throws ServletException, IOException {
    	
        Map<String, List<BlobKey>> blobs = blobstoreService.getUploads(req);
        List<BlobKey> blobKeys = blobs.get("myFile");
        String name=req.getParameter("item_name");
		String type=req.getParameter("item_type");
		String inst_type=req.getParameter("inst_type");
		String comp_name=req.getParameter("company_name");	
		String model_no=req.getParameter("model_no");
		String quant=req.getParameter("quantity");
		String price=req.getParameter("price");
		String loc=req.getParameter("loc");
		
		System.out.println(name);
		System.out.println(type);
		System.out.println(inst_type);
		System.out.println(loc);
		
		if (blobKeys == null || blobKeys.isEmpty()) {
            
			System.out.println("blob=null");
			res.sendRedirect("/");
        } else {
   
     	   req.setAttribute("item_name", name);
     	   req.setAttribute("item_type", type);
     	   req.setAttribute("inst_type", inst_type);
     	  req.setAttribute("company_name", comp_name);
     	 req.setAttribute("model_no", model_no);
     	 req.setAttribute("quantity", quant);
     	 req.setAttribute("price", price);
     	 req.setAttribute("loc", loc);

     	System.out.println("!null");
        	   getServletContext().getRequestDispatcher("/serve?blob-key=" + blobKeys.get(0).getKeyString()).forward(req,res);
        	
        }
    }
}