<%@ page language="java" isELIgnored="false"
	import="com.rxmitra.dao.*,com.rxmitra.bean.*,com.rxmitra.bean.*,com.rxmitra.service.*,java.util.*"
	contentType="text/html; charset=ISO-8859-1" isErrorPage="true"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Rythu mitra | Employee</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="./resources/css/style.css" rel="stylesheet" type="text/css" />
<style>
.tr1{
    text-align: center;
    background: #5aa320;
    border: 1px solid #5aa320;
    border-radius: 3px;
    color: #fff;
    font-size: 22px;
    padding: 3px 0;
}
label{
  align-content:font-size: 15px;
    font-family: sans-serif;
    font-weight: normal !important;
    }
</style>
<script type="text/javascript">
		function getSubCategory(str)
		{
		if (str=="")
		  {
		  document.getElementById("brandName").innerHTML="";
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
		    document.getElementById("brandName").innerHTML=xmlhttp.responseText;
		    }
		  }
		xmlhttp.open("GET","./getAdminBrandsInRetailer?category="+str,true);
		xmlhttp.send();
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
					
					<div  align="center">
			            <font style='color: red; font-weight: 600; font-size: medium;'>${selectNameErroe}</font>
			              <font style='color: red; font-weight: 600; font-size: medium;'>${valiNameError}</font></div>
					
					<div class="col-md-12 mailbox-content  tab-content tab-content-in" style="margin: 19px 13px;">


						<div style="padding: 2px 13px;">
							<div class="">
								
								<form action="./SearchByDistributor" method="post">
									<div class="tr1">
	                                 
	                                   <span>SEARCH BY DISTRIBUTOR</span>
	                                 
	                                 </div>
	                                 <br />

									
											<div class="col-md-12" id="one">
											 
											 <div class = "form-group col-md-3 col-sm-3">
										      <label for="months">CATEGORY:</label>     
										      <select class="form-control input-sm" id="category"  name="category" onchange="getSubCategory(this.value)">
											  <option>---Select Category---</option>
											  <option value="All">All</option>
											  <c:forEach items="${adminBrands }" var="adminBrands">
											  <option value="${adminBrands }">${adminBrands }</option>
											  </c:forEach>
											  
										      </select>
										      </div>
										      
											 
											  <div class = "form-group col-md-3 col-sm-3">
										      <label for="months">BRAND :</label>     
										      <select class="form-control input-sm" id="brandName" name="brandName">
											  <option>Select Brand</option>
											  </select>
										      </div>
										      
												 <div class = "form-group col-md-3 col-sm-3">
										      <label for="months">STATE :</label>     
										      <select class="form-control input-sm" id="state" name="state">
											  <option>Select Sate</option>
											  <option value="ANDRA PRADESH">ANDRA PRADESH</option>
											 
										      </select>
										      </div>

												

												<div class="col-md-2" id="one">
													<div class="form-group">
														<label for="firstname" style="color: #fff;">EN </label>
														<input type="submit" class="btn btn-success btn-block" value="SEARCH"/>

													</div>
												</div>
											</div>
								</form>
								
								
								
								<table class="table table-bordered">
  <tr>
	 <th colspan="10" style="padding: 5px;background: #5aa320;color:#fff;text-align: center;font-size: 20px;border-bottom: 2px solid #febf10;">LIST OF DISTRIBUTORS</th>
	</tr>
<tr>
<td align="center" style="font-weight: 900;">BUSINESS NAME</td>
<td align="center"  style="font-weight: 900;">EMAIL</td>
<td align="center"  style="font-weight: 900;">MOBILENO</td>
<td align="center"  style="font-weight: 900;">ADDRESS</td>

</tr>

<c:forEach items="${distributorDetails }" var="distributorDetails">
<tr>
<td align="center"><c:out value="${ distributorDetails.businessName }"/></td>
<td align="center"><c:out value="${ distributorDetails.emailId}"/></td>
<td align="center"><c:out value="${ distributorDetails.mobileNo}"/></td>
<td align="center"><c:out value="${ distributorDetails.city}"/>,
<c:out value="${ distributorDetails.district}"/>,<c:out value="${ distributorDetails.state}"/>,<c:out value="${ distributorDetails.pincode}"/>.</td>
<%-- <td align="center"><c:out value="${ vendor.CST_NO}"/></td> --%>



</tr>
</c:forEach>
 </table>
								
								
								

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