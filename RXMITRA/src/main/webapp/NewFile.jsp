<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
</head>
<body>

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
	<option>Distributor</option>
	<option>Manufacturer</option>
	<option>Retailer</option>
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

<script language="javascript">
    populateCountries("country", "state");
    </script>
	<script language="javascript">
    populateCountries("state", "district");
    </script>
</body>
</html>