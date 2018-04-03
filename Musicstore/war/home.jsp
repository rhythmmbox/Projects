<%@ page import="static com.musicstore.database.Ofyservice.*, com.musicstore.entity.User,java.io.*,javax.servlet.*,java.util.*" %>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>RHYTHM BOX| HOME</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/shop-homepage.css" rel="stylesheet">
<style>
 
</style>
  </head>

  <body >
  
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#"><b><span style="color:">RHYTHM </span><span style="color:">BOX</span></b></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="/home.jsp">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">About</a>
            </li>
          
            <li class="nav-item">
              <a class="nav-link" href="#">Contact</a>
            </li>
          </ul>
          
          <% 
          if( session.getAttribute("email")!=null ){
          String s=(String)session.getAttribute("email");
          
          
          
          if(s.equals("admin@sce.com"))
        	  {
        		 
        		 %> 		
        		          		  <button class="w3-button w3-ripple w3-red"  onclick="window.location.href='/admin.jsp'">Admin View</button>
        		  
        		 <% 	  
        	  }
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
						session.setAttribute("email",ud.getEmail());

						
					}
				}
          %>
<button class="w3-button w3-ripple w3-yellow"  onclick="window.location.href='/logout'" style="margin-right:5px">Logout</button>
		<b style="color:white;     text-transform: capitalize;
		">Hello <%= session.getAttribute("name") %> </b>
       <%
			}
			else
			{
		%>	
		  
			      <button class="w3-button w3-ripple w3-red"  onclick="window.location.href='/Login.jsp'">Login</button>
  <button class="w3-button w3-ripple w3-yellow"  onclick="window.location.href='/SignUp.jsp'">Register</button>
		<%} %>
        </div>
      </div>
    </nav>
        
    <!-- Page Content -->
    <div class="container">

      <div class="row">

        <div class="col-lg-3">

          <h1 class="my-4">INSTRUMENTS</h1>
          <div class="list-group">
            <a href="/category.jsp?Id=WIND INSTRUMENTS" class="list-group-item" onclick="window.location.href=''" style="background-color:; color:">Wind Instruments</a>
            <a href="/category.jsp?Id=STRING INSTRUMENTS" class="list-group-item" onclick="window.location.href=''" style="background-color:; color:">String Instruments</a>
            <a href="/category.jsp?Id=PERCUSSION INSTRUMENTS" class="list-group-item" onclick="window.location.href=''" style="background-color:; color:">Percussion  Instruments</a>
            <a href="/category.jsp?Id=RECORDING INSTRUMENTS" class="list-group-item" onclick="window.location.href=''" style="background-color:; color:">Recording Instruments</a>
            
          </div>

        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">

          <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active">
                <img class="d-block img-fluid" src="$_57.jfif" alt="First slide" width="900" height="350">
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src="22.jpg" alt="Second slide"width="900" height="350" >
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src="61.jpg" alt="Third slide"width="900" height="350">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>

          <div class="row">

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="item.jsp"><img class="card-img-top" src="sl500.jpg" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">Gammon Drum Set</a>
                  </h4>
                  <h5>$24.99</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="item.jsp"><img class="card-img-top" src="b.jpg" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">Fender Guitar</a>
                  </h4>
                  <h5>$24.99</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur! Lorem ipsum dolor sit amet.</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="item.jsp"><img class="card-img-top" src="c.jpg" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">Fender Amp</a>
                  </h4>
                  <h5>$24.99</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="item.jsp"><img class="card-img-top" src="d.jpg" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">SilverStar harmonica</a>
                  </h4>
                  <h5>$24.99</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="item.jsp"><img class="card-img-top" src="e.jpg" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">Numark Recording Equipment</a>
                  </h4>
                  <h5>$24.99</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur! Lorem ipsum dolor sit amet.</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="item.jsp"><img class="card-img-top" src="f.jpg" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="#">Dual Flute</a>
                  </h4>
                  <h5>$24.99</h5>
                  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

          </div>
          <!-- /.row -->

        </div>
        <!-- /.col-lg-9 -->

      </div>
      <!-- /.row -->

   
    
    
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
