<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isErrorPage="true" pageEncoding="ISO-8859-1"%>
<%@ page import="com.rxmitra.bean.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>RX mitra | User Home </title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="./css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<section style="background-color:#febf10; height:3px;"></section>
<jsp:include page="./Employee_top.jsp"/>

 <!-- <img style="padding-left:10px; vertical-align: middle;padding: 10px;padding-bottom: 15px;" src="images/logo.png" alt="Rythumitra">
</img> 
 <span style="color:#5aa320;font-size: larger;float:right;padding:10px;text-align: center;font-weight: 700;padding-top: 10px;position: relative;right: 40%;top: 25px;font-size: 27px;"><b>EMPLOYEE DASH BOARD</b></span>  
  <a href="./IndexPage.jsp" style="color:#5aa320;font-size: larger;float:right;padding:10px;text-align: center;font-weight: 700;padding-top: 10px;position: relative;right: -15%;top: 25px;font-size: 27px;"> <input type="submit" class="btn btn-success" value="LOGOUT" /></a> -->
   <div class="page-container">
   <div class="sidebar-menu">
   
 <jsp:include page="./EmployeeMenu.jsp"/></div>
  <div class="rightsidebar-menu">
    <jsp:include page="./right-body3.jsp"/>
 </div>	
   <div class="left-content">
	   <div class="mother-grid-inner">
            <!--header start here-->
	</div>

	</div>
<!--COPY rights end here-->

    <div class="inbox">
          <div class="clearfix"> </div>     
   </div></div>
</body>
</html>
