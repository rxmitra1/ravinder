<%@ page language="java" isELIgnored="false"
	import="com.rxmitra.dao.*,com.rxmitra.bean.*,com.rxmitra.bean.*,com.rxmitra.service.*,java.util.*"
	contentType="text/html; charset=ISO-8859-1" isErrorPage="true"
	pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>RxMitra | Admin</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="./resources/css/style.css" rel="stylesheet" type="text/css" />
<style>
.tr1{
    text-align: center;
    background: #5aa320;
    border: 1px solid #5aa320;
    border-radius: 3px;
    color: #fff;
    font-size: 22px;
    padding: 3px 0;
}
label{
  align-content:font-size: 15px;
    font-family: sans-serif;
    font-weight: normal !important;
    }
</style>
</head>
<body>

	<section style="background-color:#febf10; height:3px;"></section>
	<jsp:include page="./Admin_top.jsp" />

	<div class="page-container">
		<div class="sidebar-menu">
			<jsp:include page="./AdminDashboard.jsp" /></div>
		<div class="rightsidebar-menu"></div>
		<div class="left-content">
			<div class="mother-grid-inner"></div>

			<div class="inner-block">
				<div class="inbox">
					<div class="profile_details"></div>
					
					<div  align="center">
			            <font style='color: blue;  font-size: medium;'>${success}</font>
			              <font style='color: red; font-size: medium;'>${failure}</font></div>
					
					<div class="col-md-12 mailbox-content  tab-content tab-content-in" style="margin: 19px 13px;">


						<div style="padding: 2px 13px;">
							<div class="">
								
								
								
								
								
								
								<form action="./addAdminBrands" method="post">
									<div class="tr1">
	                                 
	                                   <span>VIEW BRANDS</span>
	                                 
	                                 </div>
	                                 <br />


                                  
									
											<div class="col-md-12" id="one">
											 
											<table
										class="col-md-9 table-bordered table-striped table-condensed cf">
										
										<thead class="cf" style="font-size: 17px; color: #5aa320;">
											<tr>
                                                <th class="numeric">BrandName</th>
												<th class="numeric">Category</th>
												<th class="numeric">SubCategory</th>
												
												


											</tr>
										</thead>
										<tbody>
										<c:forEach items="${adminBrands }" var="adminBrands">
										<tr>
										<td>${adminBrands.brandName }</td>
										<td>${adminBrands.category }</td>
										<td>${adminBrands.subCategory }</td>
										
										</tr>
										</c:forEach>
										</tbody>
									   </table>
										    
											</div>
											
								</form>



                             <table>
                            
									<tr>
									
										<td>Pages</td>
										<c:forEach items="${count }" var="count">
											<td>
												<form action="./viewAdminBrands" method="get">
													<input type="hidden" name="pageid" value="${count}"/>
													

														<button type="submit" class="btn btn-link">
															<c:out value="${count}" />
														</button>
												</form>
											</td>
										</c:forEach>
									</tr>
								</table>
							</div>


						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>

			<div class="copyrights">
				<p>
					© 2017 Kosuri Rythu Mitra. All Rights Reserved | Designed by <a
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