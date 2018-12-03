<%@ page language="java" import="com.rxmitra.dao.*,com.rxmitra.bean.*,com.rxmitra.service.*,java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="stylehome.css">
<title>Insert title here</title>
</head>
<body>
<!-- ----------------------- top nav bar----------------------------------------->
<div class="top_bar" style="background-color:#6ab42f;">

<div class="container">
<div class="col-md-2 col-xs-12">
<ul class="social">
<li><a target="_blank" href="https://www.webenlance.com/"><i class="fa fa-facebook text-white"></i></a></li>
<li><a target="_blank" href="https://webenlance.com"><i class="fa fa-twitter text-white"></i></a></li>
<li><a target="_blank" href="https://www.webenlance.com/"><i class="fa fa-linkedin text-white"></i></a></li>
<li><a target="_blank" href="http://webenlance.com"><i class="fa fa-instagram text-white"></i></a></li>
</ul>
</div>

<div class="col-md-10 col-xs-12">
<ul class="rightc">
<li><i class="fa fa-phone"></i>+ 040 - 40191909</li>
<li><i class="fa fa-envelope"></i> info@rythumitra.com</li>
 <li><i class="glyphicon glyphicon-log-in"></i><a href="AboutUs.jsp"> About Us</a></li>
 <li><i class="fa fa-map-marker"></i> <a href="Contactus.jsp"> Contact Us</a></li>
 <script scr="./js/index.js"></script>
  <script scr="./js/active.js"></script>

<%--                  String username1 = (String) session.getAttribute("user1");
                 String password1 = (String) session.getAttribute("password1");  
                 
 String userid=(String)session.getAttribute("referenceid");
		HashMap<String,String> ehm=new EmployeeHM().getUserName();
		/* userid = userid.substring(0,1).toUpperCase() + userid.substring(1).toLowerCase(); */
%>
  <% 
 String eUserid=(String)session.getAttribute("referenceidE");
		HashMap<String,String> ehm2=new EmployeeHM().getEUserName();
		/* eUserid = eUserid.substring(0,1).toUpperCase() + eUserid.substring(1).toLowerCase(); */
%> --%>
<%-- <% 
System.out.println("1");
					String username = (String) session.getAttribute("user");
                    String password = (String) session.getAttribute("password"); 
                    HashMap<String,String> ehm3=new EmployeeHM().getEndUName();
 					if (username != null) {
 						System.out.println("1234 "+username);
				%> --%>
				 <ul class="navbar-right" id="lo">
         <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">&nbsp;<i class="fa fa-user"></i>
          
          <%--  hi... <%=username%> --%>
           
           
           
           <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="./ExUserLogin"> MY ACCOUNT</a></li>
			<li><a href="./SessionClose" >LOGOUT</a></li>
          </ul>
        </li>
      </ul>
 				<%-- <%
				} else { %> --%>
<li><a href="Register.jsp" ><span class="glyphicon glyphicon-user" ></span> Registration &nbsp;</a></li>
<li><a href="LoginPage.jsp"><span class="glyphicon glyphicon-log-in"></span> &nbsp;Login</a></li> 
<%-- <%} %> --%>     
 					<%--else if (eUserid != null){
					System.out.println("12345 "+eUserid);
				%>
			   
			    <ul class="navbar-right" id="lo">
         <li class="dropdown">
          <a href="#" class="fa fa-user" class="dropdown-toggle" data-toggle="dropdown">&nbsp; hi... <%=ehm2.get(eUserid)%><span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="./ExUserLogin">MY ACCOUNT</a></li>
			<li><a href="./SessionClose">LOGOUT</a></li>
          </ul>
        </li>
      </ul>
			   
				<%
				} else if (userid != null){ 
					System.out.println("123 "+userid);
				%>
			   
			    <ul class="navbar-right" id="lo">
         <li class="dropdown">
          <a href="#" class="fa fa-user" class="dropdown-toggle" data-toggle="dropdown" style="font-size: large;">&nbsp; hi... <%=ehm.get(userid)%><span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="./ExUserLogin">MY ACCOUNT</a></li>
			<li><a href="./SessionClose">LOGOUT</a></li>
          </ul>
        </li>
      </ul>
				<%
				} 	 --%>
			
