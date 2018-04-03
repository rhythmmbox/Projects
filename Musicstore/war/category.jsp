<%@ page import="static com.musicstore.database.Ofyservice.*,com.musicstore.entity.Instrument, com.musicstore.entity.User,com.musicstore.entity.Item,java.io.*,javax.servlet.*,java.util.*" %>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title> RHYTHM BOX </title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/4-col-portfolio.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a href="home.jsp" class="navbar-brand"><b><span style="color:">RHYTHM </span><span style="color:">BOX</span></b></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">

      <!-- Page Heading -->
      <h1 class="my-4"><%String ss =request.getParameter("Id");%><%=ss%>
     
        
      </h1>
      
     
      <!-- Start -->
     
      <div class="row">   


	 <%
        	  	
        	 List<Instrument> ins=ofy().load().type(Instrument.class).list();   
				Iterator<Instrument> Fetch= ins.iterator();
				while(Fetch.hasNext())
			{  
			     
          		 				 	 
			 Instrument in=Fetch.next();	
        	   String don=in.getName();
          		String don1=in.getType();  
				
				
					List<Item> i1=ofy().load().type(Item.class).list();
				
				Iterator<Item> Fetch1= i1.iterator();
				while(Fetch1.hasNext())
				{
					
								
								
					
								
								Item id3=Fetch1.next();
								
							
							if(don.equals(id3.getItem_Type())&&ss.equals(don1))	
							{
																
							
%>
			<div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
			<div class="card h-100">
			<a href="#"><img  src="<%=id3.getPhotoId()%>"  class="card-img-top"   ></a>
			<div class="card-body">
              <h4 class="card-title">
                <a href="#"><center><%=id3.getName()%></center></a>
              </h4>
             
			 <ul>
             <b> Category:</b> <%=id3.getItem_Type()%><br>
                 <b> Company:</b>           <%=id3.getCompany()%><br>
                     <b> Model No.:</b>       <%=id3.getModel_No()%><br>
                        <b> Price:</b>    <%=id3.getPrice()%>
			</ul>
			 <form action="/order">
				  <input type="number" name="quantity" min="1" max="<%=id3.getItem_Quant()%>"> 
				  <input type="hidden" name="item_Name" value="<%=id3.getName()%>">				 
				  <input type="hidden" name="price" value="<%= id3.getPrice()%>">
				  <input type="hidden" name="item_Type" value="<%=id3.getItem_Type()%>">
				  <input type="hidden" name="company" value="<%=id3.getCompany()%>">
				  				  <input type="hidden" name="quant" value="<%=id3.getItem_Quant()%>">
				  				  <input type="hidden" name="model" value="<%=id3.getModel_No()%>">
				  				  <input type="hidden" name="photoid" value="<%=id3.getPhotoId()%>">
				  				  				  <input type="hidden" name="email" value="<%= session.getAttribute("email")%>">
				  
				  <button type="submit" >BUY</button>              
 				</form>
              </div>
      		
        </div>
				
				 </div>
				<%}}%>
      
       
       <%}%>
			
      
	  <!-- /.row -->
			
      

      <!-- Pagination -->
      
    </div>
	</div>
    <!-- /.container -->

     <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2017</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

  </body>

</html>
