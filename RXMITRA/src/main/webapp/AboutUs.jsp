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

    <title>About Us</title>  
   
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
			<h2 style="text-align: center;font-weight: 700;padding-top: 10px; font-size:30px"><span style="color:#6ab42f;">ABOUT</span> US</h2>
            <div class="tab-content">
               
		<div id="by_loadboard" class="tab-pane fade active in">
			<div class="page-content" style="padding:0px;">
			<div class="row">
				<div class="panel panel-orange">
                    <div class="panel-body tab-pane"> 
						<div class="container">
                              <div class="panel-group" id="accordion" style="padding-right: 17px;">
                                <div class="panel panel-default">
                                  <div class="panel-heading">
                                    <h2 class="panel-title">
                                      <a data-toggle="collapse" data-parent="#accordion" href="#collapse1" style="color:#000;font-weight:bolder;">ABOUT RYTHU MITRA</a>
                                    </h2>
                                  </div>
                                  <div id="collapse1" class="panel-collapse collapse in">
                                    <div class="panel-body" style="padding: 15px;text-align: justify;line-height: 30px;">
                                       <h2>About </h2>
                                       <p align="justify">Rythumitra Retail is a team of software coders working with agri experts to help agricultural community in different areas from agri inputs, irrigation equipment and cold storage information and etc.Farmers can  display their crops on this portal and Our team will provide leads to sell their crops with good price.</p>
                                      </div>
                                  </div>
                                </div>
                                <div class="panel panel-default">
                                  <div class="panel-heading">
                                    <h2 class="panel-title">
                                      <a data-toggle="collapse" data-parent="#accordion" href="#collapse2" style="color:#000;font-weight:bolder;">WHAT WE DO</a>
                                    </h2>
                                  </div>
                                  <div id="collapse2" class="panel-collapse collapse">
                                    <div class="panel-body" style="padding: 15px;text-align: justify;line-height: 30px;">
                                         <h2>We Do </h2>
                                       <p align="justify">RythuMitra partnering with Shops who are in agricultural business and doing service to agricultural community. As our partner you can  display your proudcts on this portal and our team of experts will help farmers to sell their crops.</p>
                                      </div>
                                  </div>
                                </div>
                                <div class="panel panel-default">
                                  <div class="panel-heading">
                                    <h2 class="panel-title">
                                      <a data-toggle="collapse" data-parent="#accordion" href="#collapse3" style="color:#000;font-weight:bolder;">WHAT WE OFFERS</a>
                                    </h2>
                                  </div>
                                  <div id="collapse3" class="panel-collapse collapse">
                                    <div class="panel-body" style="padding: 15px;text-align: justify;line-height: 30px;">
                                       <h2>Offers </h2>
                                        Coming Soon...
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
                        <p>© 2017 Designed And Maintained by<a href="#" title="">kosurisoft.com</a></p>
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