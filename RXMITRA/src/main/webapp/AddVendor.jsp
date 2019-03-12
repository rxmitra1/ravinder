<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isErrorPage="true" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>RX mitra </title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
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
	if(document.getElementById("tinno").value.length !=11 )
	{
		alert("Please enter 11 digits in TINno.");
		document.getElementById("tinno").focus();
		return false;
	}

if(document.getElementById("tinno").value.length >=0 ){
	    
	    if(document.getElementById("tinno").value.length==0){
	     
	    }else{
	      var pan=document.getElementById("tinno").value;alert(pan);
	     // var panPat = \d{2}[A-Z]{5}\d{4}[A-Z]{1}\d[Z]{1}[A-Z\d]{1};
	      if(!panPat.test(pan)){
	       alert("Invalid GSTIN Code..Please Check it.."+pan);
	       document.getElementById("tinno").focus();
	       return false;
	      }else{}
	    }
	     }
	if(document.getElementById("phoneno1").value.length==0 )
	{
	}
	else if(document.getElementById("phoneno1").value.length !=10 )
	{
		alert("Please enter 10 digits in MobileNo.");
		document.getElementById("phoneno1").focus();
		return false;
	}
	if(document.getElementById("phoneno2").value.length==0 )
	{
	}
	else if(document.getElementById("phoneno2").value.length !=11 )
	{
		alert("EPlease enter 11 digits in LandlineNo.");
		document.getElementById("phoneno2").focus();
		return false;
	}
	
}
function addNumbers()
{
	var amount=document.getElementById("totalvalueofgoods").value;
	var vatpercent=document.getElementById("vatpercent").value;
	var discount=document.getElementById("discounts").value;
	var netpayable=document.getElementById("netpayable").value;
	netpayable=((amount*vatpercent/100)-discount)+parseInt(amount);
	document.getElementById("netpayable").value = netpayable;
}
</script>
<style>
label {
    display: inline-block;
    max-width: 100%;
    margin-bottom: 5px;
    font-weight: normal !important;
    font-size: 15px;
    color: #6f6666;
}
.re{
background: #5aa320;
    color: #fff !important;
    border: 1px solid #5aa320;
    border-radius: 4px;
    text-align: center;
    font-size: 21px !important;

}
#re1{align-content: padding: 19px 29px;
    margin: 12px 15px 14px 10px;
    }
