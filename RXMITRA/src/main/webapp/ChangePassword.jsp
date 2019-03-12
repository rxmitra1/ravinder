<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isErrorPage="true" pageEncoding="ISO-8859-1"%>
<%@ page import="com.rxmitra.dao.*,com.rxmitra.bean.*,java.util.*" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>RX mitra </title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="./css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function validateForm() {
	var oldpassword = document.getElementById("oldpswd").value;
    var password = document.getElementById("newpswd").value;
    var confirmPassword = document.getElementById("conformpswd").value;
    if (password != confirmPassword) {
        alert("NewPassword & ConformPassword doesn't not match...Please TryAgain");
        return false;
    }
    if(oldpassword==password){
    	alert("OldPassword & NewPassword have matched");
    	return false;
    }
    return true;
}
</script>
<style>
label {
    display: inline-block;
    max-width: 100%;
    margin-bottom: 5px;
    font-weight: normal !important;
    font-size: 15px;
    color: #6f6666;
}
.re{
background: #5aa320;
    color: #fff !important;
    border: 1px solid #5aa320;
    border-radius: 4px;
    text-align: center;
    font-size: 21px !important;

}
#re1{align-content: padding: 19px 29px;
    margin: 12px 15px 14px 10px;
    }
</style>
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
       
       <div align="center">
      <font style='color: red; font-weight: 600; font-size: medium;'>${oldPasswordWrong}</font>
       <font style='color: red; font-weight: 600; font-size: medium;'>${samePasswordWrong}</font>
       <font style='color: blue; font-weight: 600; font-size: medium;'>${changedPassword}</font>
       </div>
       
       
       
       
    	 <div class="col-md-12 mailbox-content  tab-content tab-content-in" id="re1">
    	 	
             
             <div class=""> 
   <form method="post"  onsubmit="return validateForm()" action="./changePassword">
    <jsp:include page="./User.jsp"></jsp:include>
    
    
    <p class="re">CHANGE PASSWORD</p>	
             <div class="col-md-12">
							<form action="./updateUserProfile"
								onsubmit="return validateForm()" method="post">
	    			
				
            <div class="row">						
            <div class="form-group col-md-3 col-sm-3">
            <label for="name">Enter Old password</label>
            <input type="password"class="form-control input-sm" class="form-control" required name="oldpswd" id="oldpswd"/>
            </div>
            
            <div class="form-group col-md-3 col-sm-3">
            <label for="name">Enter New password </label>
            <input type="password" class="form-control input-sm" class="form-control" required name="newpswd" id="newpswd"/>
            </div>
            
             <div class="form-group col-md-3 col-sm-3">
            <label for="name">Enter Confirm password </label>
            <input type="password" class="form-control input-sm" required name="conformpswd" id="conformpswd" />
            </div>
            
             <div class="form-group col-md-3 col-sm-3">
            <label for="name" style="color:#fff;">Entejyujkykjuyki </label>
            <input type="submit" class="btn btn-success" name="submit" value="SUBMIT" style="width:80%"/>
            </div>
            
            </div>
            	</form>
							</div>
    
          
</div>
            </div>
             <div class="clearfix"> </div>  
        
   </div>
            </div>

  <div class="copyrights">
	 <p>copyright © 2019 Kosuri RxMitra. All Rights Reserved | Design by  <a href="#" target="_blank">Kosuri Soft Labs Pvt Ltd</a> </p>
</div>	</div>
<!--COPY rights end here-->

 <!--slider menu-->
    
	<div class="clearfix"> </div>
</div>
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