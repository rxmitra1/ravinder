<%@ page language="java"
	import="com.rxmitra.dao.*,com.rxmitra.bean.*,com.rxmitra.bean.*,com.rxmitra.service.*,java.util.*"
	contentType="text/html; charset=ISO-8859-1" isErrorPage="true"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RxMitra | Addproduct1</title>
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
									//String shopid = new ShopDetails().getEmployeeShopDetails(employeeid).getSHOP_ID();
								%>
								
								
								<form action="/RXMITRA/AddProductProcess" method="post"
									onsubmit="return validateForm()">
									<table class="table table-bordered">
										<tr>
											<th colspan="10"
												style="padding: 5px; background: #5aa320; color: #fff; text-align: center; font-size: 20px; border-bottom: 2px solid #febf10;">PRODUCT
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
														out.println("<font color='blue'>" + message + "</font>");
														}
													} catch (Exception e) {
													}
												%>
											</td>
										</tr>
										<tr>
											<td style="font-weight: 500;">CATEGORY<font color=red>*</font></td>
											<td colspan="3"><input size="57" type="text"
												class="form-control" name="category" /></td>
										</tr>
										<tr>
											<td style="font-weight: 500;">SUB CATEGORY<font
												color=red>*</font></td>
											<td colspan="3"><input size="57" type="text"
												class="form-control" name="subcategory" /></td>
										</tr>

										<tr>
											<td style="font-weight: 500;">PRODUCT NAME<font
												color=red>*</font></td>
											<td><input type="text" class="form-control"
												name="productname" id="productname" required />
												
											<td style="font-weight: 500;">QUANTITY</td>
											<td><input type="text" class="form-control"
												name="quantity" id="quantity" /></td>
										</tr>
										<tr>
											<td style="font-weight: 500;">EXPIRY DATE</td>
											<td><input type="date" class="form-control"
												name="expirydate" id="expirydate" /></td>
											<td style="font-weight: 500;">MANUFACTURING DATE</td>
											<td><input type="date" class="form-control"
												name="manufacturedate" id="manufacturedate"
												onkeypress="CheckNumeric(event)" /></td>
										</tr>
										<tr>

											<td style="font-weight: 500;">BATCH ID</td>
											<td colspan="3"><input size="57" type="text"
												class="form-control" name="batchid" id="batchid"
												onkeypress="CheckNumeric(event)" /></td>
										</tr>
										<tr>
											<td style="font-weight: 500;">PRODUCT DESCRIPTION<font
												color=red>*</font></td>
											<td colspan="3"><textarea cols="59" rows="3"
													class="form-control" name="productdescription"
													id="productdescription"></textarea></td>
										</tr>

										<tr>

											<td style="font-weight: 500;">IMAGE</td>
											<td colspan="3"><input size="57" type="file" class="form-control" name="photo"
												accept="image/*" placeholder="Select Image" /></td>
										</tr>
										<tr>
											<td style="font-weight: 500;">PRICE</td>
											<td colspan="3"><input  size="57" type="text" class="form-control" name="price"
												id="price" maxlength="11" /></td>
											
										</tr>
										<tr align="center">
											<td colspan="3"><input type="submit"
												class="btn btn-success" name="submit" value="ADD PRODUCT" /></td>
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
					copyright © 2019 Kosuri RxMitra. All Rights Reserved | Designed by <a
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