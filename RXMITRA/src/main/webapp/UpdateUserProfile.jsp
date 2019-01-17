<%@ page language="java" isELIgnored="false"
	import="com.rxmitra.utils.*,com.rxmitra.service.*,com.rxmitra.dao.*,com.rxmitra.bean.*,java.util.*"
	contentType="text/html; charset=ISO-8859-1" isErrorPage="true"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>RX mitra </title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="./css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function CheckNumeric(e) {
	 
    if (window.event) // IE 
    {
        if ((e.keyCode < 48 || e.keyCode > 57) & e.keyCode != 8) {
            event.returnValue = false;
            return false;

        }
    }
    else { // Fire Fox
        if ((e.which < 48 || e.which > 57) & e.which != 8) {
            e.preventDefault();
            return false;

        }
    }
}
function validateForm()
{
	if(document.getElementById("mobile").value.length !=10 )
	{
		alert("Please enter 10 digits only");
		document.getElementById("mobile").focus();
		return false;
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
		<div class="rightsidebar-menu"></div>
		<div class="left-content">
			<div class="mother-grid-inner"></div>

			<div class="inner-block">
				<div class="inbox">
					<div class="profile_details"></div>
					<div class="col-md-12 mailbox-content  tab-content tab-content-in">


						<div class="">
							<jsp:include page="./User.jsp"></jsp:include>
							
							<div align="center">
								<font color="blue" style="">${updateSuccess }</font>
							</div>
							<form action="./updateUserProfile"
								onsubmit="return validateForm()" method="post">

								<table class="table table-bordered">
									<tr>
										<th colspan="6"
											style="padding: 5px; background: #5aa320; color: #fff; text-align: center; font-size: 20px; border-bottom: 2px solid #febf10;">PROFILE
											UPDATE</th>
									</tr>
									<tr>
										<td colspan="2">
											<%
												String returnString = "";
												try {
													returnString = request.getAttribute("returnString").toString();
													out.println(request.getParameter("emp_name") + " <font color=blue>" + returnString + "</font>");
												} catch (Exception e) {
												}
											%>
										</td>
									</tr>


									<tr>
										<td style="font-weight: 500;">USER NAME</td>
										<td colspan="3"><input type="text" class="form-control"
											name="firstName" required
											value="${userRegistration.firstName }" size="50" /></td>
										<input type="hidden" name="registrationId" required
											value="${userRegistration.registrationId }" maxlength="30" />
										<input type="hidden" name="password" required
											value="${userRegistration.password }" maxlength="30" />
										<input type="hidden" name="status" required
											value="${userRegistration.status }" maxlength="30" />
										<input type="hidden" name="verified" required
											value="${userRegistration.verified }" maxlength="30" />
										<input type="hidden" value="<%=from%>" name="from" id="from" />

									</tr>

									<tr>
										<td style="font-weight: 500;">LAST NAME</td>
										<td colspan="3"><input type="text" class="form-control"
											name="lastName" required
											value="${userRegistration.lastName }" size="50" /></td>
									</tr>

									<tr>
										<td style="font-weight: 500;">PHONE NO</td>
										<td colspan="3"><input type="text" class="form-control"
											name="mobileNo" required
											value="${userRegistration.mobileNo }" size="50" /></td>
									</tr>

									<tr>
										<td style="font-weight: 500;">EMAIL</td>
										<td colspan="3"><input type="text" class="form-control"
											name="emailId" required value="${userRegistration.emailId }"
											size="50" readonly="readonly" /></td>
									</tr>

									<tr>
										<td style="font-weight: 500;">REGISTRATION DATE</td>
										<td colspan="3"><input type="text" class="form-control"
											name="registrationDate" required
											value="${userRegistration.registrationDate }" size="50" /></td>
									</tr>

									<tr>
										<td style="font-weight: 500;">PINCODE</td>
										<td colspan="3"><input type="text" class="form-control"
											name="pincode" required value="${userRegistration.pincode }"
											size="50" /></td>
									</tr>

									<tr>
										<td style="font-weight: 500;">STATE</td>
										<td colspan="3"><input type="text" class="form-control"
											name="state" required value="${userRegistration.state }"
											size="50" /></td>
									</tr>
									<tr>
										<td style="font-weight: 500;">DISTRICT</td>
										<td colspan="3"><input type="text" class="form-control"
											name="district" required
											value="${userRegistration.district }" size="50" /></td>
									</tr>
									<tr>
										<td style="font-weight: 500;">GST NO</td>
										<td colspan="3"><input type="text" class="form-control"
											name="gstNo" required value="${userRegistration.gstNo }"
											size="50" /></td>
									</tr>
									<tr>
										<td style="font-weight: 500;">BUSINESS NAME</td>
										<td colspan="3"><input type="text" class="form-control"
											name="businessName" required
											value="${userRegistration.businessName }" size="50" /></td>
									</tr>
									<tr>
										<td style="font-weight: 500;">BUSINESS TYPE</td>
										<td colspan="3"><select class="color"
											class="form-control" name="businessType" required
											id="businessType" style="width: 100%">
												<option>${userRegistration.businessType }</option>
												<option>DISTRIBUTER</option>
												<option>MANUFACTURER</option>
												<option>RETAILER</option>
										</select></td>
										<%-- <input type="text" class="form-control" name="businessType" required value="${userRegistration.businessType }"size="50"/> </td> --%>
									</tr>

									<tr>
										<td colspan="4" align="center"><input type="submit"
											class="btn btn-success" value="UPDATE"
											style="width: 20%; font-weight: 500; font-size: 15px" /></td>
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
					© 2017 Kosur Rythu Mitra. All Rights Reserved | Design by <a
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
            
$(".sidebar-icon").click(function() {                
  if (toggle)
  {
    $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
    $("#menu span").css({"position":"absolute"});
  }
  else
  {
    $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
    setTimeout(function() {
      $("#menu span").css({"position":"relative"});
    }, 400);
  }               
                toggle = !toggle;
            });
</script>
	<!--scrolling js-->
	<script src="dashboard-js/js/jquery.nicescroll.js"></script>
	<script src="dashboard-js/js/scripts.js"></script>
	<!--//scrolling js-->
	<script src="dashboard-js/js/bootstrap.js"> </script>

	<!-- mother grid end here-->
</body>
</html>