</style>
</head>
<body>

	<section style="background-color:#febf10; height:3px;"></section>
	<jsp:include page="./Employee_top.jsp" />

	<div class="page-container">
		<div class="sidebar-menu">
			<jsp:include page="./EmployeeMenu.jsp" /></div>
		<div class="rightsidebar-menu"></div>
		<div class="left-content">
			<div class="mother-grid-inner"></div>
			<div class="inner-block">
				<div class="inbox">
					<div class="profile_details"></div>
					<div class="col-md-12 mailbox-content  tab-content tab-content-in"  id="re1">
							<div class="">
								<%
									String employeeid = (String) session.getAttribute("referenceid");
									// String shopid=new ShopDetails().getEmployeeShopDetails(employeeid).getSHOP_ID();
								%>
								
					<p class="re"> ADD VENDOR</p>				
			<div class="col-md-8">
			<form action="/RXMITRA/addProcess" method="post" onsubmit="return validateForm()">
				<%
													String message = "";
													try {
														message = request.getAttribute("message").toString();
														if (message == null) {
														} else {
															out.println("<font color='red'>" + message + "</font>");
														}
													} catch (Exception e) {
													}
												%>						
			<div class="row">						
		    <div class="form-group col-md-6 col-sm-6">
            <label for="name">VENDOR TYPE</label>
            <input size="57" type="text" class="form-control input-sm" name="vendorType" />
            </div>
            
            <div class="form-group col-md-6 col-sm-6">
            <label for="name">VENDOR NAME</label>
            <input size="57" type="text" class="form-control input-sm" name="vendorName" />
            </div>
            
            </div>
            
           <div class="row">						
		    <div class="form-group col-md-6 col-sm-6">
            <label for="name">MOBILE</label>
             <input type="text" class="form-control input-sm" name="phoneNo1" id="phoneNo1" onkeypress="CheckNumeric(event)" />
            </div>
            
            <div class="form-group col-md-6 col-sm-6">
            <label for="name">LAND LINE NO</label>
             <input type="text" class="form-control input-sm" name="phoneNo2" id="phoneNo2" onkeypress="CheckNumeric(event)" />
            </div>
           
            </div>
            
            <div class="row">						
		     <div class="form-group col-md-6 col-sm-6">
            <label for="name">EMAIL</label>
             <input type="text" class="form-control input-sm" name="phoneNo1" id="phoneNo1" onkeypress="CheckNumeric(event)" />
            </div>
            
            <div class="form-group col-md-6 col-sm-6">
            <label for="name">GST IN NO</label>
            <input type="text" class="form-control input-sm" name="tinNo" id="tinNo" required /> <input type="hidden" name="shopId" value="" />
            </div>
            
            </div>
            
            
            <div class="row">						
		    <div class="form-group col-md-6 col-sm-6">
            <label for="name">LICENSE NO</label>
            <input type="text" class="form-control input-sm" name="licenseNo" id="licenseNo" />
            </div>
            
            <div class="form-group col-md-6 col-sm-6">
            <label for="name">PAN CARD NO</label>
            <input type="text" class="form-control input-sm" name="panNo" id="panNo" />
            </div>
            
            </div>
            
            
            <div class="row">						
		    
            <div class="form-group col-md-6 col-sm-6">
            <label for="name">DISTRICT</label>
            <input type="text" class="form-control input-sm"
											name="registrationDate"  size="50"  />
            </div>
            
            <div class="form-group col-md-6 col-sm-6">
            <label for="name">STATE</label>
            
            <input type="text" class="form-control input-sm"
											name="pincode" size="50"
											/>
            </div>
            </div>
            
            <div class="row">						
            <div class="form-group col-md-6 col-sm-6">
            <label for="name">ADDRESS</label>
            <textarea cols="59" rows="3" class="form-control input-sm" name="address" id="address"></textarea>
            </div>
            
            <div class="form-group col-md-6 col-sm-6">
            <label for="name">PINCODE</label>
            <input size="57" type="text" class="form-control input-sm" name="pinCode" id="pinCode"/>
            </div>
            </div>
            
            <p style="text-align: center; font-weight: 700; padding-top: 10px; font-size: 22px"><span
												style="color: #fc8213;"/>BANK DETAILS</p>
            
            
            <div class="row">						
		    <div class="form-group col-md-6 col-sm-6">
            <label for="name">BANK NAME</label>
            <input type="text" class="form-control input-sm"  name="bankName" id="bankName" />
            </div>
            
            <div class="form-group col-md-6 col-sm-6">
            <label for="name">A/C NO</label>
             <input type="text" class="form-control input-sm"
						name="accountNo" id="accountNo" maxlength="22" onkeypress="CheckNumeric(event)" />
            </div>
            
            </div>
            
            
            <div class="row">						
		    <div class="form-group col-md-6 col-sm-6">
            <label for="name">I&nbsp;.F&nbsp;.S&nbsp;.C&nbsp;CODE</label>
               <input type="text" class="form-control input-sm" name="ifscCode" id="ifscCode" maxlength="11" />

            </div>
            
            </div>
            
            <div class="row">						
		    <div class="form-group col-md-4 col-sm-4"></div>
           <div class="form-group col-md-4 col-sm-4">
           <input type="submit" class="btn btn-success btn-block" name="submit" value="ADD VENDOR" />
           </div>
           <div class="form-group col-md-4 col-sm-4"></div>            
            </div>
		 		
			</form>
			</div>
							
			<div class="col-md-4">
							
			</div>
		</div>						
								
						
							</div>


						</div>
				
				<div class="clearfix"></div>
			</div>

			<div class="copyrights">
				<p>
					Copyright © 2019 Kosuri RxMitra. All Rights Reserved | Designed by <a
						href="#" target="_blank">Kosuri Soft Labs Pvt Ltd</a>
				</p>
			</div>
		</div>
		<!--COPY rights end here-->



		<!--slider menu-->

		<div class="clearfix"></div>
	</div>
	<!--slide bar menu end here-->
	<script>
var toggle = true;
            
$(".sidebar-icon").click(function() {                
  if (toggle)
  {
    $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
    $("#menu span").css({"position":"absolute"});
  }
  else
  {
    $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
    setTimeout(function() {
      $("#menu span").css({"position":"relative"});
    }, 400);
  }               
                toggle = !toggle;
            });
</script>
	<!--scrolling js-->
	<script src="dashboard-js/js/jquery.nicescroll.js"></script>
	<script src="dashboard-js/js/scripts.js"></script>
	<!--//scrolling js-->
	<script src="dashboard-js/js/bootstrap.js"> </script>

	<!-- mother grid end here-->
</body>
</html>