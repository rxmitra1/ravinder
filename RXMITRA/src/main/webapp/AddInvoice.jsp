<%@ page language="java"
	import="com.rxmitra.dao.*,com.rxmitra.bean.*,com.rxmitra.service.*,java.util.*"
	contentType="text/html; charset=ISO-8859-1" isErrorPage="true"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>RxMitra</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="./css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="./css/tcal.css" />
<script type="text/javascript" src="./js/tcal.js"></script>

<style>
label {
	display: inline-block;
	max-width: 100%;
	margin-bottom: 5px;
	font-weight: 400 !important;
	font-size: 17px;
}

#two {
	text-align: center;
	font-size: 28px;
	text-transform: uppercase;
	color: #5aa320;
}

@media ( max-width : 450px) {
	#one {
		padding: 0 0px;
	}
}
</style>
</head>
<body>


	<%
		Integer vendorid = null;
		try {
			vendorid = Integer.parseInt(request.getParameter("vid"));

		} catch (Exception e) {

		}
	%>
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
								<form action="./processAddInvoice" method="post"
									enctype="multipart/form-data">
									<%
										String message = "";
										try {
											message = request.getAttribute("message").toString();
											out.println("<font color=blue>" + message + "</font>");
										} catch (Exception e) {
										}
									%>
									<%
										String message1 = "";
										try {
											message1 = request.getAttribute("message1").toString();
											out.println("<font color=red>" + message1 + "</font>");
										} catch (Exception e) {
										}
									%>


									<div class="col-md-12" id="one">
										<h1 id="two">Add Invoice</h1>
									</div>
									<br/><br/>
											<div class="col-md-12" id="one">


												<div class="col-md-3" id="one">
													<div class="form-group">
														<label for="firstname">SELECT FILE </label> <input
															type="file" class="form-control" name="file" id="file"
															placeholder="Choose Required File" required /> <input
															type="hidden" name="vendorid" id="vendorid"
															value="<%=vendorid%>" /> 
														
													</div>
												</div>


												<div class="col-md-1"></div>

												<div class="col-md-2" id="one">
													<div class="form-group">
														<label for="firstname" style="color: #fff;">EN </label>
														<button type="submit" class="btn btn-success btn-block">UPLOAD</button>

													</div>
												</div>
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