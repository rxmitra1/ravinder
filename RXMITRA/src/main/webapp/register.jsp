<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
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

<script type="text/javascript" src="./js/countries.js"></script>
<script>
   function CheckNumeric(e) {
		 
	    if (window.event) // IE 
	    {
	        if ((e.keyCode < 48 || e.keyCode > 57) & e.keyCode != 8) {
	            event.returnValue = false;
	            return false;

	        }
	    }
	    else { // Fire Fox
	        if ((e.which < 48 || e.which > 57) & e.which != 8) {
	            e.preventDefault();
	            return false;

	        }
	    }
	}

function validateForm()
{
	if(document.getElementById("panno").value.length >=0 ){
	    
	    if(document.getElementById("panno").value.length==0){
	     
	    }else{
	      var pan=document.getElementById("panno").value;
	      var panPat = /^([A-Z]{5})(\d{4})([A-Z]{1})$/;
	      if(!panPat.test(pan)){
	       alert("Invalid Pan Number..Please Check it..");
	       document.getElementById("panno").focus();
	       return false;
	      }else{}
	    }
	     }
if(document.getElementById("gstin").value.length >=0 ){
	    
	    if(document.getElementById("gstin").value.length==0){
	     
	    }else{
	      var pan=document.getElementById("gstin").value;alert(pan);
	     /*  var panPat = \d{2}[A-Z]{5}\d{4}[A-Z]{1}\d[Z]{1}[A-Z\d]{1}; */
	      if(!panPat.test(pan)){
	       alert("Invalid GSTIN Code..Please Check it.."+pan);
	       document.getElementById("gstin").focus();
	       return false;
	      }else{}
	    }
	     }
	if(document.getElementById("panno").value.length !=10 )
	{
		alert("Please enter 10 digits in PANno.");
		document.getElementById("panno").focus();
		return false;
	}
	if(document.getElementById("gstin").value.length !=15 )
	{
		alert("Please enter 15 digits in GSTIN Code.");
		document.getElementById("gstin").focus();
		return false;
	}
	if(document.getElementById("usertype").value == "SELECT")
	{
	alert("Please Select UserType from the List");
	document.getElementById("usertype").focus();
	return false;
	}
	if(document.getElementById("phoneno").value.length <10 )
	{
		alert("Please enter maximim 10 digits in PhoneNo.");
		document.getElementById("phoneno").focus();
		return false;
	}
	if(document.getElementById("shopphoneno").value.length <10 )
	{
		alert("Please enter 10 digits in Shop Phone no.");
		document.getElementById("shopphoneno").focus();
		return false;
	}
	if(document.getElementById("street").value.length !=6)
	{
	alert("Please Enter 6 digits in PINCODE");
	document.getElementById("street").focus();
	return false;
	}
	if(document.getElementById("country").value == "-1")
	{
	alert("Please Select a State");
	document.getElementById("country").focus();
	return false;
	}
	if(document.getElementById("state").value == "")
	{
	alert("Please Select a District");
	document.getElementById("state").focus();
	return false;
	}
}
</script>
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
	   <form class="example" action="./getProductDetailsInSearchPage" method="post" >
	   <input type="text" name="productName" id="field1" placeholder="Enter Your Medicine Name"  required>
	   <button type="submit"><i class="fa fa-search"></i></button>
	   </form>
	   </div>

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
		<li><a href="./uploadFile.jsp">Upload</a></li>
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

                    <div align="center">
		                 <font style='color: blue; font-weight: 600; font-size: medium;'>${message}</font>
		                  <font style='color: blue; font-weight: 600; font-size: medium;'>${message2}</font>
		                   <font style='color: blue; font-weight: 600; font-size: medium;'>${emailverifiedsuccess}</font>
		                    <font style='color: blue; font-weight: 600; font-size: medium;'>${emailverifiederror}</font>
		               
		           </div>


 <div class="row">
  <div class="col-md-3"></div>
  <div class="col-md-6" id="login_page">
    <form action="./userRegister" onsubmit="return validateForm()" method="post" role="form" style="display: block;">
       <div class="reset">
	   <h6>Business Partnership Registration</h6>
	   <p><br></p>
	   </div>
	   
	   <div class="row form-group">
	   <div class="row">
	   <div class="col-lg-12">
	   <label>User Type</label>
	   <select name="businessType" class="form-control12" id="businessType" required>
		<option>-- Select User Type --</option>
		<option>DISTRIBUTOR</option>
		<option>MANUFACTURER</option>
		<option>RETAILER</option>
	   </select>
	   </div>
	   </div>
	   </div>
	   
	   <div class="row form-group">
	   <div class="row">
	   <div class="col-lg-6">
	   <label>First Name</label>
	   <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Your First Name" required>
	   </div>
	   
	   <div class="col-lg-6">
	   <label>Last Name</label>
	   <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Your Last Name" required>
	   </div>
	   </div>
	   </div>
	 
	   <div class="row form-group">
	   <div class="row">
	   <div class="col-lg-6">
	   <label>Email ID</label>
	   <input type="text" class="form-control" id="emailId" name="emailId" placeholder="Enter Email Id" required>
	   </div>
	   
	   <div class="col-lg-6">
	   <label>Password</label>
	   <input type="Password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
	   </div>
	   </div>
	   </div>
	   
	   <div class="row form-group">
	   <div class="row">
	   <div class="col-lg-6">
	   <label>Mobile</label>
	   <input type="text" class="form-control" id="mobileNo" name="mobileNo" placeholder="Enter Mobile No" required>
	   </div>
	   
	   <div class="col-lg-6">
	   <label>Pincode</label>
	   <input type="text" class="form-control" id="pincode" name="pincode" placeholder="Enter Pincode" required>
	   </div>
	   </div>
	   </div>
	   
	   <div class="row form-group">
	   <div class="row">
	   <div class="col-lg-6">
	   <label>State</label>
	 <select name="state" class="form-control12" id="state" required>
		<option>-- Select District --</option>
		
	   </select>
	  
	   </div>
	   
	   <div class="col-lg-6">
	   <label>District</label>
	   <select name="district" class="form-control12" id="district" required>
		<option>-- Select District --</option>
		
	   </select>
	   </div>
	   </div>
	   </div>
	   
	   <div class="row form-group">
	   <div class="row">
	   <div class="col-lg-6">
	   <label>Business name</label>
	   <input type="text" class="form-control" id="businessName" name="businessName" placeholder="Enter Business name" required>
	   </div>
	   
	   <div class="col-lg-6">
	   <label>Gst No</label>
	   <input type="text" class="form-control" id="gstNo" name="gstNo" placeholder="Enter Gst No" required>
	   </div>
	   </div>
	   </div>
	 
	   <div class="row form-group">
	   <div class="row">
	   <div class="col-lg-4"></div>
	   <div class="col-lg-5">
	   <button type="submit" class="btn btn-success btn-block" id="one3">Regester</button>
	   </div>
	   <div class="col-lg-4"></div>
	   </div>
	   </div>
	   
	   <div class="row">
	   <div class="f-row agree-terms">
       <input type="checkbox" name="terms" class="check-box" id="terms"> &nbsp;I agree to the silicasmart.com <a href="privacy-policy" target="_blank">privacy policy</a> &amp; <a href="terms" target="_blank">Terms &amp; Conditions</a> 
       <div id="error_terms"><strong><b class="error hidden"></b></strong></div>                                       
       </div>
	   </div>
	   
	</form>
  </div>
<div class="col-md-3"></div>  
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


<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/custom.js"></script>
	<script src="js/home.js"></script>
	
	<script language="javascript">
    populateCountries("country", "state");
    </script>
	<script language="javascript">
    populateCountries("state", "district");
    </script>
</body>
</html>