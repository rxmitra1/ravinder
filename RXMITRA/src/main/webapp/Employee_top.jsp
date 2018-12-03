<%@ page language="java"
	import="com.rxmitra.dao.*,com.rxmitra.bean.*,com.rxmitra.bean.*,com.rxmitra.service.*,java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<title>RX Mitra |Top</title>
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



<style>
@import url('https://fonts.googleapis.com/css?family=Roboto|Source+Sans+Pro|Spirax');
</style>

<style>
.dropbtn {
       background-color: #f8f8f8;
      color: #4a9013;
    padding: 8px;
    font-size: 15px;
    border: none; 
    cursor: pointer;
        padding: 0 0;
}
.dropbtn:hover{
    background-color: #f8f8f8;
       color: #4a9013;
    padding: 8px;
    font-size: 15px;
    border: none; 
    cursor: pointer;
        padding: 0 0;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
        display: none;
    position: absolute;
    background-color: #ffffff;
    min-width: 120px;
    box-shadow: 0px 4px 6px 0px rgba(0,0,0,0.2);
    z-index: 1;
      
}

.dropdown-content a {
  color: #3c763d;
    padding: 10px 15px;
    text-decoration: none;
    display: block;
    font-size: 18px;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #f8f8f8;
}
</style>



<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script>
    var lastActiveTime = new Date().getTime();
    $(document).ready(function() {
        $('body').bind('click mousemove keypress scroll resize', function() {
           lastActiveTime = new Date().getTime();
           });
           setInterval(checkIdleTime, 120000); // 30 sec
    });

     function checkIdleTime(){
      var diff = new Date().getTime() - lastActiveTime;
   
           if( diff < 120000){   //2 min of inactivity
            window.location.href ="./logout"
           }else{
               $.ajax({url: '/refreshSession', error: function(data, status, xhr){
                    alert("cannot refresh session on server: "+xhr);
                    window.location.reload();}
                  });
           }
    }
  </script>
  -->

</head>
<body>	

<div id="dsh">
<div class="">
<nav class="navbar-default">
  <div class="container-fluid">
    <div class="navbar-header2">
  <!--   <div class="logo_text">Rx<span>Mitra</span></div> -->
      <div class="col-md-4 "><img src="images/rxmitralogo.png" alt="Rythumitra"></div> 
    </div>
 <%
  // String employeeId=(String)session.getAttribute("referenceId");
  // String  shopid=new ShopDetails().getEmployeeShopDetails(employeeid).getSHOP_ID();
			//	HashMap<String,String> shm=new ShopHM().getShopName();
				//<String,String> shm1=new ShopHM().getShopCity();
				//<String,String> ehm=new EmployeeHM().getEmployeeName();
				
				if(session.getAttribute("referenceId")!=null){
				
				
   %>
   
 <div class="col-md-4 form4"><h3 class="for2"><% 
  out.println(session.getAttribute("userType")); 
  %> DASH BOARD</h3></div>
  <!-- <div class="col-md-4 form4"> <h3 class="for3"><a href="./logout"> <input type="submit" class="btn btn-success" value="LOGOUT" /></a></h3> -->  
 
  <div class="col-md-4 form4"> <h3>
   <div id="" style="float:right;">
  <div class="dropdown">
  <button class="dropbtn"><i class="fa fa-user"></i>
  <% 
  out.println(session.getAttribute("userName")); 
  %>
  </button><br><button class="dropbtn">
   <% 
  out.println(session.getAttribute("userType")); 
  %>
  
  </button>,<button class="dropbtn"> <i class="fa fa-caret-down" aria-hidden="true"></i></button>
      <div class="col-md-">
          <div class="col-md-6"></div>
          <div class="col-md-5">
           <div class="dropdown-content">
    <a href="./logout"><i class="fa fa-sign-out" aria-hidden="true"></i>  Logout</a>
  </div>
          </div>
      </div>
 </div>
</div></h3> 
</div>
 <%
	}else{
%>
<jsp:forward page="./login.jsp"/>

<%

	}
%>
 
 <%--   <div id="for5">
   <tr><td style="font-weight: 500;"><%=ehm.get(employeeid) %>,&nbsp;&nbsp;</td>
   <td style="font-weight: 500;"><%=shm.get(shopid)%>-<%=shm1.get(shopid)%></td></tr>
   </div> --%>
</div></nav>
  </div>
</div>
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








<%-- <%@ page language="java" import="com.rythumitra.dao.*,com.rythumitra.utilities.*,com.rythumitra.bean.*,com.rythumitra.service.*,java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Top</title>
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
<style>
@import url('https://fonts.googleapis.com/css?family=Roboto|Source+Sans+Pro|Spirax');
</style>
</head>
<body>	

<div id="dsh">
<div class="">
<nav class="navbar-default">
  <div class="container-fluid">
    <div class="navbar-header2">
      <div class="col-md-4 "><img style="padding: 5px;" src="images/logo.png"/></div> 
    </div>
 <div class="col-md-4 form4"><h3 class="for2">EMPLOYEE DASH BOARD</h3></div>
  <div class="col-md-4 form4"> <h3 class="for3"><a href="./SessionClose"> <input type="submit" class="btn btn-success" value="LOGOUT" /></a></h3>  
 <%
   String employeeid=(String)session.getAttribute("referenceid");
   String  shopid=new ShopDetails().getEmployeeShopDetails(employeeid).getSHOP_ID();
				HashMap<String,String> shm=new ShopHM().getShopName();
				HashMap<String,String> shm1=new ShopHM().getShopCity();
				HashMap<String,String> ehm=new EmployeeHM().getEmployeeName();
   %>
   <div id="for5">
   <tr><td style="font-weight: 500;"><%=ehm.get(employeeid) %>,&nbsp;&nbsp;</td>
   <td style="font-weight: 500;"><%=shm.get(shopid)%>-<%=shm1.get(shopid)%></td></tr>
   </div>
</div>
  </div>
</nav>
</div></div>

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
 --%>