
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isErrorPage="true" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ page
	import="com.rxmitra.dao.*,com.rxmitra.service.*,com.rxmitra.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>RX mitra</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="./css/style.css" rel="stylesheet" type="text/css" />
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


							<div class="col-md-12">

								<table class="table table-bordered">
									<tr>
										<td colspan="12"
											style="padding: 5px; background: #5aa320; color: #fff; text-align: center; font-size: 20px; border-bottom: 2px solid #febf10;"><span>VIEW
												VENDOR DETAILS</span></td>
									</tr>

									<tr>
										<td align="center" style="font-weight: 900;">VENDOR NAME</td>
										<td align="center" style="font-weight: 900;">VENDOR TYPE</td>
										<td align="center" style="font-weight: 900;">GST IN NO.</td>
										<td align="center" style="font-weight: 900;">SHOP</td>
										<td align="center" style="font-weight: 900;">PAN</td>
										<td align="center" style="font-weight: 900;">MOBILE</td>
									</tr>

									<%
										String dataNotFound = (String) request.getAttribute("dataNotFound");

										if (dataNotFound == null) {
									%>

									<c:forEach items="${vendorList}" var="vendorList">
										<tr>
											<td align="center"><a
												href="./displayVendorProducts?vendorname=${vendorList.vendorName }&pageid=1"><c:out
														value="${vendorList.vendorName }"></c:out></a></td>
											<td align="center"><c:out
													value="${vendorList.vendorType }"></c:out></td>
											<td align="center"><c:out value="${vendorList.tinNo }"></c:out></td>
											<td align="center"><c:out value="${vendorList.shopId }"></c:out></td>
											<td align="center"><c:out value="${vendorList.panNo }"></c:out></td>
											<td align="center"><c:out
													value="${vendorList.phoneNo1 }"></c:out></td>
										</tr>
									</c:forEach>


								</table>
								<%
									} else {
								%>
								<h3 align="center" style="color: purple;">${dataNotFound}</h3>

								<%
									}
								%>

								<table>
									<tr>
										<td>Pages</td>
										<c:forEach items="${count }" var="count">
											<td>
												<form action="./GetVendorDetails" method="get">
													<input type="hidden" name="pageid" value="${count}"/>
													

														<button type="submit" class="btn btn-link">
															<c:out value="${count}" />
														</button>
												</form>
											</td>
										</c:forEach>
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
					Copyright © 2019 Kosuri RxMitra. All Rights Reserved | Design by <a
						href="#" target="_blank">Kosuri Soft Labs Pvt Ltd</a>
				</p>
			</div>
		</div>
		<div class="clearfix"></div>
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
