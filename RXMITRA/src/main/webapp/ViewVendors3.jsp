<%@ page language="java"
	import="com.rxmitra.dao.*,com.rxmitra.bean.*,com.rxmitra.bean.*,com.rxmitra.service.*,java.util.*" contentType="text/html; charset=ISO-8859-1" isErrorPage="true" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>RX mitra </title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="./css/style.css" rel="stylesheet" type="text/css" />

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
   <form  action="/RXMITRA/DisplayVendorsToInsertProducts1" method="post"> 
     <div colspan="12" style="padding: 5px;background: #5aa320;color:#fff;text-align: center;font-size: 20px;border-bottom: 2px solid #febf10;">
	                                 <tr>
	                                   <th >ADD INVOICE</th>
	                                 </tr>
	                                 </div>
	                                 <br />

									
											<div class="col-md-12" id="one">
												<div class="form-group col-md-4 col-sm-4">
													<label for="pincode">VENDOR NAME</label> <input
														type="text" class="form-control" name="vendorname" value="${vendorname }"
														id="vendorname" placeholder="Enter Your Vendor Name" />
												</div>

												

												<div class="col-md-1"></div>

												<div class="col-md-2" id="one">
													<div class="form-group">
														<label for="firstname" style="color: #fff;">EN </label>
														<button type="submit" class="btn btn-success btn-block">SEARCH</button>

													</div>
													<br />
											<br />
												</div>
											</div>
</form>
    <table class="table table-bordered">
  <tr>
	 <th colspan="10" style="padding: 5px;background: #5aa320;color:#fff;text-align: center;font-size: 20px;border-bottom: 2px solid #febf10;">VENDOR DETAILS</th>
	</tr>
<tr>

<td align="center"></td>
<td align="center" style="font-weight: 900;">VENDOR NAME</td>
<td align="center"  style="font-weight: 900;">ADDRESS</td>
<td align="center"  style="font-weight: 900;">GSTIN NO</td>
<td align="center"  style="font-weight: 900;">PAN NO</td>
<!-- <td align="center">CSTNO</td> -->
<td align="center"  style="font-weight: 900;">LICENSE NO</td>
<td align="center"  style="font-weight: 900;">MOBILE</td>
<td align="center"  style="font-weight: 900;">LAND LINE</td>
</tr>

<tr>
<td><input type="radio" name="vendorid" value="${ vendor.vendorId }"  onclick="location.href='viewVendorInvoice?vid=${ vendor.vendorId }&vendorname=${vendor.vendorName }&pageid=1'"/></td>
<td align="center"><c:out value="${ vendor.vendorName }"/></td>
<td align="center"><c:out value="${ vendor.address }"/></td>
<td align="center"><c:out value="${ vendor.tinNo }"/></td>
<td align="center"><c:out value="${ vendor.panNo }"/></td>
<%-- <td align="center"><c:out value="${ vendor.CST_NO}"/></td> --%>
<td align="center"><c:out value="${ vendor.licenseNo}"/></td>
<td align="center"><c:out value="${ vendor.phoneNo1}"/></td>
<td align="center"><c:out value="${ vendor.phoneNo2}"/></td>
</tr>
 </table>
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
            <script src="dashboard-js/js/jquery.nicescroll.js"></script>
            <script src="dashboard-js/js/scripts.js"></script>
		<!--//scrolling js-->
<script src="dashboard-js/js/bootstrap.js"> </script>

<!-- mother grid end here-->
</body>
</html>