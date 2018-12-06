<%@ page language="java"
	import="com.rxmitra.dao.*,com.rxmitra.bean.*,com.rxmitra.bean.*,com.rxmitra.service.*,java.util.*"
	contentType="text/html; charset=ISO-8859-1" isErrorPage="true"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>RX Mitra</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.box {
	padding: 20px;
	display: none;
	margin-top: 20px;
}

.ui-select {
	width: 100%
}
/* This is to remove the arrow of select element in IE */
.table2 select::-ms-expand {
	display: none;
}

.table2 select {
	-webkit-appearance: none;
	appearance: none;
}

@
-moz-document url-prefix (){ . ui-select {
	border: 1px solid #CCC;
	border-radius: 4px;
	box-sizing: border-box;
	position: relative;
	overflow: hidden;
}

.ui-select select {
	width: 110%;
	background-position: right 30px center !important;
	border: none !important;
}

}
.tooltip1 {
	position: relative;
	display: inline-block;
	border-bottom: 0px dotted black;
	font-size: 17px;
	margin: 5px 4px;
	color: #4f9418;
	font-weight: 400;
}

.tooltip1 .tooltiptext1 {
	visibility: hidden;
	width: 900px;
	background-color: #00000087;
	color: #fff;
	text-align: center;
	border-radius: 6px;
	padding: 5px 0;
	position: absolute;
	z-index: 1;
	bottom: 154%;
	left: -174%;
	margin-left: -80px;
}

:focus {
	outline: -webkit-focus-ring-color auto 0px !important;
}

.tooltip1 .tooltiptext1::after {
	content: "";
	position: absolute;
	top: 100%;
	left: 60%;
	margin-left: -5px;
	border-width: 8px;
	border-style: solid;
	border-color: #787878 transparent transparent transparent;
}

.to {
	padding: 0 0px !important;
}

.to span {
	font-size: 14px;
}

.tooltip1:hover .tooltiptext1 {
	visibility: visible;
}
</style>
<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(document.getElementById("category")).change(function() {
			$(this).find("option:selected").each(function() {
				var optionValue = $(this).attr("value");
				if (optionValue) {
					$(".box").not("." + optionValue).hide();
					$("." + optionValue).show();
				} else {
					$(".box").hide();
				}
			});
		}).change();
	});
