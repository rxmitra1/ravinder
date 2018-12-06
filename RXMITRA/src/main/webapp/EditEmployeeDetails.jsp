<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isErrorPage="true" pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.rxmitra.utils.*,com.rxmitra.dao.*,com.rxmitra.service.*,com.rxmitra.bean.*,java.util.*"
	isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>RX Mitra | Edit Employee</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
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
</style>
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
							<div class="col-md-12">
								<h4 class="box" style="text-align: center;">Edit Employee
									Details</h4>
								<br>
							</div>
							<div class="clearfix"></div>

							<form action="./viewEmployeeInEditPage" method="post">
								<div class="col-md-12">
									<p>
										<br>
									</p>
									<div class="form-group col-lg-2">
										<label>Employee Id :</label> <input type="employeeId"
											name="empId" class="form-control" id="empId"
											value="${employeeDetails.empId }"
											placeholder="Enter Employee Id">
									</div>

									<div class="form-group col-lg-3">
										<label>Employee Name :</label> <input type="employeeName"
											name="empName" class="form-control" id="empName"
											value="${employeeDetails.empName }"
											placeholder="Enter Employee Name"]>
									</div>
                                      <div class="form-group col-lg-2">
										<label>Mobile No :</label> <input type="text"
											name="mobileNo" class="form-control" id="mobileNo" value="${employeeDetails.mobileNo }"
											placeholder="Enter Employee Name">
									</div>
									
									<div class="form-group col-lg-3">
										<label>Email Id :</label> <input type="text"
											name="emailId" class="form-control" id="emailId" value="${employeeDetails.emailId }"
											placeholder="Enter Employee Name"]>
									</div>
									<!-- <div class="form-group col-lg-3">
										<label>Pincode :</label> <input type="pincode" name="pincode"
											class="form-control" id="" value=""
											placeholder="Enter Your pincode">
									</div> -->

									<div class="form-group col-lg-2">
										<label style="color: #fff !important;">g</label> <input
											type="submit" value="Search"
											class="btn btn-success btn-block"></button><br />
									</div>


								</div>
							</form>
							<div id="no-more-tables">
							<div align="center">
                              <font style='color: blue; font-weight: 600; font-size: medium;'>${updateSuccess}</font>
                            </div>
								<form action="./editEmployeeDetails" method="post">
									<table
										class="col-md-12 table-bordered table-striped table-condensed cf">
										<thead class="cf" style="font-size: 17px; color: #5aa320;">

											<tr>

												<th class="numeric">Employee Name</th>
												<th class="numeric">Mail Id</th>
												<th class="numeric">Mobile No</th>
												<th class="numeric">Education</th>
												<th class="numeric">Password</th>
												<th class="numeric">Active/InActive</th>
												<th class="numeric"></th>
											</tr>
										</thead>
										<tbody>

											<tr>
												<td data-title="Name" class="numeric"><input
													type="text" class="form-control" name="empName"
													value="${employeeDetails.empName }" /> <input type="hidden"
													class="form-control" name="empId"
													value="${employeeDetails.empId }" /> <input type="hidden"
													class="form-control" name="empSurName"
													value="${employeeDetails.empSurName }" /> <input
													type="hidden" class="form-control" name="completedYear"
													value="${employeeDetails.completedYear }" /> <input
													type="hidden" class="form-control" name="empDate"
													value="${employeeDetails.empDate }" />
													 <input
													type="hidden" class="form-control" name="userId"
													value="${employeeDetails.userId }" />
													<input
													type="hidden" class="form-control" name="status"
													value="${employeeDetails.status }" />
													</td>
													
													
												<td data-title="MailId" class="numeric"><input
													type="text" class="form-control" name="emailId"
													value="${employeeDetails.emailId}" /></td>
												<td data-title="Mobile " class="numeric"><input
													type="text" class="form-control" name="mobileNo"
													value="${employeeDetails.mobileNo }" /></td>
												<td data-title="Education" class="numeric"><input
													type="text" class="form-control" name="education"
													value="${employeeDetails.education }" /></td>
												<td data-title="shopid" class="numeric"><input
													type="text" class="form-control" name="password"
													value="${employeeDetails.password }" /></td>
													
												
												<td data-title="active" class="numeric">  
                        
                                                      <select class="form-control">
						                                  <option value="volvo">Active</option>
						                                  <option value="saab">InActive</option>
						                                 
						                              </select>
                                               </td>
												
												
												
												<td data-title="Update" class="numeric"><input
													type="submit" value="Update"
													class="btn btn-success btn-block"></input></td>

											</tr>



										</tbody>
									</table>
								</form>
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