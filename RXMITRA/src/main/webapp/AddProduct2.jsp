<%@ page language="java"
	import="com.rxmitra.dao.*,com.rxmitra.bean.*,com.rxmitra.bean.*,com.rxmitra.service.*,java.util.*"
	contentType="text/html; charset=ISO-8859-1" isErrorPage="true"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Rx Mitra</title>
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
									
								%>
								
								
								<form action="/rxmitra/xyza" method="post"  
										enctype="multipart/form-data">
										<div class="F box">
											<table class="table table-bordered">
												<tr>
													<td align="center" style="font-weight: 500;">PRODUCT
														COMPANY<font color=red>*</font>
													</td>
													<td align="center" style="font-weight: 500;">SPECIAL
														NAME<font color=red>*</font>
													</td>
													<td align="center" style="font-weight: 500;">NO.OF
														TABLETS PER PACK<font color=red>*</font>
													</td>
													<td align="center" style="font-weight: 500;">WEIGHT
														PER TABLET<font color=red>*</font>
													</td>
													<td align="center" style="font-weight: 500;">ITEM MASS<font
														color=red>*</font></td>
													<td align="center" style="font-weight: 500;">SKUID<font
														color=red>*</font></td>
													<td colspan="2" align="left" style="font-weight: 500;">SELECT
														IMAGE</td>
												</tr>
												 <%
													try {
														ArrayList<VendorProduct> alp = (ArrayList<VendorProduct>) session.getAttribute("productdetails");
														if (alp.size() > 0) {
															for (int i = 0; i < alp.size(); i++) {
																VendorProduct vendorProduct = new VendorProduct();
																vendorProduct = alp.get(i);
												%>
												<tr>
													<td align="center"><%=vendorProduct.getCompanyName()%></td>
													<td align="center"><%=vendorProduct.getSpecialName()%></td>
													<td align="center"><%=vendorProduct.getType()%></td>
													<td align="center"><%=vendorProduct.getWeight()%></td>
													<td align="center"><%=vendorProduct.getItemMass()%></td>
													<td align="center"><%=vendorProduct.getSkuid()%></td>
													<td colspan="2" align="left"><img
														src="data:image/png;base64,<%=vendorProduct.getPhoto()%>"
														alt="No image" class="img-responsive" width="75"
														height="75"></img></td>
												</tr>
												<%
													}
														}
													} catch (Exception e) {
														//  e.printStackTrace();
													}
												%> 
												 <%
													String category1 = request.getParameter("category");
												%>
												<tr>
													<td align="center"><input type="text" size="8"
														class="form-control" name="companyname" id="companyname" />
												 <input type="hidden" name="vendorid" id="vendorid"
														value="${vendorDetails.vendorId}" />   <input type="hidden"
														name="category" id="category" value="" /></td> 

													<td align="center"><input type="text"
														class="form-control" size="8" name="specialname"
														id="specialname" /></td>

													<td align="center"><select class="form-control"
														name="type" id="type">
															<option>5</option>
															<option>10</option>
															<option>15</option>
															<option>20</option>
															<option>25</option>



													</select></td>
													<td align="center"><input type="text"
														class="form-control" size="2" name="weight" id="weight" />
														<select name="weightmass" id="weightmass">
															<option>Kgs</option>
															<option>Grams</option>
															<option>Ltrs</option>
															<option>Mls</option>
													</select></td>
													<td><select class="form-control" name="itemmass"
														id="itemmass">
															<option>BAGS</option>
															<option>BOTTLES</option>
															<option>PACKETS</option>
															<option>CONTAINER</option>
													</select></td>
													<td align="center"><input type="text"
														class="form-control" size="8" name="skuid" id="skuid" /></td>
													<td><input type="file" class="form-control"
														name="photo" accept="image/*" placeholder="Select Image" />
													</td>
													<td align="center"><input type="submit"
														class="btn btn-success" size="8" name="submit"
														value="ADD PRODUCT" /></td>
												</tr>
												<tr align="center">
													<td colspan="8"><input type="submit"
														class="btn btn-success" name="submit" value="SUBMIT ALL" /></td>
												</tr>
											</table>
										</div>
									</form>


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