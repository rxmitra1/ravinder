<%@ page language="java"
	import="com.rxmitra.dao.*,com.rxmitra.bean.*,com.rxmitra.bean.*,com.rxmitra.service.*,java.util.*"
	isELIgnored="false" errorPage="true"%>
<!DOCTYPE HTML>
<html>
<head>
<title>RX Mitra | Menu</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<link href="dashboard-css/css/bootstrap.css" rel="stylesheet"
	type="text/css" media="all">
<!-- Custom Theme files -->
<link href="dashboard-css/css/style.css" rel="stylesheet"
	type="text/css" media="all" />
<!--js-->
<script src="dashboard-js/js/jquery-2.1.1.min.js"></script>
<!--icons-css-->
<link href="dashboard-css/css/font-awesome.css" rel="stylesheet">
<!--Google Fonts-->
<link href='//fonts.googleapis.com/css?family=Carrois+Gothic'
	rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Work+Sans:400,500,600'
	rel='stylesheet' type='text/css'>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<%
		String employeeid = (String) session.getAttribute("referenceid");
		//String shopid=new ShopDetails().getEmployeeShopDetails(employeeid).getSHOP_ID();
	%>

	<!--slider menu-->
	<div class="sidebar-menu">
		<div class="logo">
			<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span>
			</a> <a href="#"> <span id="logo"></span> <!--<img id="logo" src="" alt="Logo"/>-->
			</a>
		</div>
		<div class="menu">
			<ul id="menu">
				<li><a href="#"><i class="fa fa-male"
						style="position: absolute;"></i><span style="margin: 0 24px;">PROFILE</span><span
						class="fa fa-angle-right" style="float: right"></span></a>
					<ul>
						<li><a href='./viewUserProfile?update=no'>VIEW</a></li>
						<li><a href='./viewUserProfile?update=yes'>UPDATE</a></li>
						<li><a href='./ChangePassword.jsp'>CHANGE PASSWORD</a></li>
					</ul></li>


				<li><a href="#"><i class="fa fa-pie-chart"
						style="position: absolute;"></i><span style="margin: 0 24px;">BRAND
							MANAGEMANT</span><span class="fa fa-angle-right" style="float: right"></span></a>
					<ul id="menu-academico-sub">
						<li id="menu-academico-avaliacoes"><a href='/RXMITRA/add'>ADD
								VENDOR</a></li>
						<li id="menu-academico-boletim"><a
							href='/RXMITRA/DisplayVendorsToUpdateProducts.jsp?from=EU'>UPDATE/ADD
								PRODUCTS</a></li>
						<!-- <li id="menu-academico-avaliacoes"><a
							href='/RXMITRA/AddProduct'>ADD PRODUCTS</a></li> -->

						<li id="menu-academico-boletim"><a
							href='/RXMITRA/ViewProductsByVendorName.jsp'>VIEW PRODUCTS</a></li>
						<li id="menu-academico-boletim"><a
							href='/RXMITRA/GetVendorDetails?pageid=1'>VIEW VENDORS</a></li>
						<li id="menu-academico-boletim"><a
							href='/RXMITRA/uploadExcelDemo'>UPLOAD PRODUCT FROM EXCEL</a></li>
						<!-- <li id="menu-academico-boletim" ><a href="#">SEARCH</a></li> -->
					</ul></li>


                   <li><a href="#"><i class="fa fa-pie-chart"
						style="position: absolute;"></i><span style="margin: 0 24px;">SEARCH SUPPLIER
							</span><span class="fa fa-angle-right" style="float: right"></span></a>
					<ul id="menu-academico-sub">
						<li id="menu-academico-avaliacoes"><a href='/RXMITRA/add'>SEARCH BY DISTRIBUTOR
								</a></li>
						<li id="menu-academico-boletim"><a
							href='/RXMITRA/DisplayVendorsToUpdateProducts.jsp?from=EU'>SEARCH BY BRAND
								</a></li>
						
						<!-- <li id="menu-academico-boletim" ><a href="#">SEARCH</a></li> -->
					</ul></li>

				<li><a href="#"><i class="fa fa-shopping-cart"
						style="position: absolute;"></i><span style="margin: 0 24px;">PURCHASE
							MANAGEMANT</span><span class="fa fa-angle-right" style="float: right"></span></a>
					<ul id="menu-academico-sub">
						<li id="menu-academico-avaliacoes"><a href='./DisplayVendors'>ADD
								INVOICE</a></li>
						<li id="menu-academico-boletim"><a
							href='./UpdateInvoiceByInvoiceNoField.jsp'>UPDATE INVOICE </a></li>
						<li id="menu-academico-boletim"><a
							href='./DeleteInvoiceByInvoiceNo.jsp'>DELETE INVOICE </a></li>
						<li id="menu-academico-boletim"><a
							href='./DisplayVendorsToViewInvoice.jsp'>VIEW INVOICE BY
								VENDOR</a></li>
						<li id="menu-academico-boletim"><a
							href='./DisplayVendorInvoiceBySkuid1.jsp'>VIEW INVOICE BY
								SKUID</a></li>

					</ul></li>



				<li><a href="#"><i class="fa fa-sticky-note-o"
						style="position: absolute;"></i><span style="margin: 0 24px;">STOCK
							MANAGEMANT</span><span class="fa fa-angle-right" style="float: right"></span></a>
					<ul id="menu-academico-sub">
						<li id="menu-academico-boletim"><a
							href='./DisplayVendorInvoiceBySkuid.jsp'>STOCK VIEW</a></li>
						<li id="menu-academico-boletim"><a
							href='./RaiseStockRequestF.jsp?from=E'>RAISE STOCK REQUEST</a></li>
						<li id="menu-academico-boletim"><a
							href='./ViewStockRequests?from=E&shopid'>VIEW STOCK REQUEST</a></li>
					</ul></li>



				<li><a href="./SearchEFarmers.jsp"><i
						class="fa fa-line-chart" style="position: absolute;"></i><span
						style="margin: 0 24px;">SALES MANAGEMENT</span><span
						class="fa fa-angle-right" style="float: right"></span></a>
					<ul id="menu-academico-sub">
						<li id="menu-academico-boletim"><a
							href='./DisplayVendorInvoiceBySkuidInSales.jsp'>PUBLISH
								PRODUCTS</a></li>
						<li id="menu-academico-boletim"><a
							href='./setSalesPriceSearchField.jsp'>SET SALES PRICE</a></li>
					</ul>
				<li><a href="#"><i class="fa fa-sticky-note-o"
						style="position: absolute;"></i><span style="margin: 0 24px;">PRESCRIPTION
							MANAGEMANT</span><span class="fa fa-angle-right" style="float: right"></span></a>
															<ul id="menu-academico-sub">
							
							<li id="menu-academico-boletim"><a
							href='./getReceivedRequestData'>RECEIVED REQUEST</a></li>
							<li id="menu-academico-boletim"><a
							href='./TrackReceivedRequest'>TRACK ORDER STATUS</a></li>
							</ul>
				</li>


				<li><a href="#"><i class="fa fa-sticky-note-o"
						style="position: absolute;"></i><span style="margin: 0 24px;">EMPLOYEE MANAGEMENT
							</span><span class="fa fa-angle-right" style="float: right"></span></a>
							
								<ul id="menu-academico-sub">
						<li id="menu-academico-boletim"><a
							href='./AddEmployee.jsp'>ADD EMPLOYEE
								</a></li>
						<li id="menu-academico-boletim"><a
							href='./EditEmployee.jsp'>EDIT EMPLOYEE</a></li>
					</ul>
				</li>


			</ul>
		</div>
	</div>
	<div class="clearfix"></div>

	<!--slide bar menu end here-->

	<!--scrolling js-->
	<script src="dashboard-js/js/jquery.nicescroll.js"></script>
	<script src="dashboard-js/js/scripts.js"></script>
	<!--//scrolling js-->
	<script src="dashboard-js/js/bootstrap.js">
		
	</script>
	<!-- mother grid end here-->
</body>
</html>
