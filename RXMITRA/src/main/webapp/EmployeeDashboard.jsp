<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
<!--//skycons-icons-->
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
							href='./setSalesPriceSearchField.jsp'>RECEIVED REQUEST</a></li>
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
