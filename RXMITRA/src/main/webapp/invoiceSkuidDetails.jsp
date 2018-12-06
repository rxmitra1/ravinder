
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isErrorPage="true" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ page
	import="com.rxmitra.dao.*,com.rxmitra.service.*,com.rxmitra.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>RX mitra </title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="./css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>

	<%-- <%
		String from = null;
		try {
			from = request.getParameter("from");
			if (from == null) {
				from = request.getAttribute("from").toString();
			}
		} catch (Exception e) {

		}
	%> 
 --%>
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
                              <form action="./viewVendorInvoiceBySkuid1" method="post">
								
								 <div colspan="12" style="padding: 5px;background: #5aa320;color:#fff;text-align: center;font-size: 20px;border-bottom: 2px solid #febf10;">
	                                 <tr>
	                                   <th >VIEW INVOICE BY SKUID</th>
	                                 </tr>
	                                 </div>
	                                 <br />
                                       
									<div class="form-group col-md-3 col-sm-3">
										<label for="skuid">SKU ID :</label> <input type="text"
											class="form-control" name="skuid" id="skuid" value="${skuid }"
											placeholder="Enter Your SKU ID" required /> <input
											type="hidden" class="form-control" name="pageid" id="pageid"
											value="1" required />
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
										<label for="pincode" style="color: #fff;">SK</label><br>
											<button type="submit" class="btn btn-success btn-block"
												name="submit" id="box"
												style="font-size: 20px; line-height: 19px;">Search
											</button>
											<br />
									</div>
									</form>
								
								<table class="table table-bordered">
									<tr>
									<th colspan="12" style="padding: 5px;background: #5aa320;color:#fff;text-align: center;font-size: 20px;border-bottom: 2px solid #febf10;">VENDOR
												PRODUCT DETAILS</th>
									</tr>

									<tr>
										<td align="center" style="font-weight: 900;">INVOICE NO</td>
										<td align="center" style="font-weight: 900;">MANUFACTURER</td>
										<td align="center" style="font-weight: 900;">PRODUCT NAME</td>
										<td align="center" style="font-weight: 900;">PACKAGE TYPE</td>
										<td align="center" style="font-weight: 900;">ACTUAL PRICE</td>
										<td align="center" style="font-weight: 900;">PURCHASE
											PRICE</td>
										<td align="center" style="font-weight: 900;">INVOICE DATE</td>
									</tr>



									<c:forEach items="${invoiceSkuidList}" var="invoiceSkuidList">
										<tr>
											<td align="center"><c:out
													value="${invoiceSkuidList.invoiceNo }"></c:out></td>
													<td align="center"><c:out
													value="${invoiceSkuidList.manufacturer }"></c:out></td>
											<td align="center"><c:out
													value="${invoiceSkuidList.productName }"></c:out></td>
											<td align="center"><c:out
													value="${invoiceSkuidList.packageType }"></c:out></td>
											<td align="center"><c:out
													value="${invoiceSkuidList.actualPrice }"></c:out></td>
											<td align="center"><c:out
													value="${invoiceSkuidList.purchasePrice }"></c:out></td>
											<td align="center"><c:out
													value="${invoiceSkuidList.invoiceDate }"></c:out></td>
										</tr>
									</c:forEach>


								</table>
								Pages <a href="./viewVendorInvoiceBySkuid1?pageid=1">1</a> <a
									href="./viewVendorInvoiceBySkuid1?pageid=2">2</a> <a
									href="./viewVendorInvoiceBySkuid1?pageid=3">3</a> <a
									href="./viewVendorInvoiceBySkuid1?pageid=4">4</a> <a
									href="./viewVendorInvoiceBySkuid1?pageid=5">5</a>

								<div class="clearfix"></div>

							</div>
						</div>
						</div>
					</div>
				</div>

				<div class="copyrights">
					<p>
						© 2017 Kosuri Rythu Mitra. All Rights Reserved | Design by <a
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


			<!--slide bar menu end here-->
			<script>
				var toggle = true;

				$(".sidebar-icon").click(
						function() {
							if (toggle) {
								$(".page-container").addClass(
										"sidebar-collapsed").removeClass(
										"sidebar-collapsed-back");
								$("#menu span").css({
									"position" : "absolute"
								});
							} else {
								$(".page-container").removeClass(
										"sidebar-collapsed").addClass(
										"sidebar-collapsed-back");
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
