<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isErrorPage="true" pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page
	import="com.rxmitra.utils.*,com.rxmitra.dao.*,com.rxmitra.service.*,com.rxmitra.bean.*,java.util.*"
	isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>RX Mitra | Received Request</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link href="./css/style.css" rel="stylesheet" type="text/css" />
<style>
.table-striped>tbody>tr:nth-of-type(odd) {
	background-color: #ffffff !important;
}

.table-bordered {
	border: 1px solid #fbfafa !important;
}

.box {
	font-size: 23px;
	color: #5aa320;
	text-decoration: underline;
}

label {
	color: #5aa320 !important;
	font-size: 17px !important;
	font-weight: normal !important;
}

#one {
	font-size: 20px;
	color: #5aa320;
	text-decoration: underline;
}

.modal-header {
	min-height: 7px;
	padding: 9px !important;
	border-bottom: 1px solid #e5e5e5;
}

.modal-header .close {
	padding: 0rem;
	margin: 3rem 1rem 0rem auto;
	margin-top: 2px;
	font-size: 34px;
	color: #000;
}

.modal-title {
	line-height: 1.42857143;
	font-size: 24px;
	margin: 1px 10px;
	color: #4CAF50;
}

#tw1 {
	font-size: 21px;
	color: #5aa320;
	text-decoration: underline;
}
</style>



<script>
	var counter = 1;
	var limit = 6;
	function addInput(divName) {

		if (counter == limit) {
			alert("You have reached the limit of adding " + counter + " inputs");
		}

		else {

			var newdiv = document.createElement('div');
			newdiv.innerHTML = '<div class="col-md-12" style="padding: 0 0; margin: 9px 0%;"><div class="col-md-2"><input type="text" name="medicineName" class="form-control" id="" value="" placeholder="Your Medicine Name"></div><div class="form-group col-lg-2"><input type="text" name="quantity" class="form-control" id="" value="" placeholder="Your Quantity"></div><div class="form-group col-lg-2"><input type="text" name="mrp" class="form-control" id="" value="" placeholder="Your MRP"></div><div class="form-group col-lg-2"><input type="text" name="discountPrice" class="form-control" id="" value="" placeholder="Your Discount Price"></div><div class="form-group col-lg-2"><input type="text" name="finalPrice" class="form-control" id="" value="" placeholder="Your Final Price"></div>';
			document.getElementById(divName).appendChild(newdiv);
			counter++;
		}
	}
</script>
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
					<div class="col-md-12 mailbox-content  tab-content tab-content-in"
						style="padding-bottom: 0px;">


						<div class="">
							<jsp:include page="./User.jsp"></jsp:include>


							<h4 class="box">Received Request</h4>
							<br />
							<form action="./viewReceivedRequestsByDates" method="post">
								<div class="col-md-10">

									<div class="form-group col-lg-3">
										<label>Form Date :</label> <input type="date" name="fromDate"
											class="form-control" id="fromDate" value="${ fromDate}"
											placeholder="DD/MM/YYYY">
									</div>

									<div class="form-group col-lg-3">
										<label>To Date :</label> <input type="date" name="toDate"
											class="form-control" id="toDate" value="${ toDate}"
											placeholder="DDMM/YYYY"]>
									</div>

									<div class="form-group col-lg-3">
										<label>Pincode :</label> <input type="text" name="pincode"
											class="form-control" id="pincode" value="${pincode }"
											placeholder="Enter Your pincode">
									</div>

									<div class="form-group col-lg-3">
										<label>Member Id :</label> <input type="text" name="requestId"
											class="form-control" id="requestId" value="${requestId }"
											placeholder="Your Member Id">
									</div>
								</div>

								<div class="col-md-2">
									<div class="form-group col-lg-12">
										<label style="color: #fff !important;">g</label>
										<button type="submit" class="btn btn-success btn-block">Search</button>
									</div>

								</div>
							</form>
							<div class="clearfix"></div>

							<div class="col-md-12">
								<p>
									<br>
								</p>




								<div id="no-more-tables">



									<table
										class="col-md-12 table-bordered table-striped table-condensed cf">
										<thead class="cf" style="font-size: 17px; color: #5aa320;">
											<tr>

												<th class="numeric">Request Id</th>
												<th class="numeric">Request Date</th>
												<th class="numeric">Member Id</th>
												<th class="numeric">Email Id</th>
												<th class="numeric">Phone No</th>
												<th class="numeric">Pincode</th>
												<th class="numeric">Order Status</th>
												<th class="numeric">Order Id</th>
												<th class="numeric">Image Prescription</th>


											</tr>
										</thead>

									</table>
								</div>
								<div class="col-md-12">
																<br />
																<br />
								
									<h3 align="center" style="color: purple;">${emptyReceivedRequest}</h3>
								</div>
								<div class="col-md-12">

									<p>
										<br><br></br>
									</p>
								</div>






								<!--======== end  row section ============ -->

							</div>

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
		<!--COPY rights end here--
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
