package com.musicstore.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;
import com.google.appengine.api.images.ImagesServiceFactory;
import com.google.appengine.api.images.ServingUrlOptions;
import com.musicstore.dao.InstrumentDao;
import com.musicstore.dao.ItemDao;
import com.musicstore.dao.PhotoDao;

@SuppressWarnings("serial")
public class ServeController extends HttpServlet {
    @SuppressWarnings("unused")
	private BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();


public void doPost(HttpServletRequest req, HttpServletResponse res)
    throws IOException, ServletException {
	String key=req.getParameter("blob-key");

        BlobKey blobKey = new BlobKey(key);
     
        ServingUrlOptions serve = ServingUrlOptions.Builder.withBlobKey(blobKey); 
		String imgurl=	ImagesServiceFactory.getImagesService().getServingUrl(serve);
        @SuppressWarnings("unused")
		HttpSession sess=req.getSession();
        String url=imgurl;
       
        String name=req.getParameter("item_name");
		String type=req.getParameter("item_type");
		String inst_type=req.getParameter("inst_type");
		String comp_name=req.getParameter("company_name");	
		String model_no=req.getParameter("model_no");
		String quant=req.getParameter("quantity");
		String price=req.getParameter("price");
        String loc=(String)req.getAttribute("loc");
       
      
        

       

         
         int pos = url.indexOf(':');
        int n=2;
         while (--n > 0 && pos != -1)
             pos = url.indexOf(':', pos + 1);
        //url="https://localhost"+url.substring(pos);
			//calling stored procedure for registering  details in Instrument , Item, Photo table

        InstrumentDao.register(type,inst_type,url);
       
		ItemDao.register(name,url,Integer.parseInt(quant),type,
				comp_name,Integer.parseInt(model_no),Float.parseFloat(price));
		
	        

 		 PhotoDao.register(key,loc,url);
 		
         
 		RequestDispatcher rd=req.getRequestDispatcher("/loadconfirm.jsp");
		rd.include(req, res);
		
	        
		
    
    }
}

