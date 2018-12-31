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
									<form method="post" action="./viewVendorInvoiceDetails?update=yes&pageid=1"
										class="form-horizontal">
                                      <div colspan="12" style="padding: 5px;background: #5aa320;color:#fff;text-align: center;font-size: 20px;border-bottom: 2px solid #febf10;">
	                                 <tr>
	                                   <th >UPDATE INVOICE</th>
	                                 </tr>
	                                 </div>
	                                 <br />
	                                 
	                                 
	                                 <div class="col-md-12" id="one">
												<div class="form-group col-md-4 col-sm-4">
													<label for="pincode">INVOICE NO</label> <input
														type="text" class="form-control" name="invoiceNo" value="${invoiceNo }"
														id="invoiceNo" placeholder="Enter Your Invoice No" />
												</div>

												

												<div class="col-md-1"></div>

												<div class="col-md-2" id="one">
													<div class="form-group">
														<label for="firstname" style="color: #fff;">EN </label>
														<button type="submit" class="btn btn-success btn-block">SEARCH</button>
                                                        <br>
                                                        <br>
													</div>
												</div>
												
											</div>
	               				                 
									</form>
								</div>

								<div class="col-lg-12" id="form7">
									<table class="table table-bordered">
									 <font style='color: blue; font-weight: 600; font-size: medium;'>${updateSuccess}</font> 
										<tr>
											<th colspan="12"
												style="padding: 5px; background: #5aa320; color: #fff; text-align: center; font-size: 20px;">UPDATE
												INVOICE </th>
										</tr>

										<tr>
											<td  style="font-weight: 500;">INVOICE NO</td>
											<td  style="font-weight: 500;">MANUFACTURER</td>
											<td  style="font-weight: 500;">PRODUCT NAME</td>
											<td  style="font-weight: 500;">SKUID</td>
											<td  style="font-weight: 500;">WEIGHT</td>
											<td  style="font-weight: 500;">PACKAGE TYPE</td>

											<td  style="font-weight: 500;">EXPIRY DATE</td>
											
											<td  style="font-weight: 500;">PURCHASE PRICE</td>
											<td  style="font-weight: 500;">DISCOUNT PRICE</td>
                                            <td  style="font-weight: 500;">ACTUAL PRICE</td>
											<td  style="font-weight: 500;">MRP</td>
											
                                          <td  style="font-weight: 500;">UPDATE HERE</td>
										</tr>

										<c:forEach items="${VendorInvoiceList}"
											var="VendorInvoiceList">
											
                                             <form action="./updateInvoiceByInvoiceNo" method="post">
                                                    <tr>
												<td colspan=""><input type="text" class="form-control"
													name="invoiceNo" required
													value="${VendorInvoiceList.invoiceNo}" size="15" />
													 <input
													type="hidden" name="addInvoiceId" required
													value="${VendorInvoiceList.addInvoiceId }" maxlength="30" />
													 
													 <input
													type="hidden" name="quantity" required
													value="${VendorInvoiceList.quantity }" maxlength="30" /> 
													<input
													type="hidden" name="batchId" required
													value="${VendorInvoiceList.batchId }" maxlength="30" /> 
													 <input
													type="hidden" name="discountPrice" required
													value="${VendorInvoiceList.discountPrice }" maxlength="30" /> 
													<input
													type="hidden" name="invoiceUploadDate" required
													value="${VendorInvoiceList.invoiceUploadDate }"
													maxlength="30" /> 
													<input type="hidden" name="invoiceDate"
													required value="${VendorInvoiceList.invoiceDate }"
													maxlength="30" />
													 <input type="hidden" name="vendorid"
													required value="${VendorInvoiceList.vendorid }"
													maxlength="30" />
													<input type="hidden" name="salesDiscount"
													required value="${VendorInvoiceList.salesDiscount }"
													maxlength="30" />
													<input type="hidden" name="sellingPrice"
													required value="${VendorInvoiceList.sellingPrice }"
													maxlength="30" />
													<input type="hidden" name="published"
													required value="${VendorInvoiceList.published }"
													maxlength="30" />
													<input type="hidden" name="ageLimit"
													required value="${VendorInvoiceList.agelimit }"
													maxlength="30" />
													<input type="hidden" name="productSubCategory"
													required value="${VendorInvoiceList.productSubCategory }"
													maxlength="30" />
													<input type="hidden" name="productCategory"
													required value="${VendorInvoiceList.productCategory }"
													maxlength="30" />
													</td>
												
												
												
												
												<td colspan=""><input type="text" class="form-control"
													name="manufacturer" required
													value="${VendorInvoiceList.manufacturer}" size="15" /></td>
												<td colspan=""><input type="text" class="form-control"
													name="productName" required
													value="${VendorInvoiceList.productName}" size="15" /></td>
												<td colspan=""><input type="text" class="form-control"
													name="skuid" required
													value="${VendorInvoiceList.skuid}" size="15" /></td>
												<td colspan=""><input type="text" class="form-control"
													name="weight" required value="${VendorInvoiceList.weight}"
													size="15" /></td>
												<td colspan=""><input type="text" class="form-control"
													name="packageType" required
													value="${VendorInvoiceList.packageType}" size="15" /></td>

												<td colspan=""><input type="text" class="form-control"
													name="expiryDate" required
													value="${VendorInvoiceList.expiryDate}" size="15" /></td>
												
												<td colspan=""><input type="text" class="form-control"
													name="purchasePrice" required
													value="${VendorInvoiceList.purchasePrice}" size="15" /></td>
													<td colspan=""><input type="text" class="form-control"
													name="discountPrice" required
													value="${VendorInvoiceList.discountPrice}" size="15" /></td>
                                                <td colspan=""><input type="text" class="form-control"
													name="actualPrice" required
													value="${VendorInvoiceList.actualPrice}" size="15" /></td>

												<td colspan=""><input type="text" class="form-control"
													name="mrp" required value="${VendorInvoiceList.mrp}"
													size="15" /></td>
												

												

												<td><button type="submit" class="btn btn-success btn-block">UPDATE</button></td>
                                              </tr>
                                            </form>
											
											
										</c:forEach>

									</table>
									<table>
									<tr>
										<td>Pages</td>
										<c:forEach items="${count }" var="count">
											<td>
												<form action="./viewVendorInvoiceDetails?update=yes" method="post">
													<input type="hidden" name="pageid" value="${count}">

														<button type="submit" class="btn btn-link">
															<c:out value="${count}" />
														</button>
												</form>
											</td>
										</c:forEach>
									</tr>
								</table>
									

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
