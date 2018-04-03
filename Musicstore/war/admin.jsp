<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="static com.musicstore.database.Ofyservice.*, com.musicstore.entity.User,java.io.*,javax.servlet.*,java.util.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<% 
          if( session.getAttribute("email")!=null ){
          String s=(String)session.getAttribute("email");
          
          
          
          if(s.equals("admin@sce.com"))
        	  {
        		 
        		 %> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADMIN VIEW</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/shop-homepage.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#"><b><span style="color:">RHYTHM </span><span style="color:">BOX</span></b></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
                  
          
        		          <button class="w3-button w3-ripple w3-purple"  onclick="window.location.href='/admin.jsp'">User</button>
        		 
        		         <button class="w3-button w3-ripple w3-blue"  onclick="window.location.href='/order.jsp'">Order</button>
        		 		 <button class="w3-button w3-ripple w3-green"  onclick="window.location.href='/item_details.jsp'">Item</button>
        		 		        		  <button class="w3-button w3-ripple w3-orange"  onclick="window.location.href='/instrument.jsp'">Instrument</button>
        		 		 <button class="w3-button w3-ripple w3-pink"  onclick="window.location.href='/photodetails.jsp'">Photo Details</button>
        		 		        		  
        		 		 <button class="w3-button w3-ripple w3-grey"  onclick="window.location.href='/structure.jsp'">Structure</button>
        		  <button class="w3-button w3-ripple w3-brown"  onclick="window.location.href='/upload.jsp'">Upload</button>
        		  <button class="w3-button w3-ripple w3-red"  onclick="window.location.href='/home.jsp'">User View</button>
        		  
        		 <% 	  
        	  }
          else{
        	  RequestDispatcher rd=request.getRequestDispatcher("/home.jsp");
  			rd.include(request, response);
          }
          }
          else{
           	  RequestDispatcher rd=request.getRequestDispatcher("/home.jsp");
     			rd.include(request, response);
             }
          
        	  %>            
          
                 <% 
          
          
          
                 
          
          
          if( session.getAttribute("email")!=null ){ 
        	  
        	  
        	  
          List<User> usr=ofy().load().type(User.class).list();
				
				Iterator<User> Fetch= usr.iterator();
				while(Fetch.hasNext())
				{
					User ud=Fetch.next();
					if(ud.getEmail().equals(session.getAttribute("email")))
					{
						session.setAttribute("name",ud.getName());
						
						
					}
				}
          %>
<button class="w3-button w3-ripple w3-yellow"  onclick="window.location.href='/logout'" style="margin-right:5px">Logout</button>
		
       <%
			}
			else
			{
		%>	
		  
			
		<%} %>
        </div>
      </div>
    </nav>	
    <div class="container">
 <h1 style="color:purple;"><b>User</b></h1>
  <table class="table table-bordered">
    <thead>
      <tr>
      <th style="color:purple;">Email(ID)</th>
        <th style="color:purple;">User Name</th>
        
        <th style="color:purple;">Password</th>
      </tr>
    </thead>
    <tbody><%
        	  
        	  
        	  
          List<User> user=ofy().load().type(User.class).list();
				
				Iterator<User> Fetch1= user.iterator();
				while(Fetch1.hasNext())
				{
					User ud1=Fetch1.next();
					
				%>
      <tr>
              <td><%=ud1.getEmail()%></td>
      
        <td><%=ud1.getName()%></td>
        <td><%=ud1.getPwd()%></td>
      </tr>
     <%} %>
    </tbody>
  </table>
</div>
</body>
</html>