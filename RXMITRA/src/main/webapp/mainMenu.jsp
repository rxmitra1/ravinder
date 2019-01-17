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

 <script scr="./js/index.js"></script>
  <script scr="./js/active.js"></script>

       
				 <ul class="navbar-right" id="lo">
         <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">&nbsp;<i class="fa fa-user"></i> <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="./ExUserLogin"> MY ACCOUNT</a></li>
			<li><a href="./SessionClose" >LOGOUT</a></li>
          </ul>
        </li>
      </ul>
 				<%-- <%
				} else { %> --%>
<li><a href="./register" ><span class="glyphicon glyphicon-user" ></span> Registration &nbsp;</a></li>
<li><a href="./login"><span class="glyphicon glyphicon-log-in"></span> &nbsp;Login</a></li> 

			
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
                                            <a class="navbar-brand" href="IndexPage.jsp"><img src="images/rxmitralogo.png" alt="Rythumitra"></a>
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