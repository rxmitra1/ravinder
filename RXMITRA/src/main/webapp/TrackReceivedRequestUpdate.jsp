
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


<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>


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
.to1{
    
    border: 1px solid #d9534f;
    background: #d9534f;
    width: 100px;
    border-radius: 4px;
    height: 29px;
    color: #fff;
    font-size: 18px;
}
</style>


	
<script>
	$(function () {
    $("#btnAdd").bind("click", function () {
        var div = $("<tr />");
        div.html(GetDynamicTextBox(""));
        $("#TextBoxContainer").append(div);
    });
    $("body").on("click", ".remove", function () {
        $(this).closest("tr").remove();
    });
});
function GetDynamicTextBox(value) {
/*     return '<div class="row"><div class="col-md-11"><div class="col-md-3" style="padding: 0 0px;"><input name = "DynamicTextBox" type="text" placeholder="Your medicine Name" value = "' + value + '" class="form-control" /></div>' + '<div class="col-md-3" style="padding: 0 0px;"><input name = "DynamicTextBox" type="text" placeholder="Your Quantity" value = "' + value + '" class="form-control" /></div>' + '<div class="col-md-3" style="padding: 0 0px;"><input name = "DynamicTextBox" type="text" placeholder="Your MRP" value = "' + value + '" class="form-control" /></div>' + '<div class="col-md-3" style="padding: 0 0px;"><input name = "DynamicTextBox" type="text" placeholder="Your Discont Price" value = "' + value + '" class="form-control" /></div></div>' + '<div class="col-md-1"><div class="col-md-12"><button type="button" class="btn btn-danger remove">Delete</button></div></div></div>'
 */    return '<div class="col-md-11" style="margin: 7px -14px;"><div class="col-md-3" style="padding: 0 10px;"><input name = "medicineName" type="text" placeholder="Your medicine Name" value = "' + value + '" class="form-control" /></div>' + '<div class="col-md-3" style="padding: 0 10px;"><input name = "quantity" type="text" placeholder="Your Quantity" value = "' + value + '" class="form-control" /></div>' + '<div class="col-md-3" style="padding: 0 10px;"><input name = "mrp" type="text" placeholder="Your MRP" value = "' + value + '" class="form-control" /></div>' + '<div class="col-md-3" style="padding: 0 10px;"><input name = "discountPrice" type="text" placeholder="Your Discont Price" value = "' + value + '" class="form-control" /></div></div>' + '<div class="col-md-1" style="margin: 7px 0px;"><button type="button" class="btn btn-danger remove">Delete</button></div>'

}
</script>
</head>
<body ng-app="ngToggle" ng-controller="AppCtrl">

	
	<section style="background-color:#febf10; height:3px;"></section>
	<jsp:include page="./Employee_top.jsp" />

	<div class="page-container">

		<div class="sidebar-menu">
			<jsp:include page="./EmployeeMenu.jsp">
			
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


							<h4 class="box">Track Order Status</h4>
							<br />
							<form action="./trackViewReceivedRequestsByDates" method="post">
								<div class="col-md-10">

									<div class="form-group col-lg-3">
										<label>Form Date :</label> <input type="date" name="fromDate"
											class="form-control" id="fromDate" value="${ fromDate}"
											placeholder="DD/MM/YYYY" />
									</div>

									<div class="form-group col-lg-3">
										<label>To Date :</label> <input type="date" name="toDate"
											class="form-control" id="toDate" value="${ toDate}"
											placeholder="DDMM/YYYY" />
									</div>

									<div class="form-group col-lg-3">
										<label>Pincode :</label> <input type="text" name="pincode"
											class="form-control" id="pincode" value="${pincode }"
											placeholder="Enter Your pincode" />
									</div>

									<div class="form-group col-lg-3">
										<label>Member Id :</label> <input type="text" name="requestId"
											class="form-control" id="requestId" value="${requestId }"
											placeholder="Your Member Id" />
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

                                              <div align="center">
													<font color="blue" >${updateSuccess }</font>
											  </div>
									<form action="./updateTrackOrderStatus" method="post">


								<div id="no-more-tables">



									<table
										class="col-md-12 table-bordered table-striped table-condensed cf">
										<thead class="cf" style="font-size: 17px; color: #5aa320;">
											<tr>

												<th class="numeric">Order Id</th>
												<th class="numeric">Request Id</th>
												<th class="numeric">Member Id</th>
												<th class="numeric">Order Status</th>
												<th class="numeric">Enable Order</th>


											</tr>
										</thead>
										
										
										
										
										<tbody>
										
												<tr>
												<td data-title="Request Id" class="numeric">
														${orderId }</td>
													<td data-title="Request Id" class="numeric">
														${receivedRequestData.requestId }
														
										 <!--============================ Doctor and Medicine details fields start ================-->
														
														
								
														
														
											 <!--============================ Doctor and Medicine details fields End ================-->
														
														
														
														
														
														
														
														
														</td>
													
													<td data-title="Member Id" class="numeric"><a href="#"
														data-toggle="modal"
														data-target="#myModal${receivedRequestData.requestId }"
														id="one">${receivedRequestData.requestId }</a>
														
														
														
														 <!--============================ Adrress Popup start ================-->

														<div class="modal"
															id="myModal${receivedRequestData.requestId }">

															<div class="modal-dialog">
																<div class="modal-content">

																	<!-- Modal Header -->
																	<div class="modal-header">
																		<h4 class="modal-title">Received Request</h4>
																		<button type="button" class="close"
																			data-dismiss="modal">&times;</button>
																	</div>
																	<div class="modal-body">
																		<div class="col-md-12">
																			<div class="form-group col-lg-12">
																				<label>Your Name</label> <input type="text"
																					name="name" class="form-control"
																					value="${receivedRequestData.name }"
																					readonly="readonly" />
																			</div>

																			<div class="form-group col-lg-12">
																				<label>Address</label>
																				<textarea class="form-control" rows="2"
																					name="message" readonly="readonly">
   Address:
        H.No: <c:out value="${receivedRequestData.flatNo }"></c:out>, <c:out
																						value="${receivedRequestData.city }"></c:out>, <c:out
																						value="${receivedRequestData.district }"></c:out>, <c:out
																						value="${receivedRequestData.state }"></c:out></textarea>
																			</div>

																			<div class="form-group col-lg-12">
																				<label>Contact No</label> <input type="text"
																					name="contact" class="form-control"
																					value="<c:out value="${receivedRequestData.mobile }"></c:out>"
																					readonly="readonly" />
																			</div>
                                                                            <div class="form-group col-lg-12">
																				<label>Email Id</label> <input type="text"
																					name="contact" class="form-control"
																					value="<c:out value="${receivedRequestData.emailId }"></c:out>"
																					readonly="readonly" />
																			</div>

																			<div class="form-group col-lg-12">
																				<label>Pincode :</label> <input type="text"
																					name="pincode" class="form-control" id=""
																					value="<c:out value="${receivedRequestData.pincode }"></c:out>"
																					readonly="readonly" />
																			</div>

																			<div class="col-md-4"></div>

																			<div class="col-md-4"></div>

																		</div>
																	</div>

																	<!-- Modal footer -->
																	<div class="modal-footer">
																		<button type="button" class="btn btn-danger"
																			data-dismiss="modal">Close</button>
																	</div>

																</div>
															</div>

														</div>
														
														
														
														 <!--===================== Adrress Popup End =====================--></td>
														 
														 
														 
													<td data-title="Order Status" class="numeric" >
													
													
													<select id="orderStatus" name="status" ng-disabled="isDisabled" model="isDisabled"
														class="form-control" >
														<option  value="">${receivedRequestData.status}</option>
															<option  value="Pending">Pending</option>
															<option value="Order Process">Order process</option>
															<option value="Delivery">Delivery</option>
															<option value="Rejected">Rejected</option>
													</select>
													
													<input type="hidden" name="orderId" value="${orderId }"></input>
													<input type="hidden" name="requestId" value="${receivedRequestData.requestId }"></input>
													
													</td>

                                                      <td data-title="enable" class="numeric">
                                                         
                                                       <input type="button" class="to1" id="anOtherButton" value="Click" ng-click="disableClick(enable)" />

                                                      </td>
                                                       
													</tr>
										
										</tbody>
										
										
									</table>
									          
												

										      <div >

		
											<div class="col-md-12">
												<div class="col-md-4"></div>
												<div class="col-md-2">
													<div class="">
													<br> <a href="./TrackReceivedRequest" class="btn btn-danger btn-block">
														Back</a>
													</div>
												</div>
												
												<div class="col-md-2">
													<div class="">
													<br> 
														<input type="submit" name="submit" value="Update"
															class="btn btn-success btn-block"></input>
													</div>
												</div>
												<div class="col-md-4"></div>
											</div>
											
										</div>
												
								</div>
                                  </form>    

								<!--========  row section ============ -->
								
								

								
								
								
								
								
								
                             
								


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
					Copyright � 2019 Kosuri RxMitra. All Rights Reserved | Design by
					<a href="#" target="_blank">Kosuri Soft Labs Pvt Ltd</a>
				</p>
			</div>
		</div>
		

		<div class="clearfix"></div>
	</div>
	<!--slide bar menu end here-->
	
	 <script>
	 angular.module('ngToggle', [])
	    .controller('AppCtrl',['$scope', function($scope){
	    $scope.isDisabled = true;
	    $scope.toggle=true;
	    $scope.enable="enable";
	    $scope.disableClick = function(enable) {      
		    $scope.enable=$scope.toggle ? 'disable' : 'enable';
	
		  

		   
	        $scope.isDisabled =!$scope.isDisabled;
	        return false;
	    }
	}]);
      </script>
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