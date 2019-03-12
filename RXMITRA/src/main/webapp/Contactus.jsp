<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="">

    <title>Rx Mitra |Contact Us</title>  
   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
    <link rel="stylesheet" href="style1.css">
 <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="rs-plugin/css/settings.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/carousel.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-select.css">
    <link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="style.css">
     <link rel="stylesheet" type="text/css" href="stylehome.css">

    <!-- COLORS -->
    <link rel="stylesheet" type="text/css" href="css/custom.css">
    <link rel="stylesheet" type="text/css" href="custom.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>  

    <div id="loader">
        <div class="loader-container">
            <img src="images/load.gif" alt="" class="loader-site spinner">
        </div>
    </div>
    <section style="background-color:#febf10; height:3px;"></section>
    <div id="wrapper">
         <%
					String username = (String) session.getAttribute("user");
                    String password = (String) session.getAttribute("password");         
 					if (username != null) {
				%>
          <jsp:include page="./mainMenu2.jsp"></jsp:include>
          <%}
 					else{ %>
        	  <jsp:include page="./mainMenu.jsp"></jsp:include>
        	 
          <% }%>
   <br>
   <br>
      <section class="bbg">     
      	<div class="container bd">
			<h2 style="text-align: center;font-weight: 700;padding-top: 10px; font-size:30px"><span style="color:#6ab42f;">CONTACT</span> US</h2>
            <div class="tab-content">
               
		<div id="by_loadboard" class="tab-pane fade active in">
			<div class="page-content" style="padding:0px;">
			<div class="row">
				<div class="panel panel-orange">
                    <div class="panel-body tab-pane "> 
						<div class="container">
                              <div class="panel-group" id="accordion" style="padding-right: 17px;">
                                <div class="panel panel-default">
                                  <div class="panel-heading">
                                    <h2 class="panel-title">
                                      <a data-toggle="collapse" data-parent="#accordion" href="#collapse1" style="color:#000;font-weight:bolder;">KANDUKUR ADDRESS</a>
                                    </h2>
                                  </div>
                                  <div id="collapse1" class="panel-collapse collapse in">
                                    <div class="panel-body" style="padding: 15px;text-align: justify;line-height: 30px;">
                                        <h2 style="color: #6ab42f;font-size: 1.6em;font-weight: 500;">Rythu Mitra Retail Private Limited</h2>
                OV Road,<br>
                Opposite to SBH Bank,<br>
                Kandukur -Prakasam -523105<br>
                AndhraPradesh<br>
                India<br>
             <span style="font-weight:600;">  Ph: 08598 - 222283  |  E-Mail: info@rythumitra.com</span>
                                      </div>
                                  </div>
                                </div>
                                <div class="panel panel-default">
                                  <div class="panel-heading">
                                    <h2 class="panel-title">
                                      <a data-toggle="collapse" data-parent="#accordion" href="#collapse2" style="color:#000;font-weight:bolder;">HYDERABAD ADDRESS</a>
                                    </h2>
                                  </div>
                                  <div id="collapse2" class="panel-collapse collapse">
                                    <div class="panel-body" style="padding: 15px;text-align: justify;line-height: 30px;">
                                         <h2 style="color: #6ab42f;font-size: 1.6em;font-weight: 500;">Rythu Mitra Retail Private Limited</h2>
                                         Unit - 602, Level 6,<br>
                Manjeera Majestic Commercial,<br>
                Hi-Tech City Road,KPHB,<br>
                Hyderabad - 500072<br>
                Telangana<br>
                India<br>
              <span style="font-weight:600;">  Ph: 040 - 40191909  |  E-Mail: info@rythumitra.com</span>
                                      </div>
                                  </div>
                                </div>
                               
                              </div> 
                        </div>                    
                    </div>
                </div>
		      </div>
		</div>
		
	</div>
            </div></div>      
	
        </section>      
        
        <section class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 text-left">
                        <p>copyright © 2019 Kosuri RxMitra. Designed And Maintained by<a href="#" title="">kosurisoft.com</a></p>
                    </div><!-- end col -->
                    <div class="col-md-6 text-right">
                        <ul class="list-inline">
                            <li><a href="#">Terms of Usage</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                        </ul>
                    </div>
                </div><!-- end row -->
            </div><!-- end container -->
        </section><!-- end section -->
    </div><!-- end wrapper -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>    
    <script src="js/custom.js"></script>
</body>
</html>