<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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

<link href="https://cdnjs.cloudflare.com/ajax/libs/easy-autocomplete/1.3.5/easy-autocomplete.min.css" rel="stylesheet" type="text/css">
  <script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/easy-autocomplete/1.3.5/jquery.easy-autocomplete.min.js" type="text/javascript" ></script>

</head>
<body>

   <div class="super_container">
	<header class="header">
	<!-- ======= Top header ========= -->	
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
  <!-- <!--======= end Top header ========= -->	
	
 <!-- <!--=======  header section========= -->		
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
	   <form class="example" action="./getProductDetailsInSearchPage" method="get">
	   <input type="text" name="productName" id="field1" placeholder="Enter Your Medicine Name"  required>
	   <button type="submit"><i class="fa fa-search"></i></button>
	   </form>
	   </div>
	     <!--   <input id="field1" name="productName"/> -->
	   
      <script>
        var options = {
                url: "./getProductDetailsInSearchPage",
                getValue: "productName",
                list: {
                        match: {
                                enabled: true
                        }
                }
        };
        $("#field1").easyAutocomplete(options);
        </script>   
        
		<nav class="main_nav_contaner ml-auto">
		<ul class="main_nav">
		<li class="active"><a href="#">Home</a></li>
		<li><a href="">About Us</a></li>
		<li><a href="./uploadFile.jsp">Upload</a></li>
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
		<li><a href="courses.html">Services</a></li>
		<li><a href="blog.html">Blog</a></li>
		<li><a href="#">Page</a></li>
		<li><a href="contact.html">Contact</a></li>
		</ul>
		</nav>
	</div>
	
 <!-- <!--======= End header section ========= -->		
				
 <!-- <!--======= Slider section ========= -->		
    <div class="home">
	
		<div class="home_slider_container" >
		<image src="images/ba.jpg" style="width: 100%">
		<div class="col-md-12 box">
		<h4 class="animated bounceInLeft mb-3 ani1" id="item-1">
				You run our store with 0 investment</h4>
				<h4 class="animated bounceInLeft mb-3 ani1" id="item-2">
				We deliver prescription at your door step</h4>
				<h4 class="animated bounceInLeft mb-3 ani1" id="item-3">
				You run our store with 0 investment</h4>
				<h4 class="animated bounceInLeft mb-3 ani1" id="item-2">
				We deliver prescription at your door step</h4>
				
		<h5 class="animated bounceInRight mb-3 ani1" id="item-1">
		We deliver prescription at your door step</h5>
		
		<h5 class="animated bounceInRight mb-3 ani1" id="item-2">
		We deliver prescription at your door step</h5>
		
		<h5 class="animated bounceInRight mb-3 ani1" id="item-3">
		We deliver prescription at your door step</h5>
		
		</div>
		
			-<div class="owl-carousel owl-theme home_slider">
			
				<div class="owl-item">
					<div class="home_slider_background" style="background-image:url(images/ba.jpg)"></div>
					<div class="home_slider_content">
						<div class="container">
							<div class="row">
								<div class="col text-center">
									<div class="home_slider_title">You run our store with 0 investment</div>
									<div class="home_slider_subtitle"></div>
									<div class="home_slider_form_container">
										<form action="#" id="home_search_form_1" class="home_search_form d-flex flex-lg-row flex-column align-items-center justify-content-between">
											<div class="d-flex flex-row align-items-center justify-content-start">
												<input type="search" class="home_search_input" placeholder="Keyword Search" required="required">
												<select class="dropdown_item_select home_search_input">
													<option>Category Courses</option>
													<option>Category</option>
													<option>Category</option>
												</select>
												<select class="dropdown_item_select home_search_input">
													<option>Select Price Type</option>
													<option>Price Type</option>
													<option>Price Type</option>
												</select>
											</div>
											<button type="submit" class="home_search_button">search</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="owl-item">
					<div class="home_slider_background" style="background-image:url(images/home_slider_1.jpg)"></div>
					<div class="home_slider_content">
						<div class="container">
							<div class="row">
								<div class="col text-center">
									<div class="home_slider_title">The Premium System Education</div>
									<div class="home_slider_subtitle">Future Of Education Technology</div>
									<div class="home_slider_form_container">
										<form action="#" id="home_search_form_2" class="home_search_form d-flex flex-lg-row flex-column align-items-center justify-content-between">
											<div class="d-flex flex-row align-items-center justify-content-start">
												<input type="search" class="home_search_input" placeholder="Keyword Search" required="required">
												<select class="dropdown_item_select home_search_input">
													<option>Category Courses</option>
													<option>Category</option>
													<option>Category</option>
												</select>
												<select class="dropdown_item_select home_search_input">
													<option>Select Price Type</option>
													<option>Price Type</option>
													<option>Price Type</option>
												</select>
											</div>
											<button type="submit" class="home_search_button">search</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>

		<div class="home_slider_nav home_slider_prev"><i class="fa fa-angle-left" aria-hidden="true"></i></div>
		<div class="home_slider_nav home_slider_next"><i class="fa fa-angle-right" aria-hidden="true"></i></div>
	</div> -

	
    
 <!-- <!--======= end Slider section ========= -->			

 <!-- <!--======= Services section =========	 -->
	        <div class="features">
		    <div class="container">
			<div class="row">
		    <div class="col">
			<div class="section_title_container text-center">
			<h2 class="section_title">Our Services</h2>
			<div class="section_subtitle"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel gravida arcu. Vestibulum feugiat, sapien ultrices fermentum congue, quam velit venenatis sem</p></div>
			</div>
			</div>
			</div>
			
			<div class="row features_row">
			<div class="col-lg-3 feature_col">
			<div class="feature text-center trans_400">
			<div class="feature_icon"><img src="images/icon_1.png" alt=""></div>
			<h3 class="feature_title">Heart problem</h3>
			<div class="feature_text"><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy .</p></div>
			<br>
			<button type="button" class="btn btn-success"><a href="#" style="color:#fff;">Read More</a></button>
			</div>
			</div>

			<div class="col-lg-3 feature_col">
			<div class="feature text-center trans_400">
			<div class="feature_icon"><img src="images/icon_2.png" alt=""></div>
			<h3 class="feature_title">Brain problem</h3>
			<div class="feature_text"><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy .</p></div>
			<br>
			<button type="button" class="btn btn-success"><a href="#" style="color:#fff;">Read More</a></button>
			</div>
			</div>

			<div class="col-lg-3 feature_col">
			<div class="feature text-center trans_400">
			<div class="feature_icon"><img src="images/icon_3.png" alt=""></div>
			<h3 class="feature_title">knee problem</h3>
			<div class="feature_text"><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy .</p></div>
			<br>
			<button type="button" class="btn btn-success"><a href="#" style="color:#fff;">Read More</a></button>
			</div>
			</div>

			<div class="col-lg-3 feature_col">
			<div class="feature text-center trans_400">
			<div class="feature_icon"><img src="images/icon_4.png" alt=""></div>
			<h3 class="feature_title">Human bones problem</h3>
			<div class="feature_text"><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy .</p></div>
			<br>
			<button type="button" class="btn btn-success"><a href="#" style="color:#fff;">Read More</a></button>
			</div>
		    </div>
		    </div>
		   </div>
	       </div>
		   </div></div>
		  - <div class="col-lg-12">
		   <p><br><br><br></p>
		   </div>
<!--  <!-- ======= end Services section ========= -->

	<!-- <!--======= end Slider section ========= -->		

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
				</div>

				<div class="col-lg-3 footer_col clearfix">
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
				</div>
				
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
						<div class="cr_text">Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0.
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
 <!-- <!--======= end Footer section =========	 -->							
                        </div>

<!-- ======= api section ====== -->


<!-- ======= end api section ===== -->= 
<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="js/custom.js"></script>
 

 
</body>
</html>