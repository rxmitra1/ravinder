<%@ page language="java"  import="com.rxmitra.dao.*,com.rxmitra.utils.*,com.rxmitra.bean.*,com.rxmitra.service.*,java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="">

    <title>Login</title>  
   
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

    <!-- COLORS -->
    <link rel="stylesheet" type="text/css" href="css/custom.css">
    <link rel="stylesheet" type="text/css" href="custom.css">

   
<script language="javascript">
function validate()
{
	if(document.getElementById("username").value=="")
		{
		alert("Please enter USERNAME/EMAIL");
		document.getElementById("username").focus();
		return false;
		}
	if(document.getElementById("password").value=="")
	{
	alert("Please enter PASSWORD");
	document.getElementById("password").focus();
	return false;
	}
	return true;
	}

</script>
</head>
<body>  
    <div id="loader">
        <div class="loader-container">
            <img src="images/load.gif" alt="" class="loader-site spinner">
        </div>
    </div>
<section style="background-color:#febf10; height:3px;"></section>
    <div id="wrapper">
         <jsp:include page="./mainMenu.jsp"></jsp:include>

     <section class="bbg"> 
<br></br>

      	<div class="container">
      	<br>
			<br>
			<div class="col-lg-12">
			   <div class="col-md-3"></div>
			   <div class="col-md-6" style=" text-align: center;">
		
			<%
String message="";
try
{
	message=request.getAttribute("message").toString();
	if(message==null)
	{}else
	{out.println("<font style='color: red;font-weight: 600;font-size: medium;'>"+message+"</font>");}
}catch(Exception e){}
%>
<%
String message1="";
try
{
	message1=request.getAttribute("message1").toString();
	if(message1==null)
	{}else
	{out.println("<font style='color: red;font-weight: 600;font-size: medium;'>"+message1+"</font>");}
}catch(Exception e){}
%>
<%
String message2="";
try
{
	message2=request.getAttribute("message2").toString();
	if(message2==null)
	{}else
	{out.println("<font style='color: green;font-weight: 600;font-size: medium;'>"+message2+"</font>");}
}catch(Exception e){}
%>
</div>
			   <div class="col-md-3"></div>
			</div>
			 <br>
			 <br>
	           <div class="row main">
				<div class="main-login main-center">
				<h2 style="font-weight: bolder;color: #171717;text-align: center;">FORGOT PASSWORD</h2>
					<form class="" method="post" action="FgPwd" onsubmit="return validate()">
						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Email Id</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input class="color"  type="email" required class="form-control" name="username" id="username"  placeholder="Enter your Emailid"/>
								</div>
							</div>
						</div>
<br>
						<div class="form-group ">
							<input  type="submit"  id="login" value="SUBMIT" style=" text-align: -webkit-center; padding:10px 0px; border: 1px solid #5aa320;" class="btn btn-primary btn-lg btn-block login-button"/>
						</div>
<br>
	
					</form>
				</div>
			</div>
		</div>
		<br></br><br></br>
			<br></br><br></br>
				<br></br><br></br>
					<br></br><br></br>
					
         </section>      
        
        
        <section class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 text-left">
                        <p>© 2017 Designed And Maintained by <a href="#" title="">kosurisoft.com</a></p>
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