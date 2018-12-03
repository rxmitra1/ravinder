<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html><head>
<title>Rxmitra</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Unicat project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="css/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">
<link href="css/mdb.min.css" rel="stylesheet">

</head>
<body>

    <div class="super_container">
	<header class="header">
	<!--======= Top header =========-->	
		<div class="top_bar">
		<div class="top_bar_container">
		<div class="container">
		<div class="col-lg-12">
	   <div class="row">
		<div class="col-md-8" id="rx-mitra">
		<ul class="top_bar_contact_list">
		<li>
		<i class="fa fa-phone" aria-hidden="true"></i>
		<div>: 040-4019 1909</div>
		</li>
		<li>
		<i class="fa fa-envelope-o"></i>
	    <div>: info@rxmitra.com</div>
		</li>
		</ul>
		</div>
		
		<div class="col-md-2" style="padding: 0 3%;">
		<div class="top_bar_login ml-auto">
		<div class="login_button"><a href="register.html">Register</a></div>
		</div>
		</div>
		
		<div class="col-md-1">
		<div class="top_bar_login ml-auto">
		<div class="login_button"><a href="login.html">Login</a></div>
		</div>
		</div>
		</div>
		</div>
		</div>
		</div>				
		</div>
<!--======= end Top header =========-->	
	
<!--=======  header section=========-->		
		<div class="header_container">
		<div class="container">
		<div class="row">
		<div class="col">
		<div class="header_content d-flex flex-row align-items-center justify-content-start">
		<div class="logo_container">
	    <a href="index.jsp">
		<div class="logo_text">Rx<span>Mitra</span></div>
		</a>
		</div>
		
		<nav class="main_nav_contaner ml-auto">
		<ul class="main_nav">
		<li class="active"><a href="#">Home</a></li>
		<li><a href="">About Us</a></li>
		<li><a href="./uploadFile.jsp">Upload</a></li>
		<li><a href="./cartDisplay"><i class="fa fa-shopping-cart"></i> My Cart</a></li>
		<li><a href="blog.html"></a></li>
		<li><a href="#"></a></li>
		<li><a href="contact.html"></a></li> 
		</ul>
		<div class="hamburger menu_mm">
	    <i class="fa fa-bars menu_mm" aria-hidden="true"></i>
	    </div>		
	    </nav>

		</div>
		</div>
		</div>
	    </div>
		</div>
        </header>
		<div class="menu d-flex flex-column align-items-end justify-content-start text-right menu_mm trans_400">
		<div class="menu_close_container"><div class="menu_close"><div></div><div></div></div></div>
		<nav class="menu_nav">
		<ul class="menu_mm">
		<li class="active"><a href="#">Home</a></li>
		<li><a href="about.html">About Us</a></li>
		<li><a href="./uploadFile.jsp">Upload</a></li>
        <li><a href="cart.html"><i class="fa fa-shopping-cart"></i> Cart</a></li>
		<!--<li><a href="blog.html">Blog</a></li>
		<li><a href="#">Page</a></li>
		<li><a href="contact.html">Contact</a></li>-->
		</ul>
		</nav>
	</div>
	 <div class="clearfix"> </div>
<!--======= End header section =========-->		
				