</script>
<script type="text/javascript">
	function selectCategory(category) {
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
								<tr>
									<td colspan="4" align="center">
										<%
											String message1 = "";
											try {
												message1 = request.getAttribute("message1").toString();
												if (message1 == null) {
												} else { 
													out.println("<font color='blue'>" + message1 + "</font>");
												}
											} catch (Exception e) {
											}
										%>
									</td>
								</tr>
								<tr>
									<td colspan="4" align="center">
										<%
											String message2 = "";
											try {
												message2 = request.getAttribute("message2").toString();
												if (message2 == null) {
												} else {
													out.println("<font color='red'>" + message2 + "</font>");
												}
											} catch (Exception e) {
											}
										%>
									</td>
								</tr>
								<div class="col-md-12">
									<table class="table table-bordered">

										<tr>
											<th colspan="10"
												style="padding: 5px; background: #5aa320; color: #fff; text-align: center; font-size: 20px; border-bottom: 2px solid #febf10;">VENDOR
												DETAILS</th>
										</tr>

										<%
											//String vendorid = null;
											//vendorid = (String) request.getAttribute("vendorid");

											//ArrayList<Product> alp = new ArrayList<Product>();
											//Vendor v = new Vendor();
											//v = (Vendor) session.getAttribute("vendordetails");

											//Vendor vendorDetails = (Vendor) request.getAttribute("vendorDetails");
										%>

										<tr>
											<td style="font-weight: 500;">VENDOR NAME</td>
											<td colspan="3">${vendorDetails.vendorName}</td>
										</tr>
										<tr>
											<td style="font-weight: 500;">ADDRESS</td>
											<td><input type="hidden" name="vendorid" id="vendorid"
												value="${vendorDetails.vendorId}" />
												${vendorDetails.address} <input type="hidden"
												name="vendorid" id="vendorid"
												value="${vendorDetails.vendorId}" /></td>
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
											<td>${vendorDetails.phoneNo1}</td>
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

									  <%
										String categoryT = request.getParameter("category");
									
									System.out.println(categoryT + "+++++++++++++++++++++++++++++++++++++++++++++++++++++");
		
										if (categoryT!=null) {
											//ArrayList<VendorProduct> prodsal = new ArrayList<VendorProduct>();
											//prodsal=new Products().getVendorProducts(vendorid,categoryf);
									%>  
									<table class="table table-bordered table2">
										<tr>
											<td colspan="4"
												style="text-align: center; font-weight: 700; padding-top: 10px; font-size: 22px"><span
												style="color: #fc8213;">PRODUCT DETAILS</span></td>
										</tr>
										<tr>
											<td align="center" style="font-weight: 500;" class="col-md-3">CATEGORY</td>
											<td align="center"><select
												class="form-control ui-select" name="category" id="category"
												class="col-md-3">
													<option value="T"><%= categoryT%></option>
											</select></td>
											 <td class="col-md-6" colspan="2">
												<div class="tooltip1">
													VIEW ADDED PRODUCTS <span class="tooltiptext1">
														
															<div class="col-md-2 to">
																<span>Name</span>
															</div>
															<div class="col-md-2 to">
																<span>Spical Name</span>
															</div>
															<div class="col-md-2 to">
																<span> Type</span>
															</div>
															<div class="col-md-2 to">
																<span>Weight</span>
															</div>
															<div class="col-md-2 to">
																<span>Skuid</span>
															</div>
															<div class="col-md-2 to">
																<span>Category</span>
															</div>
														
														<c:forEach items="${vendorProducts }"
												var="vendorProducts">
										
												<div class="col-md-2 to">
													<span>
														<c:out value="${vendorProducts.companyName}"></c:out>
													</span>
												</div>
												<div class="col-md-2 to">
													<span> <c:out value="${vendorProducts.specialName}"></c:out>
													</span>
												</div>
												<div class="col-md-2 to">
													<span> <c:out value="${vendorProducts.type}"></c:out>
													</span>
												</div>
												<div class="col-md-2 to">
													<span> <c:out value="${vendorProducts.weight}"></c:out>
													</span>
												</div>
												<div class="col-md-2 to">
													<span> <c:out value="${vendorProducts.skuid}"></c:out>
													</span>
												</div>
												<div class="col-md-2 to">
													<span> <c:out value="${vendorProducts.category}"></c:out>
													</span>
												</div>
                                           
											</c:forEach>
													</span>
												</div>
											</td>
										</tr>
							<form action="/RXMITRA/insertVendorProducts" method="post" name="vendorProduct">
								<div class="T box">
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
											<td align="center" style="font-weight: 500;">WEIGHT PER
												TABLET<font color=red>*</font>
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
												alt="No image" class="img-responsive" width="75" height="75"></img></td>
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
												class="form-control" name="companyName" id="companyName" />
												<input type="hidden" name="vendorid" id="vendorid"
												value="${vendorDetails.vendorId}" />  <input type="hidden"
														name="category" id="category" value="<%=category1 %>" /></td>

											<td align="center"><input type="text"
												class="form-control" size="8" name="specialName"
												id="specialName" /></td>

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
													<option>MGrams</option>
											</select></td>
											<td><select class="form-control" name="itemMass"
												id="itemMass">
													<option>BAGS</option>
													<option>BOTTLES</option>
													<option>PACKETS</option>
													<option>CONTAINER</option>
											</select></td>
											<td align="center"><input type="text"
												class="form-control" size="8" name="skuid" id="skuid" /></td>
											<td><input type="file" class="form-control" name="photo"
												accept="image/*" placeholder="Select Image" /></td>
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
									</table>
									
							 
									

								</div>

							</div>

							    <%
										}
									%>  
						            <%-- <%
										String categoryc = request.getParameter("category");
						                 System.out.println(categoryc+"____________________________________________");
										if (categoryc.equals("C")) {
									%>   
									<table class="table table-bordered table2">
										<tr>
											<td colspan="4"
												style="text-align: center; font-weight: 700; padding-top: 10px; font-size: 22px"><span
												style="color: #fc8213;">PRODUCT DETAILS</span></td>
										</tr>
										<tr>
											<td align="center" style="font-weight: 500;" class="col-md-3">CATEGORY</td>
											<td align="center"><select class="form-control"
												name="category" id="category" class="col-md-3">
													<option value="C">CAPSULES</option>
											</select></td>
											<td class="col-md-6" colspan="2"></td>

										</tr>
									</table>
									  <%
										}
									%>   --%>
							


							<%-- <form action="./UpdateVendorPesticides" method="post">
								<div class="C box">
									<table class="table table-bordered">
										<tr>
											<td align="center" style="font-weight: 500;">PRODUCT
												COMPANY<font color=red>*</font>
											</td>
											<td align="center" style="font-weight: 500;">SPECIAL
												NAME<font color=red>*</font>
											</td>
											<td align="center" style="font-weight: 500;">WEIGHT<font
												color=red>*</font></td>
											<td align="center" style="font-weight: 500;">ITEM MASS<font
												color=red>*</font></td>
											<td align="center" style="font-weight: 500;">SKUID<font
												color=red>*</font></td>
											<td colspan="2" align="left" style="font-weight: 500;">SELECT
												IMAGE<font color=red>*</font>
											</td>
										</tr>
										<%
											try {
												ArrayList<VendorProduct> alp = (ArrayList<VendorProduct>) session.getAttribute("productdetails");
												if (alp.size() > 0) {
													for (int i = 0; i < alp.size(); i++) {
														VendorProduct p = new VendorProduct();
														p = alp.get(i);
										%>
										<tr>
											<td align="center"><%=p.getCompanyName()%></td>
											<td align="center"><%=p.getSpecialName()%></td>
											<td align="center"><%=p.getWeight()%></td>
											<td align="left"><%=p.getItemMass()%></td>
											<td align="center"><%=p.getSkuid()%></td>
											<td colspan="2" align="left"><img
												src="data:image/png;base64,<%=p.getPhoto()%>" alt="No image"
												class="img-responsive" width="75" height="75"></img></td>
										</tr>
										<%
											}
												}
											} catch (Exception e) {
												//  e.printStackTrace();
											}
										%>
										<%
											String category2 = request.getParameter("category");
										%>
										<tr>
											<td align="center"><input type="text" size="8"
												class="form-control" name="companyName" id="companyName" />
												<input type="hidden" name="vendorid" id="vendorid"
												value="${vendorDetails.vendorId}" /> <input type="hidden"
												name="category" id="category" value="<%=category2%>" /></td>
											<td align="center"><input type="text"
												class="form-control" size="8" name="specialName"
												id="specialName" /></td>

											<td align="center"><input type="text"
												class="form-control" size="2" name="weight" id="weight" />
												<select name="weightmass" id="weightmass">
													<option>Ml</option>
													<option>Ltrs</option>
													<option>Kgs</option>
													<option>Grms</option>
											</select></td>
											<td align="center"><select class="form-control"
												name="itemMass" id="itemMass">
													<option>BOTTLES</option>
													<option>PACKETS</option>
													<option>BAGS</option>
													<option>CONTAINER</option>
											</select></td>
											<td align="center"><input type="text"
												class="form-control" size="8" name="skuid" id="skuid" /></td>
											<td><input type="file" class="form-control" name="photo"
												accept="image/*" placeholder="Select Image" /></td>
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


						  <form action='#' method="post">
										<div class="S box">
											<table class="table table-bordered">
												<tr>
													<td align="center" style="font-weight: 500;">PRODUCT
														COMPANY</td>
													<td align="center" style="font-weight: 500;">SPECIAL
														NAME</td>
													<td align="center" style="font-weight: 500;">TYPE</td>
													<td align="center" style="font-weight: 500;">WEIGHT</td>
													<td colspan="2" align="left" style="font-weight: 500;">ITEM
														MASS</td>
												</tr>
												<%
													try {
														ArrayList<VendorProduct> alp = (ArrayList<VendorProduct>) session.getAttribute("productdetails");
														if (alp.size() > 0) {
															for (int i = 0; i < alp.size(); i++) {
																VendorProduct p = new VendorProduct();
																p = alp.get(i);
												%>
												<tr>
													<td align="center"><%=p.getCompanyName()%></td>
													<td align="center"><%=p.getSpecialName()%></td>
													<td align="center"><%=p.getType()%></td>
													<td align="center"><%=p.getWeight()%></td>
													<td align="center"><%=p.getItemMass()%></td>
													<td align="center"><%=p.getSkuid()%></td>
													<td colspan="2" align="left"><img
														src="data:image/png;base64,<%=p.getPhoto()%>"
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
												<tr>
													<td align="center"><input type="text" size="8"
														class="form-control" name="companyName" id="companyName" /></td>
													<td align="center"><input type="text"
														class="form-control" size="8" name="specialName"
														id="specialName" /></td>

													<td align="center"><select class="form-control"
														name="type" id="type">
															<option>14-35-14</option>
															<option>20-20-0-13</option>
															<option>M.O.P</option>
															<option>S.N.D</option>
													</select></td>
													<td align="center"><input type="text"
														class="form-control" size="2" name="weight" id="weight" />
														<select name="weightmass" id="weightmass">
															<option>Kgs</option>
															<option>Grams</option>
															<option>Ltrs</option>
															<option>Mls</option>
													</select></td>
													<td align="center"><input type="text"
														class="form-control" size="8" name="itemMass"
														id="itemMass" /></td>
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
									</form>  --%>




						</div>






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