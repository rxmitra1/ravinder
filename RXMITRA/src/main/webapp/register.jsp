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
<link rel="stylesheet" type="text/css"
	href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="css/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">
<link href="css/mdb.min.css" rel="stylesheet">


<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>

<script type="text/javascript" src="./js/countries.js"></script>
<style>
.dropdown {
	position: relative;
	display: block;
	margin-top: 0.5em;
	padding: 0;
}

.dropdown select {
	width: 100%;
	margin: 0;
	background: none;
	border: 0px solid transparent;
	outline: none;
	/* Prefixed box-sizing rules necessary for older browsers */
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	/* Remove select styling */
	appearance: none;
	-webkit-appearance: none;
	/* Magic font size number to prevent iOS text zoom */
	font-size: 1.25em;
	/* General select styles: change as needed */
	/* font-weight: bold; */
	color: #444;
	padding: .6em 1.9em .5em .8em;
	line-height: 1.3;
}

.dropdown select, label {
	font-family: AvenirNextCondensed-DemiBold, Corbel, "Lucida Grande",
		"Trebuchet Ms", sans-serif;
}

.dropdown::after {
	content: "";
	position: absolute;
	width: 9px;
	height: 8px;
	top: 50%;
	right: 1em;
	margin-top: -4px;
	z-index: 2;
	background:
		url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 16 12'%3E%3Cpolygon fill='rgb(102,102,102)' points='8,12 0,0 16,0'/%3E%3C/svg%3E")
		0 0 no-repeat;
	/* These hacks make the select behind the arrow clickable in some browsers */
	pointer-events: none;
}


@media screen and (-ms-high-contrast: active) , ( -ms-high-contrast :
	none) {
	.dropdown select::-ms-expand {
		display: none;
	}
	/* Removes the odd blue bg color behind the text in IE 10/11 and sets the text to match the focus style text */
	select:focus::-ms-value {
		background: transparent;
		color: #222;
	}
}

body:last-child .dropdown::after, x:-moz-any-link {
	display: none;
}
/* reduce padding */
body:last-child .dropdown select, x:-moz-any-link {
	padding-right: .8em;
}

_::-moz-progress-bar, body:last-child .dropdown {
	overflow: hidden;
}
/* Show only the custom icon */
_::-moz-progress-bar, body:last-child .dropdown:after {
	display: block;
}

_::-moz-progress-bar, body:last-child .dropdown select {
	padding-right: 1.9em;
	-moz-appearance: window;
	text-indent: 0.01px;
	text-overflow: "";
	width: 110%;
}

_::-moz-progress-bar, body:last-child .dropdown select:focus {
	outline: 2px solid rgba(180, 222, 250, .7);
}

/* Opera - Pre-Blink nix the custom arrow, go with a native select button */
x:-o-prefocus, .dropdown::after {
	display: none;
}

/* Hover style */
.dropdown:hover {
	border: 1px solid #888;
}

/* Focus style */
select:focus {
	outline: none;
	box-shadow: 0 0 1px 3px rgba(180, 222, 250, 1);
	background-color: transparent;
	color: #222;
	border: 1px solid #fff !important;
}

/* Firefox focus has odd artifacts around the text, this kills that */
select:-moz-focusring {
	color: transparent;
	text-shadow: 0 0 0 #000;
}

option {
	font-weight: normal;
}

