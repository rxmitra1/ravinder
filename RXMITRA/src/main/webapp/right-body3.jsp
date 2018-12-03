<%@ page language="java"
	import="com.rxmitra.dao.*,com.rxmitra.bean.*,com.rxmitra.bean.*,com.rxmitra.service.*,java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<title>RX Mitra</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<link href="dashboard-css/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- Custom Theme files -->
<link href="dashboard-css/css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!--js-->
<script src="dashboard-js/js/jquery-2.1.1.min.js"></script> 
<!--icons-css-->
<link href="dashboard-css/css/font-awesome.css" rel="stylesheet"> 
<!--Google Fonts-->
<link href='//fonts.googleapis.com/css?family=Carrois+Gothic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Work+Sans:400,500,600' rel='stylesheet' type='text/css'>
<!--//skycons-icons-->
</head>
<body>	
<div class="page-container" style="min-height: 800px;">	
   <div class="left-content">
	   <div class="mother-grid-inner">
            <!--header start here-->
            
	</div>
<!--heder end here-->
<!-- script-for sticky-nav -->
		
		<!-- /script-for sticky-nav -->
<!--inner block start here-->
<div class="inner-block">
    <div class="inbox">
    	 <div class="profile_details">  
            
            </div>
          
           </div> 
         
       </div>
      
          <div class="clearfix"> </div>     
   </div>
</div>

<!--inner block end here-->
 <div class="copyrights">
	 <p>© 2017 Kosuri Rythu Mitra. All Rights Reserved | Designed by  <a href="#" target="_blank">Kosuri Soft Labs Pvt Ltd</a> </p>
</div>

<!--slider menu-->
    
	<div class="clearfix"> </div>
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
