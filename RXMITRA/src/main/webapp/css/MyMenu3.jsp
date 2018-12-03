<%-- <%@ page language="java" import="com.rythumitra.dao.*,com.rythumitra.utilities.*,com.rythumitra.bean.*,com.rythumitra.service.*,java.util.*" contentType="text/html; charset=ISO-8859-1"
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
<div class="col-md-5">
<ul class="social">
<li><a target="_blank" href="https://www.webenlance.com/"><i class="fa fa-facebook text-white"></i></a></li>
<li><a target="_blank" href="https://webenlance.com"><i class="fa fa-twitter text-white"></i></a></li>
<li><a target="_blank" href="https://www.webenlance.com/"><i class="fa fa-linkedin text-white"></i></a></li>
<li><a target="_blank" href="http://webenlance.com"><i class="fa fa-instagram text-white"></i></a></li>
</ul></div>

<div class="col-md-7">
<ul class="rightc">
<li><i class="fa fa-phone"></i>+ 040 - 40191909 </li>
<li><i class="fa fa-envelope"></i> info@rythumitra.com  </li>
<% 
                 String username1 = (String) session.getAttribute("user1");
                 String password1 = (String) session.getAttribute("password1");  
                 
 String userid=(String)session.getAttribute("referenceid");
		//HashMap<String,String> ehm=new EmployeeHM().getUserName();
		/* userid = userid.substring(0,1).toUpperCase() + userid.substring(1).toLowerCase(); */
%>
  <% 
 String eUserid=(String)session.getAttribute("referenceidE");
		//HashMap<String,String> ehm2=new EmployeeHM().getEUserName();
		/* eUserid = eUserid.substring(0,1).toUpperCase() + eUserid.substring(1).toLowerCase(); */
%>
                            <%
					String username = (String) session.getAttribute("user");
                    String password = (String) session.getAttribute("password"); 
                  // HashMap<String,String> ehm3=new EmployeeHM().getEndUName();
 					if (username != null) {
				%>
				 <ul class="nav navbar-nav navbar-right">
         <li class="dropdown">
          <a href="#" class="fa fa-user" class="dropdown-toggle" data-toggle="dropdown" style="font-size: large;padding: 9px 17px 0px 25px;">&nbsp; hi... <%=username%><b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="./ExUserLogin">MY ACCOUNT</a></li>
			<li><a href="./SessionClose">LOGOUT</a></li>
          </ul>
        </li>
      </ul>
				
				<%
				} else if (eUserid != null){ %>
			   
			    <ul class="nav navbar-nav navbar-right">
         <li class="dropdown">
          <a href="#" class="fa fa-user" class="dropdown-toggle" data-toggle="dropdown" style="font-size: large;padding: 9px 17px 0px 25px;">&nbsp; hi...
<%=ehm2.get(eUserid)%>
<b class="caret"></b></a>  
          <ul class="dropdown-menu">
            <li><a href="./ExUserLogin">MY ACCOUNT</a></li>
			<li><a href="./SessionClose">LOGOUT</a></li>
          </ul>
        </li>
      </ul>
			   
				<%
				} else if (userid != null){ 
				
				%>
			   
			    <ul class="nav navbar-nav navbar-right">
         <li class="dropdown">
          <a href="#" class="fa fa-user" class="dropdown-toggle" data-toggle="dropdown" style="font-size: large;padding: 9px 17px 0px 25px;">&nbsp; hi... <%=ehm.get(userid)%><b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="./ExUserLogin">MY ACCOUNT</a></li>
			<li><a href="./SessionClose">LOGOUT</a></li>
          </ul>
        </li>
      </ul>
				<%
				} else { %>
<li><a href="Register.jsp" ><span class="glyphicon glyphicon-user" ></span> Registration</a></li>
<li><a href="LoginPage.jsp"><span class="glyphicon glyphicon-log-in"></span>&nbsp;Login</a></li> 
<%} %>     
</ul>
</div>
</div>
</div>
<!-- --------------------------------------------- end top nav bar ----------------------------->
<!-- ------------------------- nav bar section ---------------------------------------->
        <header class="header">
            <div class="">
                    <div class="col-md-12">
                        <nav class="navbar yamm navbar-default">
                            <div class="container-full">
                                <div class="navbar-table">
                                    <div class="navbar-cell">
                                    <div class="col-md-2 col-sm-10 col-xs-10">
                                        <div class="navbar-header">
                                            <a class="navbar-brand" href="#"><img src="images/logo.png" alt="Rythumitra"></a>
                                            <div>
                                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
                                                    <span class="sr-only">Toggle navigation</span>
                                                    <span class="fa fa-bars"></span>
                                                </button>
                                            </div>
                                        </div><!-- end navbar-header -->
                                    </div>
          </div><!-- end navbar-cell -->
            <div class="col-md-10 col-sm-2 col-xs-2">
                                    <div class="navbar-cell stretch">
                                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
                                            <div class="navbar-cell">
                                                <ul class="nav navbar-nav navbar-right" >
                                                    <li><a href="IndexPage.jsp" class="active">Home</a></li>
                                                    <li><a href="AboutUs.jsp">About Us</a></li>
                                                    <li><a href="Contactus.jsp">Contact Us</a></li>
                                                    <li><a href="Seeds.jsp" >Seeds</a></li>
                                                    <li class="dropdown has-submenu">
                                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Fertilizers<span class="fa fa-angle-down"></span></a>
                                                        <ul class="dropdown-menu start-left" role="menu">                                            
                                                            <li><a href="Fertilizers.jsp">Fertilizers</a></li>
                                                            <li><a href="FertilizersList.jsp">List Price</a></li>
                                                        </ul>
                                                    </li>
                                               
                                                    <li class="dropdown has-submenu">
                                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Pesticides<span class="fa fa-angle-down"></span></a>
                                                        <ul class="dropdown-menu start-left" role="menu">                                            
                                                            <li><a href="Pesticides.jsp" class="active">Pesticides</a></li>
                                                            <li><a href="PesticidesList.jsp">List Price</a></li>
                                                        </ul>
                                                    </li>
                                              
                                                    <li class="dropdown has-submenu">
                                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Agri Machines<span class="fa fa-angle-down"></span></a>
                                                        <ul class="dropdown-menu start-left" role="menu">                                            
                                                            <li><a href="MachinesSearch.jsp">On Rent</a></li>
                                                            <li><a href="MachineOnSales.jsp">On Sale</a></li>
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
                                                    <%   if (username1 != null || username !=null) {%>
                                                  <li><a href="ColdStorageSearch2.jsp" >Cold Storage</a></li>
                                                   <%}else{%>
                                                    <li><a href="ColdStorageSearch.jsp" >Cold Storage</a></li>
                                                    <%} %>
                                                    <li><a href="#" >Contract Farming</a></li>
                                                    <li><a href="Crop_Search.jsp" >Crop search</a></li>
                                                    <li><a href="MandiSearch.jsp" >Mandi Price</a></li>
                                                    
                                                </ul>
                                            </div><!-- end navbar-cell -->
                                        </div><!-- /.navbar-collapse -->        
                                    </div><!-- end navbar cell -->
                                    </div>
                                </div><!-- end navbar-table -->
                            </div><!-- end container fluid -->
                        </nav><!-- end navbar -->
                    </div><!-- end col -->
         
            </div><!-- end container -->
        </header>
        <!-- ------------------------- end nav bar ---------------------------------------->
</body>
</html> --%>