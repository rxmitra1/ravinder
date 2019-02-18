<%@ page language="java" isELIgnored="false"
	import="com.rxmitra.utils.*,com.rxmitra.service.*,com.rxmitra.dao.*,com.rxmitra.bean.*,java.util.*"
	contentType="text/html; charset=ISO-8859-1" isErrorPage="true"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>RX mitra </title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="./css/style.css" rel="stylesheet" type="text/css" />
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
	if(document.getElementById("mobile").value.length !=10 )
	{
		alert("Please enter 10 digits only");
		document.getElementById("mobile").focus();
		return false;
	}
	
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

	<%
		String from = null;
		try {
			from = request.getParameter("from");
			if (from == null) {
				from = request.getAttribute("from").toString();
			}
		} catch (Exception e) {

		}
	%>

	<section style="background-color:#febf10; height:3px;"></section>
	<jsp:include page="./Employee_top.jsp" />

	<div class="page-container">

		<div class="sidebar-menu">
			<jsp:include page="./EmployeeMenu.jsp">
				<jsp:param value="<%=from%>" name="from" />
			</jsp:include></div>
		<div class="rightsidebar-menu"></div>
		<div class="left-content">
			<div class="mother-grid-inner"></div>

			<div class="inner-block">
				<div class="inbox">
					<div class="profile_details"></div>
					<div class="col-md-12 mailbox-content  tab-content tab-content-in" id="re1">


						<div class="">
							<jsp:include page="./User.jsp"></jsp:include>
							
							<div align="center">
								<font color="blue" style="">${updateSuccess }</font>
							</div>
							




<p class="re">UPDATE PROFILE</p>	
             <div class="col-md-8">
							<form action="./updateUserProfile"
								onsubmit="return validateForm()" method="post">
	    			
									
			<div class="row">						
		    <div class="form-group col-md-6 col-sm-6">
            <label for="name">USER NAME</label>
            <input type="text" class="form-control input-sm" name="firstName" value="${userRegistration.firstName }" size="50" />
            <input type="hidden" name="registrationId" required
											value="${userRegistration.registrationId }" maxlength="30" />
										<input type="hidden" name="password" required
											value="${userRegistration.password }" maxlength="30" />
										<input type="hidden" name="status" required
											value="${userRegistration.status }" maxlength="30" />
										<input type="hidden" name="verified" required
											value="${userRegistration.verified }" maxlength="30" />
										<input type="hidden" value="<%=from%>" name="from" id="from" />
            </div>
            
            <div class="form-group col-md-6 col-sm-6">
            <label for="name">LAST NAME</label>
            <input type="text" class="form-control input-sm" name="lastName" value="${userRegistration.lastName }" size="50" />
            </div>
            
            </div>
            
            
            <div class="row">						
            <div class="form-group col-md-6 col-sm-6">
            <label for="name">PHONE NO</label>
            <input type="text" class="form-control input-sm" name="mobileNo" value="${userRegistration.mobileNo }" size="50"  />
            </div>
            
            <div class="form-group col-md-6 col-sm-6">
            <label for="name">EMAIL</label>
            <input type="text" class="form-control input-sm" name="emailId" value="${userRegistration.emailId }" size="50" readonly="readonly" />
            </div>
            
            </div>
            
            
            <div class="row">						
		    
            
            <div class="form-group col-md-6 col-sm-6">
            <label for="name">REGISTRATION DATE</label>
            <input type="text" class="form-control input-sm"
											name="registrationDate" value="${userRegistration.registrationDate }" size="50" />
            </div>
            
            <div class="form-group col-md-6 col-sm-6">
            <label for="name">PINCODE</label>
            <input type="text" class="form-control input-sm"
											name="pincode" value="${userRegistration.pincode }" size="50"
											 />
            </div>
            </div>
            
            
            <div class="row">						
		    <div class="form-group col-md-6 col-sm-6">
            <label for="name">STATE</label>
            <input type="text" class="form-control input-sm" name="state" value="${userRegistration.state }" size="50" />
            </div>
            
            <div class="form-group col-md-6 col-sm-6">
            <label for="name">DISTRICT</label>
            <input type="text" class="form-control input-sm" name="district" value="${userRegistration.district }" size="50" />
            </div>
            
            
            </div>
            
            
             <div class="row">						
		    <div class="form-group col-md-6 col-sm-6">
            <label for="name">BUSINESS NAME</label>
            <input type="text" class="form-control input-sm"
											name="businessName" value="${userRegistration.businessName }" size="50"  />
            </div>
            
            <div class="form-group col-md-6 col-sm-6">
            <label for="name">BUSINESS TYPE</label>
            <input type="text" class="form-control input-sm" name="businessType" value="${userRegistration.businessType }" size="50" />
            </div>
            
           
            </div>
            
            <div class="row">						
		    <div class="form-group col-md-6 col-sm-6">
            <label for="name">GST NO</label>
            <input type="text" class="form-control input-sm" name="gstNo" value="${userRegistration.gstNo }" size="50"  />
            </div>
           
            </div>
		 				
		 				
		 				<div class="row">						
		    <div class="form-group col-md-4 col-sm-4">
            </div>
            
            <div class="form-group col-md-4 col-sm-4">
            
            <input type="submit"
											class="btn btn-success" value="UPDATE"
											style="width: 100%; font-weight: 500; font-size: 15px" />
            </div>
            
            <div class="form-group col-md-4 col-sm-4">
            </div>
           
            </div>
		 				
		 				
		 							   

								

							</form>
							</div>
							
							<div class="col-md-4">
							
							</div>













								
						</div>
					</div>
					<div class="clearfix"></div>

				</div>
			</div>

			<div class="copyrights">
				<p>
					© 2017 Kosur Rythu Mitra. All Rights Reserved | Design by <a
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