</ul>
</div>
</div>
</div>
<!-- --------------------------------------------- end top nav bar ----------------------------->
<!-- ------------------------- nav bar section ---------------------------------------->
        <header class="header">
            <div class="">
                    <div class="col-md-12" style=" background: #fff; border-bottom: 2px solid #6ab42f;">
                        <nav class="navbar yamm navbar-default">
                            <div class="container-full">
                                    <div class="col-md-2">
                                        <div class="navbar-header">
                                            <a class="navbar-brand" href="IndexPage.jsp"><img src="images/logo.png" alt="Rythumitra"></a>
                                            <div>
                                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
                                                    <span class="sr-only">Toggle navigation</span>
                                                    <span class="fa fa-bars"></span>
                                                </button>
                                            </div>
                                        </div><!-- end navbar-header -->
                                    </div>
          
            <div class="col-md-10">
    <p></p>
                                    <div class="navbar-cell stretch">
                                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
                                            <div class="">
                                                <ul class="nav navbar-nav" >
                                                    <li class="" id="home1"><a href="IndexPage.jsp">Home</a></li>
                                                    <li class="" id="seed"><a href="#">Seeds</a></li>
                                                    
                                                    <li class="dropdown has-submenu" class="" id="fertilizers">
                                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Fertilizers<span class="fa fa-angle-down"></span></a>
                                                        <ul class="dropdown-menu start-left" role="menu">                                            
                                                            <li><a href="#" class="active">Fertilizers</a></li>
                                                            <li><a href="FertilizersList.jsp">List Price</a></li>
                                                        </ul>
                                                    </li>
                                              
                                                    <li class="dropdown has-submenu" class="" id="pesticides">
                                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Pesticides<span class="fa fa-angle-down"></span></a>
                                                        <ul class="dropdown-menu start-left" role="menu">                                            
                                                            <li><a href="#" class="active">Pesticides</a></li>
                                                            <li><a href="PesticidesList.jsp">List Price</a></li>
                                                        </ul>
                                                    </li>
                                              
                                                    <li class="dropdown has-submenu" class="" id="agri">
                                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Agri Machines<span class="fa fa-angle-down"></span></a>
                                                        <ul class="dropdown-menu start-left" role="menu">                                            
                                                            <li><a href="MachinesSearch.jsp">On Rent</a></li>
                                                            <li><a href="#">On Sale</a></li>
                                                        </ul>
                                                    </li>
                                                   <!--  <li class="dropdown has-submenu">
                                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" >Land Lease<span class="fa fa-angle-down"></span></a>
                                                        <ul class="dropdown-menu start-left" role="menu">                                            
                                                            <li><a href="./AddLeaseLand.jsp">Add Land for Rent</a></li>
                                                            <li><a href="#">Update Land</a></li>
                                                            <li><a href="#">View</a></li>
                                                            <li><a href="#">Search Land for Rent</a></li>
                                                        </ul>
                                                    </li> -->
                                                   <%--  <%   if (username !=null) {%> --%>
                                                  <li class="" id="coldstorage"><a href="ColdStorageSearch2.jsp" >Cold Storage</a></li>
                                                   <%-- <%}else{%> --%>
                                                    <li class="" id="coldstorage"><a href="ColdStorageSearch.jsp" >Cold Storage</a></li>
                                                   <%--  <%} %> --%>
                                                    <li><a href="#" >Contract Farming</a></li>
                                                    <li class="" id="crop"><a href="Crop_Search.jsp" >Crop search</a></li>
                                                    <li class="" id="mandi"><a href="MandiSearch.jsp" >Mandi Price</a></li>
                                                    
                                                </ul>
                                            </div><!-- end navbar-cell -->
                                        </div><!-- /.navbar-collapse -->        
                                    </div><!-- end navbar cell -->
                                    </div>
                            </div><!-- end container fluid -->
                        </nav><!-- end navbar -->
                    </div><!-- end col -->
         
            </div><!-- end container -->
        </header>
      
       
        <!-- ------------------------- end nav bar ---------------------------------------->
</body>
</html>