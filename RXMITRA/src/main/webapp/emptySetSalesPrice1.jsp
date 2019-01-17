<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false" import="com.rxmitra.bean.*" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>RX mitra</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="./css/style.css" rel="stylesheet" type="text/css" />


<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
   



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
						<div class="panel panel-orange" style="padding: 2px 13px;">

							<div class="for4">

								<div class="">
									<%
										String shopid = (String) request.getParameter("shopid");
									%>

									<form action="./setSalesPrice?update=yes" method="post">
								
								<div colspan="12" style="padding: 5px;background: #5aa320;color:#fff;text-align: center;font-size: 20px;border-bottom: 2px solid #febf10;">
	                                 <tr>
	                                   <th >SET SALES PRICE</th>
	                                 </tr>
	                                 </div>
	                                 <br />
									<div class="form-group col-md-3 col-sm-3">
										<label for="pincode">SKU ID :</label> <input type="text"
											class="form-control" name="skuid" id="skuid"
											placeholder="Enter Your SKU ID" />
											 <input type="hidden"
											class="form-control" name="pageid" id="pageid"/>
									</div>
									<div class="form-group col-md-3 col-sm-3">
										<label for="pincode">MANUFACTURER:</label> <input type="text"
											class="form-control" name="manufacturer" id="manufacturer"
											placeholder="Enter Your manufacturer" />
									</div>
									<div class="form-group col-md-3 col-sm-3">
										<label for="pincode">PRODUCT NAME :</label> <input type="text"
											class="form-control" name="productName" id="productName"
											placeholder="Enter Your Product Name" />
									</div>
									

									<div class="form-group col-md-2 col-sm-2">
										<label for="pincode" style="color: #fff;">SK</label><br>
											<button type="submit" class="btn btn-success btn-block"
												name="sub" id="box"
												style="font-size: 20px; line-height: 19px;">Search
											</button>
											<br>
											<br>
									</div>
									
								</form>
								
								
								
								<div class="col-md-12">
		                     <h3
		                      align="center" style="color: purple;">${message}</h3>
		                    </div>
								</div>
								
								
								
								
                             
                             

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
 <script type="text/javascript">
        $(function () {
            $('.myCheck').change(function () {
                if ($(this).is(":checked")) {
                    $('#text').removeAttr('disabled');
                }
                else {
                    var isChecked = false;
                    $('.myCheck').each(function () {
                        if ($(this).is(":checked")) {
                            $('#text').removeAttr('disabled');
                            isChecked = true;
                        }
                    });
                    if (!isChecked) {
                        $('#text').attr('disabled', 'disabled');
                    }
                }
 
 
            })
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
