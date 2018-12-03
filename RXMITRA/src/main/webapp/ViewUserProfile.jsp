<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isErrorPage="true" pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.rxmitra.utils.*,com.rxmitra.dao.*,com.rxmitra.service.*,com.rxmitra.bean.*,java.util.*"
	isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>RX mitra</title>
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

		<div class="left-content">
			<div class="mother-grid-inner"></div>

			<div class="inner-block">
				<div class="inbox">
					<div class="profile_details"></div>
					<div class="col-md-12 mailbox-content  tab-content tab-content-in">


						<div class="">
							<jsp:include page="./User.jsp"></jsp:include>

							<form method="post">


								<table class="table table-bordered">
									<tr>
										<th colspan="6"
											style="padding: 5px; background: #5aa320; color: #fff; text-align: center; font-size: 20px; border-bottom: 2px solid #febf10;">PROFILE
											VIEW</th>
									</tr>
									<tr>
										<td style="font-weight: 500">USER NAME</td>
										<td colspan="3"><input type="text" class="form-control"
											name="firstName" value="${userRegistration.firstName }"
											size="50" readonly="readonly" /></td>
									</tr>

									<tr>
										<td style="font-weight: 500">LAST NAME</td>
										<td colspan="3"><input type="text" class="form-control"
											name="lastName" value="${userRegistration.lastName }"
											size="50" readonly="readonly" /></td>
									</tr>

									<tr>
										<td style="font-weight: 500">PHONE NO</td>
										<td colspan="3"><input type="text" class="form-control"
											name="mobileNo" value="${userRegistration.mobileNo }"
											size="50" readonly="readonly" /></td>
									</tr>

									<tr>
										<td style="font-weight: 500">EMAIL</td>
										<td colspan="3"><input type="text" class="form-control"
											name="emailId" value="${userRegistration.emailId }" size="50"
											readonly="readonly" /></td>
									</tr>

									<tr>
										<td style="font-weight: 500">REGISTRATION DATE</td>
										<td colspan="3"><input type="text" class="form-control"
											name="registrationDate"
											value="${userRegistration.registrationDate }" size="50"
											readonly="readonly" /></td>
									</tr>

									<tr>
										<td style="font-weight: 500">PINCODE</td>
										<td colspan="3"><input type="text" class="form-control"
											name="pincode" value="${userRegistration.pincode }" size="50"
											readonly="readonly" /></td>
									</tr>

									<tr>
										<td style="font-weight: 500">STATE</td>
										<td colspan="3"><input type="text" class="form-control"
											name="state" value="${userRegistration.state }" size="50"
											readonly="readonly" /></td>
									</tr>
									<tr>
										<td style="font-weight: 500">DISTRICT</td>
										<td colspan="3"><input type="text" class="form-control"
											name="district" value="${userRegistration.district }"
											size="50" readonly="readonly" /></td>
									</tr>
									<tr>
										<td style="font-weight: 500">GST NO</td>
										<td colspan="3"><input type="text" class="form-control"
											name="gstNo" value="${userRegistration.gstNo }" size="50"
											readonly="readonly" /></td>
									</tr>
									<tr>
										<td style="font-weight: 500">BUSINESS NAME</td>
										<td colspan="3"><input type="text" class="form-control"
											name="businessName" value="${userRegistration.businessName }"
											size="50" readonly="readonly" /></td>
									</tr>
									<tr>
										<td style="font-weight: 500">BUSINESS TYPE</td>
										<td colspan="3"><input type="text" class="form-control"
											name="businessType" value="${userRegistration.businessType }"
											size="50" readonly="readonly" /></td>
									</tr>
								</table>
							</form>
						</div>
					</div>
					<div class="clearfix"></div>

				</div>
			</div>

			<div class="copyrights">
				<p>
					Copyright © 2017 Kosur Rythu Mitra. All Rights Reserved | Design by
					<a href="#" target="_blank">Kosuri Soft Labs Pvt Ltd</a>
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