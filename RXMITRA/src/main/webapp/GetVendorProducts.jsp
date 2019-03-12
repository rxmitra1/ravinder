<%@ page language="java"
	import="com.rxmitra.dao.*,com.rxmitra.bean.*,com.rxmitra.bean.*,com.rxmitra.service.*,java.util.*" contentType="text/html; charset=ISO-8859-1" isErrorPage="true" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>RX mitra  </title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="./css/style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
	
function selectCategory(str){
	var category=document.getElementById("category").value;
	var vendorid=document.getElementById("vendorid").value;
	var shopid=document.getElementById("shopid").value;
	var from=document.getElementById("from").value;
	location.href="ViewVendorProducts?category="+category+"&shopid="+shopid+"&from="+from+"&vendorid="+vendorid;
	
}
</script>
</head>
<body>
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
   
   <%
    int page1=0,noofrecords=0,maxrowsperpage=0;
   String vendorid,category,shopid,from;
   vendorid=(String)request.getAttribute("vendorid");
   category=(String)request.getAttribute("category");
   shopid=(String)request.getAttribute("shopid");
   from=(String)request.getAttribute("from");
    try{
    	page1=Integer.parseInt(request.getAttribute("currentPage").toString());
    	maxrowsperpage=Integer.parseInt(request.getAttribute("maxrowsperpage").toString());
    }
    catch(Exception e)
    {
    
    }
    int i=(maxrowsperpage*page1)-maxrowsperpage;
   // HashMap<String,String> hm=new VendorHM().getVendorName();
    %>
   	<b style="font-size: 17px;">VENDOR NAME : </b><font color=red><b style="font-size: 17px;"></b></font>
   	<br></br>
    <table class="table table-bordered">
   <tr><td align="center" style="font-weight: 500;" class="col-md-3" >CATEGORY</td>
    <td align="center" ><select class="form-control" name="category" id="category" onchange="selectCategory(this);" class="col-md-3" >
   <option value="">SELECT</option>
  <option value="ALL">ALL</option>
  <option value="F">FERTILISER</option>
  <option value="P">PESTICIDE</option>
  <option value="S">SEED</option>
  </select></td>
  <td class="col-md-6" colspan="2">
  <input type="hidden" name="vendorid" id="vendorid" value="<%=vendorid%>"/>
  <input type="hidden" name="shopid" id="shopid" value="<%=shopid%>"/>
  <input type="hidden" name="from" id="from" value="<%=from%>"/>
  </td>
  </tr>
  </table>
   
	<table  class="table table-bordered">
	<tr>
	 <th colspan="10" style="padding: 5px;background: #5aa320;color:#fff;text-align: center;font-size: 20px;border-bottom: 2px solid #febf10;">VENDOR PRODUCT DETAILS</th>
	</tr>
	 <% 
ArrayList<Product> al=new ArrayList<Product>();
try
{
al=(ArrayList<Product>)request.getAttribute("productsList");
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
 <tr><td align="center" style="font-weight: 500;">COMPANY NAME</td>
        <td align="center" style="font-weight: 500;">SPECIAL NAME</td>
       <!--  <td align="center" style="font-weight: 500;">TYPE</td> -->
        <td align="center" style="font-weight: 500;">WEIGHT</td>
        <td align="center" style="font-weight: 500;">ITEM MASS</td>
     </tr>
       <%
if(al.size()<=0)
{%>
<tr>
<td colspan="11" align="center">
    <font color=red>No Records Found</font></td></tr>
<%}
else{
%>
     <c:forEach var="bill" items="${productsList}">
    <tr>
    <td align="center"><c:out value="${bill.COMPANY_NAME}" ></c:out></td>
    <td align="center"><c:out value="${bill.SPECIAL_NAME}" ></c:out></td>
   <%--  <td align="center"><c:out value="${((bill.TYPE==null)?'-':bill.TYPE)}" ></c:out></td> --%>
    <td align="center"><c:out value="${bill.WEIGHT}" ></c:out></td>
    <td align="center"><c:out value="${bill.ITEM_MASS}" ></c:out></td>
    </tr>
    </c:forEach> 
    <table>
          <tr><td>Pages<b>:</b> </td>
			<c:forEach begin="1" end="${noOfPages}" var="i">
				<td><a href="./ViewVendorProducts?page=${i}&vendorid=<%=vendorid%>&category=<%=category%>&shopid=<%=shopid%>&from=<%=from%>">&nbsp;${i}&nbsp;</a></td>
			</c:forEach>
		</tr>
		 <%} %>
	</table>
	</table> 
  
  </div>

        
  </div> </div> </div><div class="clearfix"> </div></div>

  <div class="copyrights">
	 <p>Copyright © 2019 Kosuri RxMitra. All Rights Reserved | Designed by  <a href="#" target="_blank">Kosuri Soft Labs Pvt Ltd</a> </p>
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