/* These are just demo button-y styles, style as you like */
.button {
	border: 1px solid #bbb;
	border-radius: .3em;
	box-shadow: 0 1px 0 1px rgba(0, 0, 0, .04);
	background: #f3f3f3; /* Old browsers */
	background: -moz-linear-gradient(top, #ffffff 0%, #e5e5e5 100%);
	/* FF3.6+ */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #ffffff),
		color-stop(100%, #e5e5e5)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(top, #ffffff 0%, #e5e5e5 100%);
	/* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(top, #ffffff 0%, #e5e5e5 100%);
	/* Opera 11.10+ */
	background: -ms-linear-gradient(top, #ffffff 0%, #e5e5e5 100%);
	/* IE10+ */
	background: linear-gradient(to bottom, #ffffff 0%, #e5e5e5 100%);
	/* W3C */
}

.output {
	margin: 0 auto;
	padding: 1em;
}

.colors {
	padding: 1em;
	color: #fff;
	display: none;
}
/* .red {
  background: #c04;
} 
.yellow {
  color: #000;
  background: #f5e000;
} 
.blue {
  background: #079;
} */
footer {
	margin: 5em auto 3em;
	padding: 2em 2.5%;
	text-align: center;
}

a {
	color: #c04;
	text-decoration: none;
}

a:hover {
	color: #903;
	text-decoration: underline;
}

select:focus {
	outline: none;
	box-shadow: 0 0 0px 0px rgba(180, 222, 250, 1) !important;
	background-color: transparent;
	color: #222;
	border-bottom: 1px solid #6fab29 !important;
}

.or1 {
	font-size: 16px;
	margin: 0px 3px;
	position: absolute;
}

.form-group {
	margin-bottom: 15px;
	padding: 5px 29px !important;
}
</style>


<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>


<script type="text/javascript">
	function getPincodeDets(str)
    {

	  
    	if (str=="")
    	  {
    	  document.getElementById("pincodedata").value="";
    	  return;
    	  }  
    	if (window.XMLHttpRequest)
    	  {// code for IE7+, Firefox, Chrome, Opera, Safari
    	  xmlhttp=new XMLHttpRequest();
    	  }
    	else
    	  {// code for IE6, IE5
    	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    	  }
    	xmlhttp.onreadystatechange=function()
    	  {
    	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    	    {
    	    document.getElementById("pincodedata").value=xmlhttp.responseText;
    	    var pincodedata = document.getElementById("pincodedata").value;
    	    var str_array = pincodedata.split(',');
    	    document.getElementById("city").value=str_array[0].replace(/^\s*/, "").replace(/\s*$/, "");
    	    document.getElementById("district").value=str_array[1].replace(/^\s*/, "").replace(/\s*$/, "");
    	    document.getElementById("state").value=str_array[2].replace(/^\s*/, "").replace(/\s*$/, "");
    	    }
    	  }
    	xmlhttp.open("GET","./getPincode.jsp?pincode="+str,true);
    	xmlhttp.send();
    }
	</script>




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

<script>
$(function() {
  $('#colorselector').change(function(){
    $('.colors').hide();
    $('#' + $(this).val()).show();
  });
});
</script>

<script>

$(document).ready(function () 
		 { 
		  $("#watch-me").click(function()
		  {
		    $("#show-me:hidden").show('slow');
		   $("#show-me-two").hide();
		   });
		   $("#watch-me").click(function()
		  {
		    if($('watch-me').prop('checked')===false)
		   {
		    $('#show-me').hide();
		   }
		  });
		  
		  
		  
		  $("#see-me").click(function()
		  {
		    $("#show-me-two:hidden").show('slow');
		   $("#show-me").hide();
		   $("#show-me-three").hide();
		   });
		   $("#see-me").click(function()
		  {
		    if($('see-me-two').prop('checked')===false)
		   {
		    $('#show-me-two').hide();
		   }
		  });
		  
		
		  
		 });







function yesnoCheck() {
    if (document.getElementById('yesCheck').checked) {
        document.getElementById('ifYes').style.visibility = 'visible';
    }
    else document.getElementById('ifYes').style.visibility = 'hidden';

}
</script>
<script src="https://www.w3schools.com/lib/w3.js"></script>
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
										<li><i class="fa fa-phone" aria-hidden="true"></i>
											<div>: 040-4019 1909</div></li>
										<li><i class="fa fa-envelope-o"></i>
											<div>: info@rxmitra.com</div></li>
									</ul>
								</div>

								<div class="col-md-2" style="padding: 0 3%;">
									<div class="top_bar_login ml-auto">
										<div class="login_button">
											<a href="register.jsp">Register</a>
										</div>
									</div>
								</div>

								<div class="col-md-1">
									<div class="top_bar_login ml-auto">
										<div class="login_button">
											<a href="login.jsp">Login</a>
										</div>
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
							<div
								class="header_content d-flex flex-row align-items-center justify-content-start">
								<div class="logo_container">
									<a href="index.jsp">
										<div class="logo_text">
											Rx<span>Mitra</span>
										</div>
									</a>
								</div>



								<div class="col-lg-1"></div>
								<div class="col-lg-4 col-xs-12" id="reg">
									<form class="example" action="./getProductDetailsInSearchPage"
										method="post">
										<input type="text" name="productName" id="field1"
											placeholder="Enter Your Medicine Name" required>
										<button type="submit">
											<i class="fa fa-search"></i>
										</button>
									</form>
								</div>

								<nav class="main_nav_contaner ml-auto">
									<ul class="main_nav">
										<li class="active"><a href="#">Home</a></li>
										<li><a href="#">About Us</a></li>
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
		<div
			class="menu d-flex flex-column align-items-end justify-content-start text-right menu_mm trans_400">
			<div class="menu_close_container">
				<div class="menu_close">
					<div></div>
					<div></div>
				</div>
			</div>
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
		<div class="home1"></div>

		<!--============ login section ===========-->

		<div align="center">
			<font style='color: blue; font-weight: 400; font-size: medium;'>${message}</font>
			<font style='color: blue; font-weight: 400; font-size: medium;'>${message2}</font>
			<font style='color: blue; font-weight: 400; font-size: medium;'>${emailverifiedsuccess}</font>
			<font style='color: blue; font-weight: 400; font-size: medium;'>${emailverifiederror}</font>

		</div>



		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6" id="login_page">
				<div class="reset">
					<h6>Business Partnership Registration</h6>
					<p>
						<br>
					</p>
				</div>

				<form action="./userRegister" onsubmit="return validateForm()"
					method="post">


					<div class="row" id='form-id' style="padding: 0 15px;">
						<div class="col-lg-12">
							<label>UserType</label><br>
							<div class="col-lg-2" style="padding: 0 0px;">
								<input type="radio" onclick="w3.show('#London')" checked
									name="userType" id="yesCheck" value="SELLER"> <span
									class="or1"> SELLER </span> &nbsp; &nbsp;
								<!-- <input style="width:19px;  height:19px;" id='watch-me' name="businessType" type='radio' checked value="SELLER"/> <span class="or1"> SELLER </span> &nbsp; &nbsp; -->
							</div>
							<div class="col-lg-3">
								<input type="radio" onclick="w3.hide('#London')" name="userType"
									id="noCheck" value="CUSTOMER"> <span class="or1">
									CUSTOMER </span>
								<!--  <input style="width:19px;  height:19px;" id='see-me' name="businessType" type='radio'  value="CUSTOMER"/> <span class="or1"> CUSTOMER </span> -->
							</div>
						</div>
					</div>


					<div class="row form-group">
						<div class="row">
							<div id="London" style="width: 100%;">

								<div class="col-lg-12">
									<label>Business Type</label> <select class="form-control"
										id="businessType" name="businessType"
										style="height: 35px; margin-bottom: 10px;" required>
										<option value="SELECT">SELECT</option>
										<option value="MANUFACTURER">MANUFACTURER</option>
										<option value="DISTRIBUTOR">DISTRIBUTOR</option>
										<option value="RETAILER">RETAILER</option>

									</select>
								</div>

								<div class="col-lg-6">
									<label>Business name</label> <input type="text"
										class="form-control" id="businessName" name="businessName"
										placeholder="Enter Business name" required>
								</div>


								<div class="col-lg-6">
									<label>Gst No</label> <input type="text" class="form-control"
										id="gstNo" name="gstNo" placeholder="Enter Gst No" required>
								</div>

							</div>
						</div>
					</div>


					<div class="row form-group">
						<div class="row">
							<div class="col-lg-6">
								<label>First Name</label> <input type="text"
									class="form-control" id="firstName" name="firstName"
									placeholder="Your First Name" required>
							</div>

							<div class="col-lg-6">
								<label>Last Name</label> <input type="text" class="form-control"
									id="lastName" name="lastName" placeholder="Your Last Name"
									required>
							</div>
						</div>
					</div>

					<div class="row form-group">
						<div class="row">
							<div class="col-lg-6">
								<label>Email ID</label> <input type="text" class="form-control"
									id="emailId" name="emailId" placeholder="Enter Email Id"
									required>
							</div>

							<div class="col-lg-6" style="margin-top: 10px;">
								<label>Password</label> <input type="Password"
									class="form-contro" id="password" name="password"
									placeholder="Enter Password" required>
							</div>
						</div>
					</div>


					<div class="row form-group">
						<div class="row">
							<div class="col-lg-6">
								<label>Mobile</label> <input type="text" class="form-control"
									id="mobileNo" name="mobileNo" placeholder="Enter Mobile No"
									required>
							</div>

							<div class="col-lg-6">
								<label>Pincode</label> <input type="text" class="form-control"
									id="pincode" name="pincode"
									onchange="getPincodeDets(this.value)"
									placeholder="Enter Pincode" required>
							</div>
						</div>
					</div>

					<div class="row form-group">
						<div class="row">
							<div class="col-lg-6">
								<label>City</label> <input type="text" name="city"
									class="form-control" id="city" placeholder="Enter Your City"
									required readonly="readonly">

							</div>

							<div class="col-lg-6">
								<label>District</label> <input type="text" name="district"
									class="form-control" id="district"
									placeholder="Enter Your district" required readonly="readonly">

							</div>
						</div>
					</div>

					<div class="row form-group">
						<div class="row">

							<div class="col-lg-6">
								<label>State</label> <input type="text" name="state"
									class="form-control" id="state" placeholder="Enter Your state"
									required readonly="readonly"> <input type="hidden"
									name="pincodedata" class="form-control" id="pincodedata">

							</div>

							<div class="col-lg-6"></div>

						</div>
					</div>



					<div class="row form-group">
						<div class="row">
							<div class="col-lg-4"></div>
							<div class="col-lg-5">
								<button type="submit" class="btn btn-success btn-block"
									id="one3">Regester</button>
							</div>
							<div class="col-lg-4"></div>
						</div>
					</div>

				</form>

				

			</div>
			<div class="col-md-3"></div>
		</div>
		<div class="clearfix"></div>
		<!--============ End login section ===========-->
		<div class="col-lg-12">
			<p>
				<br>
				<br>
			</p>
		</div>
		<!--======= end Services section =========-->

		<!--======= Slider section =========-->

		<footer class="footer">
			<div class="footer_background"
				style="background-image: url(images/footer_background.png)"></div>
			<div class="container">
				<div class="row footer_row">
					<div class="col">
						<div class="footer_content">
							<div class="row">
								<div class="col-lg-3 footer_col">

									<div class="footer_section footer_about">
										<div class="footer_logo_container">
											<a href="#">
												<div class="footer_logo_text">
													Rx<span>Mitra</span>
												</div>
											</a>
										</div>
										<div class="footer_about_text">
											<p>Lorem ipsum dolor sit ametium, consectetur adipiscing
												elit.</p>
										</div>
										<div class="footer_social">
											<ul>
												<li><a href="#"><i class="fa fa-facebook"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-google-plus"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-instagram"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-twitter"
														aria-hidden="true"></i></a></li>
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
												<li><i class="fa fa-phone"></i> : 040-4851 0133</li>
												<li><span><i class="fa fa-map-marker"></i>&nbsp;
														Unit - 306, Level 3,<br> &nbsp; &nbsp; Annapurua
														Block,<br> &nbsp; &nbsp; Adhitya Enclave,Ameerprt<br>
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
						<div
							class="copyright d-flex flex-lg-row flex-column align-items-center justify-content-start">
							<div class="cr_text">
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;
								<script>document.write(new Date().getFullYear());</script>
								All rights reserved .
							</div>
							<div class="ml-lg-auto cr_links">
								<ul class="cr_list">
									<p style="color: #e2e0e0;">
										Devloped & Maintained By <a href="http://kosurisoft.com/"
											target="_blank"
											style="background: #565353; color: #fff; font-size: 15px; text-decoration: none;">
											kosurisoft.com</a>
									</p>
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

	<script>
$(function() {
	  $('#colorselector').change(function(){
	    $('.colors').hide();
	    $('#' + $(this).val()).show();
	  });
	});
</script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/custom.js"></script>
	<script src="js/home.js"></script>

	<!-- <script language="javascript">
    populateCountries("country", "state");
    </script>
	<script language="javascript">
    populateCountries("state", "district");
    </script> -->
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
</body>
</html>