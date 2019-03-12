<%@ page language="java"
	import="com.rxmitra.dao.*,com.rxmitra.bean.*,com.rxmitra.bean.*,com.rxmitra.service.*,java.util.*"
	contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
	isErrorPage="true" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Rx mitra</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<link href="./resources/css/style.css" rel="stylesheet" type="text/css" />
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
									String skuid = (String) request.getParameter("skuid");
								    String productName = (String) request.getParameter("productName");
								    String manufacturer = (String) request.getParameter("manufacturer");

								%>
								<form action="./viewVendorInvoiceBySkuid" method="post">
                                    <div colspan="12" style="padding: 5px;background: #5aa320;color:#fff;text-align: center;font-size: 20px;border-bottom: 2px solid #febf10;">
	                                 <tr>
	                                   <th >STOCK VIEW</th>
	                                 </tr>
	                                 </div>
	                                 <br />
									<div class="form-group col-md-3 col-sm-3">
										<label for="pincode">SKU ID :</label> <input type="text"
											class="form-control" name="skuid" id="skuid" value="${skuid }"
											placeholder="Enter Your SKU ID" />
									</div>
									<div class="form-group col-md-3 col-sm-3">
										<label for="pincode">MANUFACTURER:</label> <input type="text"
											class="form-control" name="manufacturer" id="manufacturer" value="${manufacturer }"
											placeholder="Enter Your manufacturer" />
									</div>
									<div class="form-group col-md-3 col-sm-3">
										<label for="pincode">PRODUCT NAME :</label> <input type="text"
											class="form-control" name="productName" id="productName" value="${productName }"
											placeholder="Enter Your Product Name" />
									</div>
									


									<div class="form-group col-md-2 col-sm-2">
										<label for="pincode" style="color: #fff;">SK</label><br/>
											<button type="submit" class="btn btn-success btn-block"
												name="sub" id="box"
												style="font-size: 20px; line-height: 19px;">Search
											</button>
									</div>

								</form>

								<!--=========== table section =============-->
								<div class="col-xl-12 col-sm-12">
									<br/>
								</div>
								<div class="col-xl-12 col-sm-12">
									<div id="no-more-tables">
										<table
											class="col-md-12 table-bordered table-striped table-condensed cf">
											<thead class="cf" id="cf">
												<tr
													style="font-size: 16px; color: #4e4f4e; font-weight: 400;">
													<th>skuid</th>
													<th>Product Name</th>
													<th>Package Type</th>
													<th>Skuid in the Hand(Quantity)</th>

												</tr>
											</thead>


											<%
												if (skuid !=""||productName!=""||manufacturer!="") {
											%>
											<tbody>
												<tr style="background: #fff;">
													<td>${skuid}</td>
													<td>${skuidList}</td>
													<td>${skuidList1}</td>
													<td>${totalQuantity}</td>

												</tr>
											</tbody>

											<%
												} else {
											%>
											<c:forEach items="${skuidList }" var="skuidList">
												<tbody>
													<tr style="background: #fff;">
														<td>${skuidList.skuid}</td>
														<td>${skuidList.productName}</td>
														<td>${skuidList.packageType}</td>
														<td>${skuidList.totalQuantity}</td>
													</tr>
												</tbody>

											</c:forEach>
											<%
												}
											%>
										</table>
									</div>
								</div>
								<!--=========== end table section =============-->

							</div>


						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>

			<div class="copyrights">
				<p>
					Copyright © 2019 Kosuri RxMitra. All Rights Reserved | Designed
					by <a href="#" target="_blank">Kosuri Soft Labs Pvt Ltd</a>
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
	<script src="./resources/dashboard-js/js/jquery.nicescroll.js"></script>
	<script src="./resources/dashboard-js/js/scripts.js"></script>
	<!--//scrolling js-->
	<script src="./resources/dashboard-js/js/bootstrap.js">
		
	</script>

	<!-- mother grid end here-->
</body>
</html>