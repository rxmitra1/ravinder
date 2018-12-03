
<%@ page language="java" import="com.rxmitra.bean.*, java.util.*"
	contentType="text/html; charset=ISO-8859-1" isErrorPage="true"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>RX mitra </title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="./css/style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
	function selectCategory(str) {
		var category = document.getElementById("category").value;
		if (category == "") {

		} else {
			location.href = "ViewVendorToAddProducts.jsp?category=" + category;
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

								
								      <div class="panel panel-orange" style="padding: 2px 13px;">
							<div class="">
								<%
									String shopid = (String) request.getParameter("shopid");
								%>

								<form action="./displayVendorProducts" method="get">
									<div colspan="12" style="padding: 5px;background: #5aa320;color:#fff;text-align: center;font-size: 20px;border-bottom: 2px solid #febf10;">
	                                 <tr>
	                                   <th >VIEW PRODUCTS</th>
	                                 </tr>
	                                 </div>
	                                 <br />

									
											<div class="col-md-12" id="one">
												<div class="form-group col-md-4 col-sm-4">
													<label for="pincode">VENDOR NAME</label> <input
														type="text" class="form-control" name="vendorname"
														id="vendorname" value="${vendorname }" placeholder="Enter Your Vendor Name" />
														<input type="hidden" name="pageid" id="pageid" value="1" />
												</div>

												

												<div class="col-md-1"></div>

												<div class="col-md-2" id="one">
													<div class="form-group">
														<label for="firstname" style="color: #fff;">EN </label>
														<button type="submit" class="btn btn-success btn-block">SEARCH</button>
                                                         <br />
                                                         <br />
													</div>
												</div>
											</div>
								</form>
							</div>
						</div>
	                                
								<table class="table table-bordered">
									<tr>
										<td colspan="8"
											style="padding: 5px;background: #5aa320;color:#fff;text-align: center;font-size: 20px;border-bottom: 2px solid #febf10;"><span>VENDOR
												PRODUCT DETAILS</span></td>
									</tr>
									<tr>
										<td align="center" style="font-weight: 900;">VEN PROD ID
											</td>
										<td align="center" style="font-weight: 900;">PRODUCT
											COMPANY</td>
										<td align="center" style="font-weight: 900;">SPECIAL NAME</td>
										<td align="center" style="font-weight: 900;">TYPE</td>
										<td align="center" style="font-weight: 900;">WEIGHT</td>
										<td align="center" style="font-weight: 900;">ITEM MASS</td>
										<td align="center" style="font-weight: 900;">SKUID</td>
										<td align="center" style="font-weight: 900;">PRODUCT
											IMAGE</td>
									</tr>


									<c:forEach var="vendorProductList" items="${vendorProductList}">
										<tr>
											<td align="center">${vendorProductList.vendorProductId }</td>
											<td align="center">${vendorProductList.companyName }</td>
											<td align="center">${vendorProductList.specialName }</td>
											<td align="center">${vendorProductList.type }</td>
											<td align="center">${vendorProductList.weight }</td>
											<td align="center">${vendorProductList.itemMass }</td>
											<td align="center">${vendorProductList.skuid }</td>
											<td align="center"><img
												src="data:image/png;base64,${vendorProductList.photo }"
												alt="No image" class="img-responsive" width="75" height="75"></img></td>
										</tr>

									</c:forEach>


								</table>

								Pages <a href="/RXMITRA/displayVendorProducts?pageid=1">1</a> <a
									href="/RXMITRA/displayVendorProducts?pageid=2">2</a> <a
									href="/RXMITRA/displayVendorProducts?pageid=3">3</a> <a
									href="/RXMITRA/displayVendorProducts?pageid=4">4</a> <a
									href="/RXMITRA/displayVendorProducts?pageid=5">5</a>
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