<!--======= search section =========-->	
	<div class="clearfix"> </div>
	<div class="home1">   
	  
     </div>
  <div class="clearfix"> </div>
 <!--======= end search section =========-->	
 <!--======= search section =========-->
    <div class="containe" style="background: whitesmoke;
    padding: 35px 11px;"> 
	<div class="row">
	<div class="col-lg-2"></div>
      <div class="col-lg-3">
	   <form class="example12" action="#" style="height: 36px;">
	   <input type="text" name="from" style="height:34px;" placeholder="Enter Your Pincode"  required>
	   </form>
	   </div>
	   <div class="col-lg-4" id="my1">
	   <form class="example" action="./getProductDetailsInSearchPage" method="post" >
	   <input type="text" name="productName" placeholder="Enter Your Medicine Name"  required>
	   <button type="submit"><i class="fa fa-search"></i></button>
	   </form>
	   </div>
	   </div>
	 </div>  
 <!--======= end search section =========-->
  <!--======= search section =========-->
  
  
	<div class="row">
	<div class="col-md-2"></div>
	<div class="col-md-6 tabb" id="my2" align="center">
	<br>
	<br>
	<br>
	
	<h3 align="center" style="color: purple;">${emptyCart}</h3>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	</div>
	
	
	
	<div class="col-md-2"></div>
	</div>
	
	</div>
	<!--======= end search section =========-->
   <p><br></br></p> 
      <div class="clearfix"> </div>
	<!--======= footer section =========-->		
                <div class="clearfix"> </div>
				<footer class="footer">
				<div class="footer_background" style="background-image:url(images/footer_background.png)"></div>
				<div class="container">
				<div class="row footer_row">
				<div class="col">
				<div class="footer_content">
				<div class="row">
				<div class="col-lg-3 footer_col">
			
				<div class="footer_section footer_about">
				<div class="footer_logo_container">
				<a href="#">
				<div class="footer_logo_text">Rx<span>Mitra</span></div>
			    </a>
			    </div>
				<div class="footer_about_text">
				<p>Lorem ipsum dolor sit ametium, consectetur adipiscing elit.</p>
				</div>
				<div class="footer_social">
				<ul>
				<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
				</ul>
				</div>
				</div>			
				</div>

				<!--<div class="col-lg-3 footer_col">
				<div class="footer_section footer_links">
				<div class="footer_title">Site Links</div>
				<div class="footer_links_container">
				<ul>
				<li><a href="index.html"><i class="fa fa-arrow-right"></i> Home</a></li>
				<li><a href="about.html"><i class="fa fa-arrow-right"></i> About</a></li>
				<li><a href="#"><i class="fa fa-arrow-right"></i> Services</a></li>
				<li><a href="contact.html"><i class="fa fa-arrow-right"></i> Contact</a></li>
				</ul>
				</div>
				</div>			
				</div> -->

				<!--<div class="col-lg-3 footer_col clearfix">
				<div class="footer_section footer_links">
				<div class="footer_title">Our Parteners</div>
				<div class="footer_links_container">
				<ul>
				<li><a href="index.html"><i class="fa fa-arrow-right"></i> Campusguide</a></li>
				<li><a href="about.html"><i class="fa fa-arrow-right"></i> Rythumitra</a></li>
				<li><a href="#"><i class="fa fa-arrow-right"></i> Frytemate</a></li>
				<li><a href="contact.html"><i class="fa fa-arrow-right"></i> Zorocabs</a></li>
				</ul>
				</div>
				</div>		
				</div> -->
				
				<div class="col-lg-3 footer_col">
				<div class="footer_section footer_contact">
				<div class="footer_title">Contact Us</div>
				<div class="footer_contact_info">
		    	<ul>
				<li><i class="fa fa-envelope-o"></i> : Info@rxmitra.com</li>
				<li><i class="fa fa-phone"></i> :  040-4019 1909</li>
				<li><span><i class="fa fa-map-marker"></i>&nbsp; Unit - 602, Level 6,<br>
		&nbsp; &nbsp; Manjeera Majestic Commercial,<br>
		&nbsp; &nbsp; Hi-Tech City Road,KPHB,<br>
		&nbsp; &nbsp; Hyderabad - 500072,Telangana</span></li>
				</ul>
				</div>
				</div>			
				</div>
				
				</div>
				</div>
			    </div>
			    </div>

			            <div class="row copyright_row">
				        <div class="col">
					    <div class="copyright d-flex flex-lg-row flex-column align-items-center justify-content-start">
						<div class="cr_text"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy; <script>document.write(new Date().getFullYear());</script> All rights reserved .
                        </div>
						<div class="ml-lg-auto cr_links">
						<ul class="cr_list">
                        <p style="color: #e2e0e0;"> Devloped & Maintained By <a href="http://kosurisoft.com/" target="_blank" style="background:#565353; color: #fff;
                        font-size:15px; text-decoration:none;"> kosurisoft.com</a></p> 
						</ul>
						</div>
					    </div>
				        </div>
			            </div>
		                </div>
	                    </footer>
<!--======= end Footer section =========-->								
                        </div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="js/custom.js"></script>
</body>
</html>