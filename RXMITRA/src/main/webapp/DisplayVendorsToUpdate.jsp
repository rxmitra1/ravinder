<%@ page language="java" isELIgnored="false"
	import="com.rxmitra.dao.*,com.rxmitra.bean.*,com.rxmitra.bean.*,com.rxmitra.service.*,java.util.*"
	contentType="text/html; charset=ISO-8859-1" isErrorPage="true"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>RX mitra</title>
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


								<form action="./DisplayVendorsToInsertProducts" method="post">
									<div align="center">
										<font style='color: red; font-weight: 600; font-size: medium;'>${selectNameErroe}</font>
										<font style='color: red; font-weight: 600; font-size: medium;'>${valiNameError}</font>
									</div>
									<div colspan="12"
										style="padding: 5px; background: #5aa320; color: #fff; text-align: center; font-size: 20px; border-bottom: 2px solid #febf10;">
										<tr>
											<th>ADD INVOICE</th>
										</tr>
									</div>
									<br />

									<div class="form-group col-md-4 col-sm-4">
										<label for="pincode">VENDOR NAME:</label> <input type="text"
											class="form-control" name="vendorname" id="vendorname"
											placeholder="Enter Your Vendor Name" /> <input type="hidden"
											class="form-control" name="pageid" id="pageid" value="1"
											required />
									</div>

									<div class="form-group col-md-2 col-sm-2">
										<label for="pincode" style="color: #fff;">SK</label><br />
										<button type="submit" class="btn btn-success btn-block"
											name="sub" id="box"
											style="font-size: 20px; line-height: 19px;">Search</button>
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
					copyright © 2019 Kosuri RxMitra. All Rights Reserved | Designed by
					<a href="#" target="_blank">Kosuri Soft Labs Pvt Ltd</a>
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