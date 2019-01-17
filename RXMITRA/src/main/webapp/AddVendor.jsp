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
					<div class="col-md-12 mailbox-content  tab-content tab-content-in">


						<div class="panel panel-orange" style="padding: 2px 13px;">
							<div class="">
								<%
									String employeeid = (String) session.getAttribute("referenceid");
									// String shopid=new ShopDetails().getEmployeeShopDetails(employeeid).getSHOP_ID();
								%>
								<form action="/RXMITRA/addProcess" method="post"
									onsubmit="return validateForm()">
									<table class="table table-bordered">
										<tr>
											<th colspan="10"
												style="padding: 5px; background: #5aa320; color: #fff; text-align: center; font-size: 20px; border-bottom: 2px solid #febf10;">VENDOR
												DETAILS</th>
										</tr>
										<tr>
											<td colspan="4" align="center">
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
											</td>
										</tr>
										<tr>
											<td style="font-weight: 500;">VENDOR TYPE<font color=red>*</font></td>
											<td colspan="3"><input size="57" type="text"
												class="form-control" name="vendorType" /></td>
										</tr>
										<tr>
											<td style="font-weight: 500;">VENDOR NAME<font color=red>*</font></td>
											<td colspan="3"><input size="57" type="text"
												class="form-control" name="vendorName" /></td>
										</tr>
										<tr>
											<td style="font-weight: 500;">ADDRESS<font color=red>*</font></td>
											<td colspan="4"><textarea cols="59" rows="3"
													class="form-control" name="address" id="address"></textarea>
											</td>
							
											
											
											
										
										</tr>
										<tr>
											<td style="font-weight: 500;">PINCODE<font color=red>*</font></td>
											<td colspan="3"><textarea cols="59" rows="1"
													class="form-control" name="pinCode" id="pinCode"></textarea>
											</td>
											</tr>
										<tr>
										<td style="font-weight: 500;">DISTRICT<font color=red>*</font></td>
											<td colspan="3"><textarea cols="59" rows="1"
													class="form-control" name="district" id="district"></textarea>
											</td>
											</tr>
											<tr>
											<td style="font-weight: 500;">STATE<font color=red>*</font></td>
											<td colspan="3"><textarea cols="59" rows="1"
													class="form-control" name="state" id="state"></textarea>
											</td>
											</tr>
											
										<tr>
											<td style="font-weight: 500;">GST IN NO.<font color=red>*</font></td>
											<td><input type="text" class="form-control"
												name="tinNo" id="tinNo" required /> <input type="hidden"
												name="shopId" value="" /></td>
											<td style="font-weight: 500;">LICENSE NO.</td>
											<td><input type="text" class="form-control"
												name="licenseNo" id="licenseNo" /></td>
										</tr>
										<tr>
											<td style="font-weight: 500;">PAN CARD NO.</td>
											<td><input type="text" class="form-control"
												name="panNo" id="panNo" /></td>
										</tr>
										<tr>
											<td style="font-weight: 500;">MOBILE</td>
											<td><input type="text" class="form-control"
												name="phoneNo1" id="phoneNo1"
												onkeypress="CheckNumeric(event)" /></td>
											<td style="font-weight: 500;">LAND LINE NO.</td>
											<td><input type="text" class="form-control"
												name="phoneNo2" id="phoneNo2"
												onkeypress="CheckNumeric(event)" /></td>
										</tr>
										<tr>
											<td style="font-weight: 500;">EMAIL</td>
											<td><input type="text" class="form-control"
												name="email" id="email" /></td>
										</tr>
										<tr>
											<td colspan="6"
												style="text-align: center; font-weight: 700; padding-top: 10px; font-size: 22px"><span
												style="color: #fc8213;">BANK DETAILS</span></td>
										</tr>
										<tr>
											<td style="font-weight: 500;">BANK NAME</td>
											 <td><input type="text" class="form-control"
												name="bankName" id="bankName" /></td>
												
											<td style="font-weight: 500;">A/C NO</td>
											<td><input type="text" class="form-control"
												name="accountNo" id="accountNo" maxlength="22"
												onkeypress="CheckNumeric(event)" /></td>
										</tr>
										<tr>
											<td style="font-weight: 500;">I&nbsp;.F&nbsp;.S&nbsp;.C&nbsp;CODE
											</td>
											<td><input type="text" class="form-control"
												name="ifscCode" id="ifscCode" maxlength="11" /></td>
											<td>&nbsp;</td>
										</tr>
										<tr align="center">
											<td colspan="4"><input type="submit"
												class="btn btn-success" name="submit" value="ADD VENDOR" /></td>
										</tr>
									</table>
								</form>
							</div>


						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>

			<div class="copyrights">
				<p>
					© 2017 Kosuri Rythu Mitra. All Rights Reserved | Designed by <a
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