<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<head>
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
		<div class="login_button"><a href="register.jsp">Register</a></div>
		</div>
		</div>
		
		<div class="col-md-1">
		<div class="top_bar_login ml-auto">
		<div class="login_button"><a href="login.jsp">Login</a></div>
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
		
	   <div class="col-lg-1"></div>
	   <div class="col-lg-4 col-xs-12" id="reg">
	   <form class="example" action="#" >
	   <input type="text" name="from" placeholder="Enter Your Medicine Name"  required>
	   <button type="submit"><i class="fa fa-search"></i></button>
	   </form>
	   </div>

		<nav class="main_nav_contaner ml-auto">
		<ul class="main_nav">
		<li class="active"><a href="#">Home</a></li>
		<li><a href="">About Us</a></li>
		<li><a href="courses.html"></a></li>
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
		<!--<li><a href="courses.html">Services</a></li>
		<li><a href="blog.html">Blog</a></li>
		<li><a href="#">Page</a></li>
		<li><a href="contact.html">Contact</a></li>-->
		</ul>
		</nav>
	</div>
	
<!--======= End header section =========-->		
				
<!--======= Slider section =========-->		
        <div class="home1">
	 
		</div>
		
<!--============ login section ===========-->
                        <%
							
							String email = request.getParameter("email");
						%>
           <div align="center">
            <font style='color: red; font-weight: 600; font-size: medium;'>${resetFailure}</font>
            </div>
 <div class="row">
 <div class="col-md-4"></div>
  <div class="col-md-4" id="login_page">
    <form action="./resetPassword" method="post">
       <div class="reset">
	   <h6>Reset Password</h6>
	   </div>
	   
	   <div class="row form-group">
	   <div class="col-lg-12">
	   <label>Enter Password </label>
	  
	   <input type="password" class="form-control" id="password" name="password" placeholder="Enter New Password" required>
	   <input type="hidden" name="email" value="<%=email%>">
	   </div>
	   </div>
	 
	   <div class="row form-group">
	   <div class="row">
	   <div class="col-lg-4"></div>
	   <div class="col-lg-5">
	   <button type="submit" class="btn btn-success btn-block" id="one3">Sign in</button>
	   </div>
	   <div class="col-lg-4"></div>
	   </div>
	   </div>
	   
	    
	</form>
  </div>
<div class="col-md-4"></div>  
 </div>
 <div class="clearfix"> </div>
 <!--============ End login section ===========-->
		<div class="col-lg-12">
	    <p><br><br></p>
		</div>
 <!--======= end Services section =========-->

	<!--======= Slider section =========-->		

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

				
				
				<div class="col-lg-3 footer_col">
				<div class="footer_section footer_contact">
				<div class="footer_title">Contact Us</div>
				<div class="footer_contact_info">
		    	<ul>
				<li><i class="fa fa-envelope-o"></i> : Info@rxmitra.com</li>
				<li><i class="fa fa-phone"></i> :  040-4851 0133</li>
				<li><span><i class="fa fa-map-marker"></i>&nbsp; Unit - 306, Level 3,<br>
		&nbsp; &nbsp; Annapurua Block,<br>
		&nbsp; &nbsp; Adhitya Enclave,Ameerprt<br>
		&nbsp; &nbsp; Hyderabad - 500016,Telangana</span></li>
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