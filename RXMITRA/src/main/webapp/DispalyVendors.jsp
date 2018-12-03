<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>RX mitra</title>
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
 <jsp:include page="./EmployeeMenu.jsp">
    <jsp:param value="<%=from%>" name="from"/>
    </jsp:include></div>
     
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
             
           <div class="for4"> 
             
           <div class="col-lg-12">
<%--   <jsp:include page="./User.jsp"></jsp:include>
 --%><% 
String shopid=(String)request.getAttribute("shopid");
int noofpages=0,page1=0,maxrowsperpage=0;

%>
<form method="get" action="./GetVendorDetails" class="form-horizontal">

<div class="col-md-12">
         <div class="col-md-6">
	          <div class="form-group">
                    <label for="email" class="col-sm-4 control-label">VENDOR NAME</label>
                    <div class="col-sm-6">
               <input class="form-control" type="text" name="vendorname" id="vendorname">
                    </div>
                </div>
	  </div>
	  
	  <div class="col-md-4">
	          <div class="form-group">
                    <label for="email" class="col-sm-4 control-label">GST NO.</label>
                    <div class="col-sm-6">
                     <input class="form-control" type="text" name="tinno" id="tinno">
                     <input type="hidden" name="from" value="<%=from%>"></input>
                     <input type="hidden" name="id" value="<%=shopid%>"></input>
                    </div>
                 </div>
	     </div>
	  
	  <div class="col-md-2">
	          
                  <button type="submit" class="btn btn-success btn-block">SEARCH</button>
                    
                </div>
	  </div>
<!-- 
<div class="col-md-12 col-sm-12 col-xsm-12">
<div class="col-md-4 col-sm-12 col-xsm-12">
Vendor Name:<input class="form-control" type="text" name="vendorname" id="vendorname"></input>
</div>
<div class="col-md-4 col-sm-12 col-xsm-12">
Tin No:<input class="form-control" type="text" name="tinno" id="tinno"></input>
</div>
<div class="col-md-4 col-sm-12 col-xsm-12">
<input type="submit" value="SEARCH"/>
</div> -->
</form>
</div>

<div class="col-lg-12" id="form7">
    <table class="table table-bordered">
  <tr>
	 <th colspan="10" style="padding: 5px;background: #5aa320;color:#fff;text-align: center;font-size: 20px;">VENDOR DETAILS</th>
	</tr>

													<tr>
														<th>VENDOR_NAME</th>
														<th>ADDRESS</th>
														<th>TIN_NO</th>
														<th>PAN_NO</th>
														<th>LICENSE_NO</th>
														<th>PHONE_NO1</th>

													</tr>

													<c:forEach items="${vendorDetails}" var="vendor">
														<tr>
															<td><c:out value="${vendor.vendorId}"></c:out></td>
															<td><c:out value="${vendor.address}"></c:out></td>
															<td><c:out value="${vendor.tinNo}"></c:out></td>
															<td><c:out value="${vendor.panNo}"></c:out></td>
															<td><c:out value="${vendor.licenseNo}"></c:out></td>
															<td><c:out value="${vendor.phoneNo1}"></c:out></td>
														</tr>
													</c:forEach>
													
													
													

	
	
</div>


</div>
</table></div>
<tr>
	Pages
	<%for(int j=1;j<=noofpages;j++) {%>
	 <a href="./GetVendorDetails?page=<%=j%>&from=E&id=<%=shopid%>">&nbsp;<%=j%>&nbsp;</a>
		<%} %>
	</tr>

</div>
             <div class="clearfix"> </div>  
        
   </div></div></div></div>

  <div class="copyrights">
	 <p>© 2017 Kosur Rythu Mitra. All Rights Reserved | Design by  <a href="#" target="_blank">Kosuri Soft Labs Pvt Ltd</a> </p>
</div>	</div>
<!--COPY rights end here-->
   
<script language="javascript">
populateCountries("country", "state");
 </script> 
 <script language="javascript">
populateCountries("country1", "state1");
 </script>
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
