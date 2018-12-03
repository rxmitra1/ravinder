<%@ page language="java"
	import="com.rxmitra.dao.*,com.rxmitra.bean.*,com.rxmitra.bean.*,com.rxmitra.service.*,java.util.*"
	contentType="text/html; charset=ISO-8859-1" isErrorPage="true"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>RX mitra </title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="css/style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
	function selectCategory(str) {
		var category = document.getElementById("category").value;
		if (category == "") {

		} else {

			location.href ='vendorProductFields?category= '+ category+'&vendorid='+${vendorDetails.vendorId };
		}
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
								<tr>
									<td colspan="4" align="center">
										<%
											String message = "";
											try {
												message = request.getAttribute("message").toString();
												if (message == null) {
												} else {
													out.println("<font color='blue'>" + message + "</font>");
												}
											} catch (Exception e) {
											}
											
										%>
									</td>
								</tr> 
								<table class="table table-bordered">
									<tr>
										<th colspan="10"
											style="padding: 5px; background: #5aa320; color: #fff; text-align: center; font-size: 20px; border-bottom: 2px solid #febf10;">VENDOR
											DETAILS</th>
									</tr>
									 

									<%-- <%
										String vendorid;
										vendorid = (String) request.getAttribute("vendorId");

										ArrayList<Product> alp = new ArrayList<Product>();
										Vendor v = new Vendor();
										v = (Vendor) session.getAttribute("vendordetails");

										Vendor vendorDetails = (Vendor) request.getAttribute("vendorDetails");
										request.setAttribute("vendorDetails", vendorDetails);
									%> 
									
									
 --%>                            
 <tr>
        <td><input type="hidden" name="vendorid" id="vendorid"
											value="${vendorDetails.vendorId }" /> </td></tr>
									<tr>
										<td style="font-weight: 500;">VENDOR NAME</td>
										<td colspan="3">${vendorDetails.vendorName}</td>
									</tr>
									<tr>
										<td style="font-weight: 500;">ADDRESS</td>
										
											<td colspan="3">${vendorDetails.address} </td>
									</tr>
									<tr>
										<td style="font-weight: 500;">GSTIN NO.</td>
										<td>${vendorDetails.tinNo}</td>
										<td style="font-weight: 500;">LICENSE NO.</td>
										<td>${vendorDetails.licenseNo}</td>
									</tr>
									<tr>
										<td style="font-weight: 500;">PAN NO.</td>
										<td>${vendorDetails.panNo}</td>
									</tr>
									<tr>
										<td style="font-weight: 500;">MOBILE</td>
										<td>${vendorDetails.phoneNo1}</td>
										<td style="font-weight: 500;">LAND NO.</td>
										<td>${vendorDetails.phoneNo2}</td>
									</tr>
									<tr>
										<td colspan="4"
											style="text-align: left; font-weight: 700; padding-top: 10px; font-size: 22px"><span
											style="color: #fc8213;">BANK DETAILS</span></td>
									</tr>
									<tr>
										<td style="font-weight: 500;">BANK NAME</td>
										<td>${vendorDetails.bankName}</td>
										<td style="font-weight: 500;">A/C NO</td>
										<td>${vendorDetails.accountNo}</td>
									</tr>
									<tr>
										<td style="font-weight: 500;">I&nbsp;.F&nbsp;.S&nbsp;.C&nbsp;CODE
										</td>
										<td>${vendorDetails.ifscCode}</td>
										<td colspan="2">&nbsp;</td>
									</tr>
								</table>

								<table class="table table-bordered">
									<tr>
										<td colspan="4"
											style="text-align: center; font-weight: 700; padding-top: 10px; font-size: 22px"><span
											style="color: #fc8213;">PRODUCT DETAILS</span></td>
									</tr>
									<tr>
										<td align="center" style="font-weight: 500;" class="col-md-3">CATEGORY</td>
										<td align="center"><select class="form-control"
											name="category" id="category"
											onchange="selectCategory(this);" class="col-md-3">
												<option value="">SELECT</option>
												<option value="TABLETS">TABLETS</option>
												<option value="CAPSULES">CAPSULES</option>
												<option value="TONICS">TONICS</option>
										</select></td>
										<td class="col-md-6" colspan="2"></td>

									</tr>
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