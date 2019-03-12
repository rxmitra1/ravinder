<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isErrorPage="true" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ page
	import="com.rxmitra.utils.*,com.rxmitra.dao.*,com.rxmitra.service.*,com.rxmitra.bean.*,java.util.*"
	isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>add Emplay</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="./css/style.css" rel="stylesheet" type="text/css" />


<style>
label {
    color: #5aa320 !important;
    font-size: 17px !important;
    font-weight: normal !important;
}
#one3 {
    font-size: 20px;
    line-height:25px;
    background: #6fab29;
}

.box{ 
    font-size: 23px;
    color: #5aa320;
    text-decoration: underline;
        text-align: center;
    }
</style>
</head>
<body>

	<section style="background-color:#febf10; height:3px;"></section>
	<%-- <jsp:include page="./Employee_top.jsp" /> --%>

	<div class="page-container">

		<div class="sidebar-menu">
			<jsp:include page="./EmployeeMenu.jsp">
				
			</jsp:include></div>

		<div class="left-content">
			<div class="mother-grid-inner"></div>

			<div class="inner-block">
				<div class="inbox">
					<div class="profile_details"></div>
					<div class="col-md-12 mailbox-content  tab-content tab-content-in">


						<div class="">
							<jsp:include page="./User.jsp"></jsp:include>



      <div class="row">
      <div align="center">
      <font style='color: blue; font-weight: 600; font-size: medium;'>${regSuccess}</font>
      </div>
    <form action="./employeeRegister" method="post">
    <div class="col-md-8" id="login_pag">
    <div class="">
    <h4 class="box"> Employee Details</h4>
                 <br>
 
	  
	   <div class="form-group col-lg-6">
	   <label>Employee Name</label>
	   <input type="text" class="form-control" id="empName" name="empName"  value="${employeeDetails.empName }" placeholder="Your Employee Name" required/>
	   </div>
	   
	   <div class="form-group col-lg-6">
	   <label>Employee Surname</label>
	   <input type="text" class="form-control" id="empSurName" name="empSurName" value="${employeeDetails.empSurName }" placeholder="Your Employee Surname" required/>
	   </div>
	   
	   <div class="form-group col-lg-6">
	  <label>Email ID</label>
	   <input type="text" class="form-control" id="emailId" name="emailId" value="${employeeDetails.emailId }" placeholder="Enter Email Id" required/>
	   </div>
	   
	   <div class="form-group col-lg-6">
	   <label>Mobile</label>
	   <input type="text" class="form-control" id="mobileNo" name="mobileNo" value="${employeeDetails.mobileNo }" placeholder="Enter Mobile No" required/>
	   </div>
	   
	   <div class="form-group col-lg-6">
	    <label>Education</label>
	   <input type="text" class="form-control" id="Education" name="Education" value="${employeeDetails.education }" placeholder="Enter Education" required/>
	   </div>
	   
	    <div class="form-group col-lg-6">
	    <label>Completed Year</label>
	    <input type="text" class="form-control" id="completedYear " name="completedYear" value="${employeeDetails.completedYear }" placeholder="Enter Completed Year" required/>
	     </div>
	  
	 
	   
	   
	   
	
	
	   <div class="row form-group">
	   <p><br/><br/></p>
	   <div class="row">
	   <div class="col-lg-4"></div>
	   <div class="col-lg-4">
	    <p><br/></p>
	   <button type="submit" class="btn btn-success btn-block" id="one3">Regester</button>
	   </div>
	   <div class="col-lg-4"></div>
	   </div>
	   </div>
	   
	  
	 <p><br/><br/></p>
      </div>
      </div>
      </form>
      
      <div class="col-md-12">
      
      </div>
      
      	<div class="clearfix"></div>
<div class="col-md-4"></div>  
 </div>





							
						</div>
					</div>
					<div class="clearfix"></div>

				</div>
			</div>

			<div class="copyrights">
				<p>
					copyright © 2019 Kosuri RxMitra. All Rights Reserved | Design by
					<a href="#" target="_blank">Kosuri Soft Labs Pvt Ltd</a>
				</p>
			</div>
		</div>
		<!--COPY rights end here-->


		<script language="javascript">
			populateCountries("country", "state");
		</script>
		<script language="javascript">
			populateCountries("country1", "state1");
		</script>
		<!--slider menu-->

		<div class="clearfix"></div>
	</div>
	<!--slide bar menu end here-->
	<script>
		var toggle = true;

		$(".sidebar-icon").click(
				function() {
					if (toggle) {
						$(".page-container").addClass("sidebar-collapsed")
								.removeClass("sidebar-collapsed-back");
						$("#menu span").css({
							"position" : "absolute"
						});
					} else {
						$(".page-container").removeClass("sidebar-collapsed")
								.addClass("sidebar-collapsed-back");
						setTimeout(function() {
							$("#menu span").css({
								"position" : "relative"
							});
						}, 400);
					}
					toggle = !toggle;
				});
	</script>
	<!--scrolling js-->
	<script src="dashboard-js/js/jquery.nicescroll.js"></script>
	<script src="dashboard-js/js/scripts.js"></script>
	<!--//scrolling js-->
	<script src="dashboard-js/js/bootstrap.js">
		
	</script>

	<!-- mother grid end here-->
</body>
</html>