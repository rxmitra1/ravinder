
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
			<jsp:include page="./EmployeeMenu.jsp" />


			<div class="rightsidebar-menu"></div>
			<div class="left-content">
				<div class="mother-grid-inner"></div>

				<div class="inner-block">
					<div class="inbox">
						<div class="profile_details"></div>
						<div class="col-md-12 mailbox-content  tab-content tab-content-in">
							<div class="panel panel-orange" style="padding: 2px 13px;">
								<div class="col-lg-12" id="form7">
									<table class="table table-bordered">
										<tr>
											<th colspan="10"
												style="padding: 5px; background: #5aa320; color: #fff; text-align: center; font-size: 20px;">VENDOR
												DETAILS</th>
										</tr>

										<tr>
											<td align="center">VENDOR NAME</td>
											<td align="center">GST IN NO.</td>
											<td align="center">PAN</td>
											<td align="center">MOBILE</td>
										</tr>


										<c:forEach items="vendorList" var="vendorList">

											<tr>
												<td><a
													href="./EIndVendor.jsp?vendorid=${vendorList.vendorId }&from=<%=from%>">${vendorList.vendorName }</a></td>
												<td align="center">${vendorList.tinNo }</td>
												<td align="center">${vendorList.panNo }</td>
												<td align="center">${vendorList.phoneNo1 }</td>
											</tr>

										</c:forEach>






									</table>
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
