<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>RX mitra </title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="./css/style.css" rel="stylesheet" type="text/css" />
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
					<div class="col-md-12 mailbox-content  tab-content tab-content-in">
						<div class="panel panel-orange" style="padding: 2px 13px;">

							<div class="for4">

								<div class="col-lg-12">
									<%--   <jsp:include page="./User.jsp"></jsp:include>
 --%>
									<%
										String shopid = (String) request.getAttribute("shopid");
										int noofpages = 0, page1 = 0, maxrowsperpage = 0;
									%>
									<form method="post" action="./DisplayVendorsToInsertProducts1"
										class="form-horizontal">

                                        <div colspan="12" style="padding: 5px;background: #5aa320;color:#fff;text-align: center;font-size: 20px;border-bottom: 2px solid #febf10;">
	                                 <tr>
	                                   <th >UPDATE INVOICE</th>
	                                 </tr>
	                                 </div>
	                                 <br />
										<div class="col-md-12">
											<div class="col-md-6">
												<div class="form-group">
													<label for="email" class="col-sm-4 control-label">VENDOR
														NAME</label>
													<div class="col-sm-6">
														<input class="form-control" type="text" name="vendorName"
															id="vendorName">
													</div>
												</div>
											</div>

											<div class="col-md-4">
												<div class="form-group">
													<label for="email" class="col-sm-4 control-label">GST
														NO.</label>
													<div class="col-sm-6">
														<input class="form-control" type="text" name="tinNo"
															id="tinNo"> <input type="hidden" name="from"
															value="<%=from%>"></input> <input type="hidden"
															name="shopId" value="<%=shopid%>"></input>
													</div>
												</div>
											</div>

											<div class="col-md-2">

												<button type="submit" class="btn btn-success btn-block">SEARCH</button>

											</div>
										</div>
										
									</form>
								</div>

								<div class="col-lg-12" id="form7">
									<table class="table table-bordered">
										<tr>
											<th colspan="10"
												style="padding: 5px; background: #5aa320; color: #fff; text-align: center; font-size: 20px;">VENDOR
												INVOICE DETAILS</th>
										</tr>
                                           
										<tr>
											<th>ADDINVOICE ID</th>
											<th>PRODUCT ID</th>
											<th>PRODUCT NAME</th>
											<th>WEIGHT</th>
											<th>PACKAGE TYPE</th>

											<th>EXPIRY DATE</th>
											<th>ACTUAL PRICE</th>
											<th>PURCHASE_PRICE</th>
											<th>VENDOR ID</th>

										</tr>

										<c:forEach items="${VendorInvoiceList}"
											var="VendorInvoiceList">
											<tr>
												<td><c:out value="${VendorInvoiceList.addInvoiceId}"></c:out></td>
												<td><c:out value="${VendorInvoiceList.productId}"></c:out></td>
												<td><c:out value="${VendorInvoiceList.productName}"></c:out></td>
												<td><c:out value="${VendorInvoiceList.weight}"></c:out></td>
												<td><c:out value="${VendorInvoiceList.packageType}"></c:out></td>

												<td><c:out value="${VendorInvoiceList.expiryDate}"></c:out></td>
												<td><c:out value="${VendorInvoiceList.actualPrice}"></c:out></td>
												<td><c:out value="${VendorInvoiceList.purchasePrice}"></c:out></td>
												<td><c:out value="${VendorInvoiceList.vendorid}"></c:out></td>

											</tr>
										</c:forEach>







									</table>
								Pages <a href="./viewVendorInvoiceDetails?invoiceNo=${VendorInvoiceList.invoiceNo}&pageid=1">1</a>
									<a href="./viewVendorInvoiceDetails?invoiceNo=${VendorInvoiceList.invoiceNo}&pageid=2">2</a>
									<a href="./viewVendorInvoiceDetails?invoiceNo=${VendorInvoiceList.invoiceNo}&pageid=3">3</a>
									<a href="./viewVendorInvoiceDetails?invoiceNo=${VendorInvoiceList.invoiceNo}&pageid=4">4</a>
									<a href="./viewVendorInvoiceDetails?invoiceNo=${VendorInvoiceList.invoiceNo}&pageid=5">5</a> 

								</div>
								<tr>

									
								</tr>

							</div>
							<div class="clearfix"></div>

						</div>
					</div>
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
