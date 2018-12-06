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
				alert("You have reached the limit of adding " + counter
						+ " inputs");
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
			<c:forEach items="${receivedRequestData }" var="receivedRequestData">
				<div class="inner-block">
					<div class="inbox">
						<div class="profile_details"></div>
						<div class="col-md-12 mailbox-content  tab-content tab-content-in"
							style="padding-bottom: 0px;">


							<div class="">
								<jsp:include page="./User.jsp"></jsp:include>
								<h4 class="box">Received Request</h4>
								<br>
									<div class="col-md-10">

										<div class="form-group col-lg-3">
											<label>Form Date :</label> <input type="date"
												name="employeeId" class="form-control" id="" value=""
												placeholder="DD/MM/YYYY">
										</div>

										<div class="form-group col-lg-3">
											<label>To Date :</label> <input type="date"
												name="employeeName" class="form-control" id="" value=""
												placeholder="DDMM/YYYY"]>
										</div>

										<div class="form-group col-lg-3">
											<label>Pincode :</label> <input type="text" name="pincode"
												class="form-control" id="" value=""
												placeholder="Enter Your pincode">
										</div>

										<div class="form-group col-lg-3">
											<label>Member Id :</label> <input type="text" name="member"
												class="form-control" id="" value=""
												placeholder="Your Member Id">
										</div>
									</div>

									<div class="col-md-2">
										<div class="form-group col-lg-12">
											<label style="color: #fff !important;">g</label>
											<button type="button" class="btn btn-success btn-block">Search</button>
										</div>

									</div>

									<div class="clearfix"></div>

									<div class="col-md-12">
										<p>
											<br>
										</p>
										
										
										
										<form action="">
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
												<tbody>


													<tr>
														<td data-title="Request Id" class="numeric"><a
															href="#demo" data-toggle="collapse" id="one">${receivedRequestData.requestId }</a></td>
														<td data-title="Request Date" class="numeric">${receivedRequestData.date }</td>
														<td data-title="Member Id" class="numeric"><a
															href="#" data-toggle="modal" data-target="#myModal"
															id="one">${receivedRequestData.requestId }</a></td>
														<td data-title="Email Id" class="numeric">${receivedRequestData.emailId }</td>
														<td data-title="Phone No" class="numeric">${receivedRequestData.mobile }</td>
														<td data-title="Pincode" class="numeric">${receivedRequestData.pincode }</td>
														<td data-title="Order Status" class="numeric"><select
															class="form-control">
																<option value="volvo">${receivedRequestData.status }</option>
																<option value="saab">Order process</option>
																<option value="opel">Delivery</option>
																<option value="audi">Rejected</option>
														</select></td>
														<td data-title="Order Id" class="numeric">${receivedRequestData.requestId }</td>
														
														
														
														<td data-title="imageDescription" class="numeric">
														<a href="" data-toggle="modal" data-target="#myModal1" id="one">
														${receivedRequestData.photo } </a></td>
													</tr>


												</tbody>
											</table>
										</div>


										<!--================= popup section =============== -->
										<div class="modal" id="myModal">
											<div class="modal-dialog">
												<div class="modal-content">

													<!-- Modal Header -->
													<div class="modal-header">
														<h4 class="modal-title">Received Request</h4>
														<button type="button" class="close" data-dismiss="modal">&times;</button>
													</div>
													<div class="modal-body">
														<div class="col-md-12">
															<div class="form-group col-lg-12">
																<label>Your Name</label> <input type="text" name="name"
																	class="form-control"
																	value="${receivedRequestData.name }"
																	readonly="readonly">
															</div>

															<div class="form-group col-lg-12">
																<label>Address</label>
																<textarea class="form-control" rows="2" name="message"
																	readonly="readonly">
   Address:
        H.No: <c:out value="${receivedRequestData.flatNo }"></c:out>, <c:out value="${receivedRequestData.city }"></c:out>, <c:out value="${receivedRequestData.district }"></c:out>, <c:out value="${receivedRequestData.state }"></c:out></textarea>
							</div>

							<div class="form-group col-lg-12">
								<label>Contact No</label> <input type="text" name="contact"
									class="form-control"
									value="<c:out value="${receivedRequestData.mobile }"></c:out>"
									readonly="readonly">
							</div>

							<div class="form-group col-lg-12">
								<label>Pincode :</label> <input type="text" name="pincode"
									class="form-control" id=""
									value="<c:out value="${receivedRequestData.pincode }"></c:out>"
									readonly="readonly">
							</div>

							<div class="col-md-4"></div>

							<div class="col-md-4"></div>

						</div>
					</div>

					<!-- Modal footer -->
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					</div>

				</div>
								</div>
								</div>
				
				
				
				<div class="modal" id="myModal1">
		<div class="modal-dialog modal-lg">
		<div class="modal-content">
		<div class="modal-header">
		<h4 class="modal-title">Received Request</h4>
		<button type="button" class="close" data-dismiss="modal">&times;</button>
		</div>
		<div class="modal-body">
			
		<c:forEach items="${userImage }" var="userImage">
			
			<div class="col-md-12">
			
			  <img src="data:image/jpg;base64,${userImage}" class="img-responsive">
			</div>
	   </c:forEach>
			
			
														
		</div>

		<div class="modal-footer">
		<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		</div>

		</div>
		
		</div>
	</div>
				
				
				
				
				
				
			</c:forEach>
		

	<!--================ end popup section ============= -->
	
	
	

	<!--========  row section ============ -->
	
	<table>
	<div id="demo" class="collapse">
		
	
		<div class="col-md-12">
			<p>
				<br>
			</p>

			<h4 id="tw1">Doctor Details</h4>
			<br>
				<div class="form-group col-lg-3">
					<label>Refered By :</label> <input type="text" name="referredBy"
						class="form-control" placeholder="Enter Your Refered By">
				</div>

				<div class="form-group col-lg-3">
					<label>Doctor :</label> <input type="text" name="doctorName"
						class="form-control" id="" value=""
						placeholder="Enter Your Doctor">
				</div>

				<div class="form-group col-lg-3">
					<label>Address</label>
					<textarea class="form-control" rows="2" name="address"
						required="required" placeholder="Enter Your Address ........"></textarea>
				</div>
		</div>

		<div class="clearfix"></div>
	<form action="./savePrescriptionAndDoctorData" method="post">

		
		<div class="col-md-12">

			<h4 id="tw1">Prescription Details</h4>
			<br>
				<div class="col-md-12" id="dynamicInput">

					<div class="form-group col-lg-2">
						<input type="text" name="medicineName" class="form-control" id=""
							value="" placeholder="Your Medicine Name">
					</div>

					<div class="form-group col-lg-2">
						<input type="text" name="quantity" class="form-control" id=""
							value="" placeholder="Your Quantity">
					</div>

					<div class="form-group col-lg-2">
						<input type="text" name="mrp" class="form-control" id="" value=""
							placeholder="Your MRP">
					</div>
					<div class="form-group col-lg-2">
						<input type="text" name="discountPrice" class="form-control" id=""
							value="" placeholder="Your Discount Price">
					</div>
					<div class="form-group col-lg-2">
						<input type="text" name="finalPrice" class="form-control" id=""
							value="" placeholder="Your Final Price">
					</div>

					<div class="form-group col-lg-2">
						<button type="button" id="more_fields"
							onclick="addInput('dynamicInput');"
							class="btn btn-primary btn-block" style="line-height: 18px;">Add
							Quantity</button>
					</div>

				</div>
		</div>
		<div class="col-md-12">
			<div class="col-md-5"></div>
			<div class="col-md-2">
				<div class="">
					<br>
						<input type="submit" class="btn btn-success btn-block"></input>
				</div>
			</div>
			<div class="col-md-5"></div>
		</div>
		</form>
	</div>
	</table>
	
	
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
			Copyright © 2017 Kosur Rythu Mitra. All Rights Reserved | Design by <a
				href="#" target="_blank">Kosuri Soft Labs Pvt Ltd</a>
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