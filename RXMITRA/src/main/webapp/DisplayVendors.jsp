<%@ page language="java"
	import="com.rxmitra.dao.*,com.rxmitra.bean.*,com.rxmitra.bean.*,com.rxmitra.service.*,java.util.*" contentType="text/html; charset=ISO-8859-1" isErrorPage="true" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Rythu mitra  </title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="css/style.css" rel="stylesheet" type="text/css" />

</head>
<body>
<%
  String from=null;
  try
  {
  from=request.getParameter("from");
  if(from==null)
  {
   from=request.getAttribute("from").toString();
  }
  }
  catch(Exception e)
  {
   
  }
  %>
<section style="background-color:#febf10; height:3px;"></section>
<jsp:include page="./Employee_top.jsp"/>

   <div class="page-container">
   <div class="sidebar-menu">
 <jsp:include page="./EmployeeMenu.jsp"/></div>
  <div class="rightsidebar-menu">
 </div>	
   <div class="left-content">
	   <div class="mother-grid-inner">
  
  </div>
  <div class="inner-block">
    <div class="inbox">
    <div class="profile_details">  
       
       </div>
    	 <div class="col-md-12 mailbox-content  tab-content tab-content-in">
    	 	
             
  <div class="panel panel-orange" style="padding:2px 13px;">
   <div class="">
    <%String shopid=(String)request.getParameter("shopid"); %>
   <form  action="./DisplayVendorsToInsertProducts" method="post"> 
  <table>
<tr>            
 <td>VENDOR NAME&nbsp;&nbsp;&nbsp;</td><td><input type="text" class="form-control" name="vendorname" id="vendorname" /></td>     
 <td>&nbsp;&nbsp;&nbsp;GSTIN NO.&nbsp;&nbsp;&nbsp;</td><td><input type="text" class="form-control" name="tinno" id="tinno" />
 <input type="hidden" name="from" value="<%=from%>" id="from"/>
 <input type="hidden" name="shopid" value="<%=shopid%>" id="shopid"/>
 </td>   
 </tr>
<tr><td>&nbsp;&nbsp;&nbsp;</td></tr>
 <tr>
 <td><input type="submit" class="btn btn-success" value="SEARCH" required /></td>  
  </tr>
</table>
</form>

   </div>

        
  </div> </div> </div><div class="clearfix"> </div></div>

  <div class="copyrights">
	 <p>© 2017 Kosuri Rythu Mitra. All Rights Reserved | Designed by  <a href="#" target="_blank">Kosuri Soft Labs Pvt Ltd</a> </p>
</div>	</div>
<!--COPY rights end here-->

   

 <!--slider menu-->
    
	<div class="clearfix"> </div></div>
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
            <script src="./resources/dashboard-js/js/jquery.nicescroll.js"></script>
            <script src="./resources/dashboard-js/js/scripts.js"></script>
		<!--//scrolling js-->
<script src="./resources/dashboard-js/js/bootstrap.js"> </script>

<!-- mother grid end here-->
</body>
</html>